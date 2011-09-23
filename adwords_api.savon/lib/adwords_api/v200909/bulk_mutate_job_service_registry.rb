#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.1 on 2011-09-21 11:59:29.

require 'adwords_api/errors'

module AdwordsApi; module V200909; module BulkMutateJobService
  class BulkMutateJobServiceRegistry
    BULKMUTATEJOBSERVICE_METHODS = {:mutate=>{:output=>{:fields=>[{:type=>"BulkMutateJob", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"mutate_response"}, :input=>[{:type=>"JobOperation", :min_occurs=>0, :max_occurs=>1, :name=>:operation}]}, :get=>{:output=>{:fields=>[{:type=>"BulkMutateJob", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"get_response"}, :input=>[{:type=>"BulkMutateJobSelector", :min_occurs=>0, :max_occurs=>1, :name=>:selector}]}}
    BULKMUTATEJOBSERVICE_TYPES = {:NetworkTarget=>{:fields=>[{:type=>"NetworkCoverageType", :min_occurs=>0, :max_occurs=>1, :name=>:network_coverage_type}], :base=>"Target"}, :Keyword=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:text}, {:type=>"KeywordMatchType", :min_occurs=>0, :max_occurs=>1, :name=>:match_type}], :base=>"Criterion"}, :Dimensions=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:width}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:height}]}, :BulkMutateJobSelector=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:job_ids}, {:type=>"BasicJobStatus", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:job_statuses}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:result_part_index}], :base=>"JobSelector"}, :LocationOverrideInfo=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:radius}, {:type=>"LocationOverrideInfo.RadiusUnits", :min_occurs=>0, :max_occurs=>1, :name=>:radius_units}]}, :NetworkTargetList=>{:fields=>[{:type=>"NetworkTarget", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:targets}], :base=>"TargetList"}, :NegativeAdGroupCriterion=>{:fields=>[], :base=>"AdGroupCriterion"}, :CountryTarget=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:country_code}], :base=>"GeoTarget"}, :AdGroupAd=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:ad_group_id}, {:type=>"Ad", :min_occurs=>0, :max_occurs=>1, :name=>:ad}, {:type=>"AdGroupAd.Status", :min_occurs=>0, :max_occurs=>1, :name=>:status}, {:type=>"AdStats", :min_occurs=>0, :max_occurs=>1, :name=>:stats}]}, :ManualCPCAdGroupBids=>{:fields=>[{:type=>"Bid", :min_occurs=>0, :max_occurs=>1, :name=>:keyword_max_cpc}, {:type=>"Bid", :min_occurs=>0, :max_occurs=>1, :name=>:keyword_content_max_cpc}, {:type=>"Bid", :min_occurs=>0, :max_occurs=>1, :name=>:site_max_cpc}], :base=>"AdGroupBids"}, :Media_Size_StringMapEntry=>{:fields=>[{:type=>"Media.Size", :min_occurs=>0, :max_occurs=>1, :name=>:key}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}]}, :BulkMutateResult=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:part_index}, {:type=>"OperationStreamResult", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:operation_stream_results}]}, :ConversionOptimizerBiddingTransition=>{:fields=>[{:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:use_saved_bids}], :base=>"BiddingTransition"}, :PolicyViolationKey=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:policy_name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:violating_text}]}, :GeoTarget=>{:fields=>[{:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:excluded}], :base=>"Target", :abstract=>true}, :NegativeCampaignCriterion=>{:fields=>[], :base=>"CampaignCriterion"}, :OperationAccessDenied=>{:fields=>[{:type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1, :name=>:reason}], :base=>"ApiError"}, :TempAdUnionId=>{:fields=>[], :base=>"AdUnionId"}, :CampaignCriterionOperation=>{:fields=>[{:type=>"CampaignCriterion", :min_occurs=>0, :max_occurs=>1, :name=>:operand}], :base=>"Operation"}, :OperationStream=>{:fields=>[{:type=>"EntityId", :min_occurs=>0, :max_occurs=>1, :name=>:scoping_entity_id}, {:type=>"Operation", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:operations}]}, :Video=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:duration_millis}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:streaming_url}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:ready_to_play_on_the_web}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:industry_standard_commercial_identifier}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:advertising_id}], :base=>"Media"}, :DemographicTargetList=>{:fields=>[{:type=>"DemographicTarget", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:targets}], :base=>"TargetList"}, :SoapHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:application_token}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:auth_token}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:client_customer_id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:client_email}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:developer_token}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:user_agent}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:validate_only}]}, :PlatformTargetList=>{:fields=>[{:type=>"PlatformTarget", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:targets}], :base=>"TargetList"}, :PlatformTarget=>{:fields=>[{:type=>"PlatformType", :min_occurs=>0, :max_occurs=>1, :name=>:platform_type}], :base=>"Target"}, :GeoTargetList=>{:fields=>[{:type=>"GeoTarget", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:targets}], :base=>"TargetList"}, :Address=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:street_address}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:street_address2}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:city_name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:province_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:province_name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:postal_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:country_code}]}, :BudgetOptimizerAdGroupCriterionBids=>{:fields=>[{:type=>"Bid", :min_occurs=>0, :max_occurs=>1, :name=>:proxy_bid}], :base=>"AdGroupCriterionBids"}, :UnprocessedResult=>{:fields=>[], :base=>"OperationResult"}, :ProximityTarget=>{:fields=>[{:type=>"GeoPoint", :min_occurs=>0, :max_occurs=>1, :name=>:geo_point}, {:type=>"ProximityTarget.DistanceUnits", :min_occurs=>0, :max_occurs=>1, :name=>:radius_distance_units}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:radius_in_units}, {:type=>"Address", :min_occurs=>0, :max_occurs=>1, :name=>:address}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:allow_service_of_address}], :base=>"GeoTarget"}, :AdExtensionOverrideStats=>{:fields=>[], :base=>"Stats"}, :BatchFailureResult=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:operation_index_in_batch}], :base=>"OperationResult"}, :TemplateElementField=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"TemplateElementField.Type", :min_occurs=>0, :max_occurs=>1, :name=>:type}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:field_text}, {:type=>"Media", :min_occurs=>0, :max_occurs=>1, :name=>:field_media}]}, :JobEvent=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:date_time}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:job_event_type}]}, :DoubleValue=>{:fields=>[{:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:number}], :base=>"NumberValue"}, :LocalBusinessAd=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:full_business_name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:phone_number}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:street_address}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:city}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:region}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:region_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:postal_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:country_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:business_name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:description1}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:description2}, {:type=>"ProximityTarget", :min_occurs=>0, :max_occurs=>1, :name=>:target}, {:type=>"Image", :min_occurs=>0, :max_occurs=>1, :name=>:business_image}, {:type=>"Image", :min_occurs=>0, :max_occurs=>1, :name=>:icon}], :base=>"Ad"}, :EntityCountLimitExceeded=>{:fields=>[{:type=>"EntityCountLimitExceeded.Reason", :min_occurs=>0, :max_occurs=>1, :name=>:reason}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:enclosing_id}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:limit}], :base=>"ApiError"}, :BiddingStrategy=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:bidding_strategy_type}], :abstract=>true}, :Criterion=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:criterion_type}]}, :Audio=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:duration_millis}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:streaming_url}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:ready_to_play_on_the_web}], :base=>"Media"}, :BulkMutateJobEvent=>{:fields=>[{:type=>"BasicJobStatus", :min_occurs=>0, :max_occurs=>1, :name=>:status}], :base=>"JobEvent"}, :TemplateAd=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:template_id}, {:type=>"AdUnionId", :min_occurs=>0, :max_occurs=>1, :name=>:ad_union_id}, {:type=>"TemplateElement", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:template_elements}, {:type=>"Dimensions", :min_occurs=>0, :max_occurs=>1, :name=>:dimensions}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:duration}], :base=>"Ad"}, :CampaignOperation=>{:fields=>[{:type=>"BiddingTransition", :min_occurs=>0, :max_occurs=>1, :name=>:bidding_transition}, {:type=>"Campaign", :min_occurs=>0, :max_occurs=>1, :name=>:operand}], :base=>"Operation"}, :AgeTarget=>{:fields=>[{:type=>"AgeTarget.Age", :min_occurs=>0, :max_occurs=>1, :name=>:age}], :base=>"DemographicTarget"}, :JobStats=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:progress_percent}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:pending_time_millis}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:processing_time_millis}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:job_stats_type}]}, :LocationExtension=>{:fields=>[{:type=>"Address", :min_occurs=>0, :max_occurs=>1, :name=>:address}, {:type=>"GeoPoint", :min_occurs=>0, :max_occurs=>1, :name=>:geo_point}, {:type=>"base64Binary", :min_occurs=>0, :max_occurs=>1, :name=>:encoded_location}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:company_name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:phone_number}, {:type=>"LocationExtension.Source", :min_occurs=>0, :max_occurs=>1, :name=>:source}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:icon_media_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:image_media_id}], :base=>"AdExtension"}, :AdExtension=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:ad_extension_type}]}, :BulkMutateJobStats=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:num_operations}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:num_failed_operations}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:num_unprocessed_operations}], :base=>"JobStats"}, :AdGroupCriterion=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:ad_group_id}, {:type=>"Criterion", :min_occurs=>0, :max_occurs=>1, :name=>:criterion}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:ad_group_criterion_type}]}, :BudgetOptimizerAdGroupBids=>{:fields=>[{:type=>"Bid", :min_occurs=>0, :max_occurs=>1, :name=>:proxy_keyword_max_cpc}, {:type=>"Bid", :min_occurs=>0, :max_occurs=>1, :name=>:proxy_site_max_cpc}], :base=>"AdGroupBids"}, :Placement=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:url}], :base=>"Criterion"}, :Image=>{:fields=>[{:type=>"base64Binary", :min_occurs=>0, :max_occurs=>1, :name=>:data}], :base=>"Media"}, :AdGroupAdOperation=>{:fields=>[{:type=>"AdGroupAd", :min_occurs=>0, :max_occurs=>1, :name=>:operand}, {:type=>"ExemptionRequest", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:exemption_requests}], :base=>"Operation"}, :LostResult=>{:fields=>[], :base=>"OperationResult"}, :Money=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:micro_amount}], :base=>"ComparableValue"}, :DemographicTarget=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:bid_modifier}], :base=>"Target", :abstract=>true}, :AdGroupCriterionLimitExceeded=>{:fields=>[{:type=>"AdGroupCriterionLimitExceeded.CriteriaLimitType", :min_occurs=>0, :max_occurs=>1, :name=>:limit_type}], :base=>"EntityCountLimitExceeded"}, :MobileAd=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:headline}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:description}, {:type=>"MarkupLanguageType", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:markup_languages}, {:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:mobile_carriers}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:business_name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:country_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:phone_number}], :base=>"Ad"}, :CampaignCriterion=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:campaign_id}, {:type=>"Criterion", :min_occurs=>0, :max_occurs=>1, :name=>:criterion}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:campaign_criterion_type}]}, :PositionPreferenceAdGroupCriterionBids=>{:fields=>[{:type=>"Bid", :min_occurs=>0, :max_occurs=>1, :name=>:proxy_max_cpc}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:preferred_position}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:bottom_position}]}, :LanguageTarget=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:language_code}], :base=>"Target"}, :Operand=>{:fields=>[]}, :TextAd=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:headline}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:description1}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:description2}], :base=>"Ad"}, :AdGroupBids=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:ad_group_bids_type}], :abstract=>true}, :Operation=>{:fields=>[{:type=>"Operator", :min_occurs=>0, :max_occurs=>1, :name=>:operator}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:operation_type}], :abstract=>true}, :CampaignTargetOperation=>{:fields=>[{:type=>"TargetList", :min_occurs=>0, :max_occurs=>1, :name=>:operand}], :base=>"Operation"}, :ManualCPC=>{:fields=>[], :base=>"BiddingStrategy"}, :OperationStreamResult=>{:fields=>[{:type=>"OperationResult", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:operation_results}]}, :EntityId=>{:fields=>[{:type=>"EntityId.Type", :min_occurs=>0, :max_occurs=>1, :name=>:type}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:value}]}, :BiddableAdGroupCriterion=>{:fields=>[{:type=>"UserStatus", :min_occurs=>0, :max_occurs=>1, :name=>:user_status}, {:type=>"SystemServingStatus", :min_occurs=>0, :max_occurs=>1, :name=>:system_serving_status}, {:type=>"ApprovalStatus", :min_occurs=>0, :max_occurs=>1, :name=>:approval_status}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:destination_url}, {:type=>"AdGroupCriterionBids", :min_occurs=>0, :max_occurs=>1, :name=>:bids}, {:type=>"Bid", :min_occurs=>0, :max_occurs=>1, :name=>:first_page_cpc}, {:type=>"QualityInfo", :min_occurs=>0, :max_occurs=>1, :name=>:quality_info}, {:type=>"Stats", :min_occurs=>0, :max_occurs=>1, :name=>:stats}], :base=>"AdGroupCriterion"}, :AdGroup=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:campaign_id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:campaign_name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"AdGroup.Status", :min_occurs=>0, :max_occurs=>1, :name=>:status}, {:type=>"AdGroupBids", :min_occurs=>0, :max_occurs=>1, :name=>:bids}, {:type=>"Stats", :min_occurs=>0, :max_occurs=>1, :name=>:stats}]}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:request_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:operations}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:response_time}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:units}]}, :ReturnValueResult=>{:fields=>[{:type=>"Operand", :min_occurs=>0, :max_occurs=>1, :name=>:return_value}], :base=>"OperationResult"}, :PolygonTarget=>{:fields=>[{:type=>"GeoPoint", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:vertices}], :base=>"GeoTarget"}, :AdScheduleTargetList=>{:fields=>[{:type=>"AdScheduleTarget", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:targets}], :base=>"TargetList"}, :"PolicyViolationError.Part"=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:index}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:length}]}, :Budget=>{:fields=>[{:type=>"Budget.BudgetPeriod", :min_occurs=>0, :max_occurs=>1, :name=>:period}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:amount}, {:type=>"Budget.BudgetDeliveryMethod", :min_occurs=>0, :max_occurs=>1, :name=>:delivery_method}]}, :Media=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:media_id}, {:type=>"Media.MediaType", :min_occurs=>0, :max_occurs=>1, :name=>:media_type_db}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:reference_id}, {:type=>"Media_Size_DimensionsMapEntry", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:dimensions}, {:type=>"Media_Size_StringMapEntry", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:urls}, {:type=>"Media.MimeType", :min_occurs=>0, :max_occurs=>1, :name=>:mime_type}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:source_url}, {:type=>"Media.MediaSubType", :min_occurs=>0, :max_occurs=>1, :name=>:media_sub_type}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:file_size}, {:type=>"Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:extended_capabilities}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:creation_time}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:media_type}]}, :Job=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:customer_job_key}, {:type=>"JobContext", :min_occurs=>0, :max_occurs=>1, :name=>:context}, {:type=>"ApiErrorReason", :min_occurs=>0, :max_occurs=>1, :name=>:failure_reason}, {:type=>"JobStats", :min_occurs=>0, :max_occurs=>1, :name=>:stats}, {:type=>"BillingSummary", :min_occurs=>0, :max_occurs=>1, :name=>:billing_summary}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:job_type}], :abstract=>true}, :Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry=>{:fields=>[{:type=>"Media.MediaExtendedCapabilityType", :min_occurs=>0, :max_occurs=>1, :name=>:key}, {:type=>"Media.MediaExtendedCapabilityState", :min_occurs=>0, :max_occurs=>1, :name=>:value}]}, :ConversionOptimizerAdGroupCriterionBids=>{:fields=>[], :base=>"AdGroupCriterionBids"}, :Target=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:target_type}], :abstract=>true}, :BillingSummary=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:num_operations}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:num_units}]}, :AdGroupAdCountLimitExceeded=>{:fields=>[], :base=>"EntityCountLimitExceeded"}, :ImageAd=>{:fields=>[{:type=>"Image", :min_occurs=>0, :max_occurs=>1, :name=>:image}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}], :base=>"Ad"}, :JobOperation=>{:fields=>[{:type=>"Job", :min_occurs=>0, :max_occurs=>1, :name=>:operand}], :base=>"Operation"}, :EntityNotFound=>{:fields=>[{:type=>"EntityNotFound.Reason", :min_occurs=>0, :max_occurs=>1, :name=>:reason}], :base=>"ApiError"}, :ExemptionRequest=>{:fields=>[{:type=>"PolicyViolationKey", :min_occurs=>0, :max_occurs=>1, :name=>:key}]}, :BiddingTransition=>{:fields=>[{:type=>"BiddingStrategy", :min_occurs=>0, :max_occurs=>1, :name=>:target_bidding_strategy}, {:type=>"AdGroupBids", :min_occurs=>0, :max_occurs=>1, :name=>:explicit_ad_group_bids}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:bidding_transition_type}]}, :Stats=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:start_date}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:end_date}, {:type=>"Stats.Network", :min_occurs=>0, :max_occurs=>1, :name=>:network}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:clicks}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:impressions}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:cost}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:average_position}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:average_cpc}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:average_cpm}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:ctr}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:conversions}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:conversion_rate}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:cost_per_conversion}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:conversions_many_per_click}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:conversion_rate_many_per_click}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:cost_per_conversion_many_per_click}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:stats_type}]}, :DeprecatedAd=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"DeprecatedAd.Type", :min_occurs=>0, :max_occurs=>1, :name=>:type}], :base=>"Ad"}, :BulkMutateJobPolicy=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:prerequisite_job_ids}]}, :LongValue=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:number}], :base=>"NumberValue"}, :ManualCPMAdGroupCriterionBids=>{:fields=>[{:type=>"Bid", :min_occurs=>0, :max_occurs=>1, :name=>:max_cpm}, {:type=>"BidSource", :min_occurs=>0, :max_occurs=>1, :name=>:bid_source}], :base=>"AdGroupCriterionBids"}, :CityTarget=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:city_name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:province_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:country_code}], :base=>"GeoTarget"}, :Ad=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:url}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:display_url}, {:type=>"Ad.ApprovalStatus", :min_occurs=>0, :max_occurs=>1, :name=>:approval_status}, {:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:disapproval_reasons}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:ad_type}]}, :LanguageTargetList=>{:fields=>[{:type=>"LanguageTarget", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:targets}], :base=>"TargetList"}, :ConversionOptimizerAdGroupBids=>{:fields=>[{:type=>"Bid", :min_occurs=>0, :max_occurs=>1, :name=>:target_cpa}], :base=>"AdGroupBids"}, :Media_Size_DimensionsMapEntry=>{:fields=>[{:type=>"Media.Size", :min_occurs=>0, :max_occurs=>1, :name=>:key}, {:type=>"Dimensions", :min_occurs=>0, :max_occurs=>1, :name=>:value}]}, :BulkMutateRequest=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:part_index}, {:type=>"OperationStream", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:operation_streams}]}, :AdGroupCriterionBids=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:ad_group_criterion_bids_type}], :abstract=>true}, :ConversionOptimizer=>{:fields=>[{:type=>"PricingModel", :min_occurs=>0, :max_occurs=>1, :name=>:pricing_model}], :base=>"BiddingStrategy"}, :GenderTarget=>{:fields=>[{:type=>"GenderTarget.Gender", :min_occurs=>0, :max_occurs=>1, :name=>:gender}], :base=>"DemographicTarget"}, :NumberValue=>{:fields=>[], :base=>"ComparableValue", :abstract=>true}, :AdGroupCriterionOperation=>{:fields=>[{:type=>"AdGroupCriterion", :min_occurs=>0, :max_occurs=>1, :name=>:operand}, {:type=>"ExemptionRequest", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:exemption_requests}], :base=>"Operation"}, :FrequencyCap=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:impressions}, {:type=>"TimeUnit", :min_occurs=>0, :max_occurs=>1, :name=>:time_unit}, {:type=>"Level", :min_occurs=>0, :max_occurs=>1, :name=>:level}]}, :ManualCPMAdGroupBids=>{:fields=>[{:type=>"Bid", :min_occurs=>0, :max_occurs=>1, :name=>:max_cpm}], :base=>"AdGroupBids"}, :CampaignCriterionLimitExceeded=>{:fields=>[{:type=>"CampaignCriterionLimitExceeded.CriteriaLimitType", :min_occurs=>0, :max_occurs=>1, :name=>:limit_type}], :base=>"EntityCountLimitExceeded"}, :QualityInfo=>{:fields=>[{:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:is_keyword_ad_relevance_acceptable}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:is_landing_page_quality_acceptable}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:is_landing_page_latency_acceptable}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:quality_score}]}, :OperationResult=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:operation_result_type}], :abstract=>true}, :MetroTarget=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:metro_code}], :base=>"GeoTarget"}, :ManualCPM=>{:fields=>[], :base=>"BiddingStrategy"}, :ContentLabel=>{:fields=>[{:type=>"ContentLabelType", :min_occurs=>0, :max_occurs=>1, :name=>:content_label_type}], :base=>"Criterion"}, :Bid=>{:fields=>[{:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:amount}]}, :AdExtensionOverride=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:ad_id}, {:type=>"AdExtension", :min_occurs=>0, :max_occurs=>1, :name=>:ad_extension}, {:type=>"OverrideInfo", :min_occurs=>0, :max_occurs=>1, :name=>:override_info}, {:type=>"AdExtensionOverride.Status", :min_occurs=>0, :max_occurs=>1, :name=>:status}, {:type=>"AdExtensionOverride.ApprovalStatus", :min_occurs=>0, :max_occurs=>1, :name=>:approval_status}, {:type=>"AdExtensionOverrideStats", :min_occurs=>0, :max_occurs=>1, :name=>:stats}]}, :OverrideInfo=>{:fields=>[]}, :AdUnionId=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:ad_union_id_type}]}, :FailureResult=>{:fields=>[{:type=>"ApiException", :min_occurs=>0, :max_occurs=>1, :name=>:cause}], :base=>"OperationResult"}, :AdGroupOperation=>{:fields=>[{:type=>"AdGroup", :min_occurs=>0, :max_occurs=>1, :name=>:operand}], :base=>"Operation"}, :TargetList=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:campaign_id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:target_list_type}], :abstract=>true}, :ProvinceTarget=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:province_code}], :base=>"GeoTarget"}, :ComparableValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:comparable_value_type}], :abstract=>true}, :ApiErrorReason=>{:fields=>[]}, :EntityAccessDenied=>{:fields=>[{:type=>"EntityAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1, :name=>:reason}], :base=>"ApiError"}, :BudgetOptimizer=>{:fields=>[{:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:bid_ceiling}], :base=>"BiddingStrategy"}, :MobileImageAd=>{:fields=>[{:type=>"MarkupLanguageType", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:markup_languages}, {:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:mobile_carriers}, {:type=>"Image", :min_occurs=>0, :max_occurs=>1, :name=>:image}], :base=>"Ad"}, :JobContext=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:authenticated_user_email}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:effective_customer_id}]}, :AdStats=>{:fields=>[{:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:percent_served}], :base=>"Stats"}, :BulkMutateJob=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"BulkMutateJobPolicy", :min_occurs=>0, :max_occurs=>1, :name=>:policy}, {:type=>"BulkMutateRequest", :min_occurs=>0, :max_occurs=>1, :name=>:request}, {:type=>"BasicJobStatus", :min_occurs=>0, :max_occurs=>1, :name=>:status}, {:type=>"BulkMutateJobEvent", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:history}, {:type=>"BulkMutateResult", :min_occurs=>0, :max_occurs=>1, :name=>:result}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:num_request_parts}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:num_request_parts_received}], :base=>"Job"}, :TemplateElement=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:unique_name}, {:type=>"TemplateElementField", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:fields}]}, :JobSelector=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:customer_job_keys}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:include_history}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:include_stats}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:job_selector_type}], :abstract=>true}, :GeoPoint=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:latitude_in_micro_degrees}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:longitude_in_micro_degrees}]}, :ManualCPCAdGroupCriterionBids=>{:fields=>[{:type=>"Bid", :min_occurs=>0, :max_occurs=>1, :name=>:max_cpc}, {:type=>"BidSource", :min_occurs=>0, :max_occurs=>1, :name=>:bid_source}, {:type=>"PositionPreferenceAdGroupCriterionBids", :min_occurs=>0, :max_occurs=>1, :name=>:position_preference_bids}], :base=>"AdGroupCriterionBids"}, :Campaign=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"CampaignStatus", :min_occurs=>0, :max_occurs=>1, :name=>:status}, {:type=>"ServingStatus", :min_occurs=>0, :max_occurs=>1, :name=>:serving_status}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:start_date}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:end_date}, {:type=>"Budget", :min_occurs=>0, :max_occurs=>1, :name=>:budget}, {:type=>"BiddingStrategy", :min_occurs=>0, :max_occurs=>1, :name=>:bidding_strategy}, {:type=>"AutoKeywordMatchingStatus", :min_occurs=>0, :max_occurs=>1, :name=>:auto_keyword_matching_status}, {:type=>"Stats", :min_occurs=>0, :max_occurs=>1, :name=>:stats}, {:type=>"AdServingOptimizationStatus", :min_occurs=>0, :max_occurs=>1, :name=>:ad_serving_optimization_status}, {:type=>"FrequencyCap", :min_occurs=>0, :max_occurs=>1, :name=>:frequency_cap}]}, :AdScheduleTarget=>{:fields=>[{:type=>"DayOfWeek", :min_occurs=>0, :max_occurs=>1, :name=>:day_of_week}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:start_hour}, {:type=>"MinuteOfHour", :min_occurs=>0, :max_occurs=>1, :name=>:start_minute}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:end_hour}, {:type=>"MinuteOfHour", :min_occurs=>0, :max_occurs=>1, :name=>:end_minute}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:bid_multiplier}], :base=>"Target"}}
    BULKMUTATEJOBSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return BULKMUTATEJOBSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return BULKMUTATEJOBSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return BULKMUTATEJOBSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < AdwordsApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end