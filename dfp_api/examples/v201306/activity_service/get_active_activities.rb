#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.davidtorres@gmail.com (David Torres)
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
#
# License:: Licensed under the Apache License, Version 2.0 (the "License");
#           you may not use this file except in compliance with the License.
#           You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#           Unless required by applicable law or agreed to in writing, software
#           distributed under the License is distributed on an "AS IS" BASIS,
#           WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#           implied.
#           See the License for the specific language governing permissions and
#           limitations under the License.
#
# This example gets all active activities. To create activities,
# run create_activities.rb.
#
# Tags: ActivityService.getActivitiesByStatement

require 'dfp_api'

API_VERSION = :v201306
PAGE_SIZE = 500

def get_active_activities()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the ActivityService.
  activity_service = dfp.service(:ActivityService, API_VERSION)

  # Set the ID of the activity group these activities are associated with.
  activity_group_id = 'INSERT_ACTIVITY_GROUP_ID_HERE'

  # Define initial values.
  offset = 0
  page = {}

  begin
    # Create statement for one page with current offset.
    statement = {
       :query => ('WHERE activityGroupId = :activityGroupId AND ' +
           'status = :status ORDER BY id LIMIT %d OFFSET %d') %
               [PAGE_SIZE, offset],
       :values => [
           {:key => 'status',
            :value => {:value => 'ACTIVE', :xsi_type => 'TextValue'}},
           {:key => 'activityGroupId',
            :value => {:value => activity_group_id, :xsi_type => 'NumberValue'}}
       ]
    }

    # Get activities by statement.
    page = activity_service.get_activities_by_statement(statement)

    if page[:results]
      # Increase query offset by page size.
      offset += PAGE_SIZE

      # Get the start index for printout.
      start_index = page[:start_index]

      # Print details about each content object in results page.
      page[:results].each_with_index do |activity, index|
        puts "%d) Activity with ID: %d, name: %s, type: %s." %
            [index + start_index, activity[:id], activity[:name],
                activity[:type]]
      end
    end
  end while offset < page[:total_result_set_size]

  # Print a footer
  if page.include?(:total_result_set_size)
    puts "Total number of results: %d" % page[:total_result_set_size]
  end
end

if __FILE__ == $0
  begin
    get_active_activities()

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue DfpApi::Errors::ApiException => e
    puts "Message: %s" % e.message
    puts 'Errors:'
    e.errors.each_with_index do |error, index|
      puts "\tError [%d]:" % (index + 1)
      error.each do |field, value|
        puts "\t\t%s: %s" % [field, value]
      end
    end
  end
end
