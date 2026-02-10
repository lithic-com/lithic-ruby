# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#list_results
      class V2ListResultsParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute auth_rule_token
        #   Filter by Auth Rule token
        #
        #   @return [String, nil]
        optional :auth_rule_token, String

        # @!attribute ending_before
        #   A cursor representing an item's token before which a page of results should end.
        #   Used to retrieve the previous page of results before this item.
        #
        #   @return [String, nil]
        optional :ending_before, String

        # @!attribute event_uuid
        #   Filter by event UUID
        #
        #   @return [String, nil]
        optional :event_uuid, String

        # @!attribute has_actions
        #   Filter by whether the rule evaluation produced any actions. When not provided,
        #   all results are returned.
        #
        #   @return [Boolean, nil]
        optional :has_actions, Lithic::Internal::Type::Boolean

        # @!attribute page_size
        #   Page size (for pagination).
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute starting_after
        #   A cursor representing an item's token after which a page of results should
        #   begin. Used to retrieve the next page of results after this item.
        #
        #   @return [String, nil]
        optional :starting_after, String

        # @!method initialize(auth_rule_token: nil, ending_before: nil, event_uuid: nil, has_actions: nil, page_size: nil, starting_after: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::AuthRules::V2ListResultsParams} for more details.
        #
        #   @param auth_rule_token [String] Filter by Auth Rule token
        #
        #   @param ending_before [String] A cursor representing an item's token before which a page of results should end.
        #
        #   @param event_uuid [String] Filter by event UUID
        #
        #   @param has_actions [Boolean] Filter by whether the rule evaluation produced any actions. When not provided, a
        #
        #   @param page_size [Integer] Page size (for pagination).
        #
        #   @param starting_after [String] A cursor representing an item's token after which a page of results should begin
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
