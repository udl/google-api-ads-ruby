#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.1 on 2011-09-21 11:58:03.

require 'ads_common/savon_service'
require 'adwords_api/v201101/data_service_registry'

module AdwordsApi; module V201101; module DataService
  class DataService < AdsCommon::SavonService
    def initialize(api, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v201101'
      super(api, endpoint, namespace, :v201101)
    end

    def get_ad_group_bid_landscape(*args)
      return execute_action('get_ad_group_bid_landscape', args)
    end

    def get_criterion_bid_landscape(*args)
      return execute_action('get_criterion_bid_landscape', args)
    end

    private

    def get_service_registry()
      return DataServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201101::DataService
    end
  end
end; end; end