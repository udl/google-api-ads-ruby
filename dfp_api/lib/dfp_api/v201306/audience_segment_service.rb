# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.3 on 2013-06-25 15:49:21.

require 'ads_common/savon_service'
require 'dfp_api/v201306/audience_segment_service_registry'

module DfpApi; module V201306; module AudienceSegmentService
  class AudienceSegmentService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201306'
      super(config, endpoint, namespace, :v201306)
    end

    def get_audience_segments_by_statement(*args, &block)
      return execute_action('get_audience_segments_by_statement', args, &block)
    end

    private

    def get_service_registry()
      return AudienceSegmentServiceRegistry
    end

    def get_module()
      return DfpApi::V201306::AudienceSegmentService
    end
  end
end; end; end
