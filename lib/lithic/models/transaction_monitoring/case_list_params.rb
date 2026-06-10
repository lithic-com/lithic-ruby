# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      # @see Lithic::Resources::TransactionMonitoring::Cases#list
      class CaseListParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute account_token
        #   Only return cases that include transactions on the provided account.
        #
        #   @return [String, nil]
        optional :account_token, String

        # @!attribute assignee
        #   Only return cases assigned to the provided value. Pass an empty string to return
        #   only unassigned cases.
        #
        #   @return [String, nil]
        optional :assignee, String

        # @!attribute begin_
        #   Date string in RFC 3339 format. Only entries created after the specified time
        #   will be included. UTC time zone.
        #
        #   @return [Time, nil]
        optional :begin_, Time

        # @!attribute card_token
        #   Only return cases that include transactions on the provided card.
        #
        #   @return [String, nil]
        optional :card_token, String

        # @!attribute end_
        #   Date string in RFC 3339 format. Only entries created before the specified time
        #   will be included. UTC time zone.
        #
        #   @return [Time, nil]
        optional :end_, Time

        # @!attribute ending_before
        #   A cursor representing an item's token before which a page of results should end.
        #   Used to retrieve the previous page of results before this item.
        #
        #   @return [String, nil]
        optional :ending_before, String

        # @!attribute entity_token
        #   Only return cases associated with the provided entity.
        #
        #   @return [String, nil]
        optional :entity_token, String

        # @!attribute page_size
        #   Page size (for pagination).
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute queue_token
        #   Only return cases belonging to the provided queue.
        #
        #   @return [String, nil]
        optional :queue_token, String

        # @!attribute rule_token
        #   Only return cases triggered by the provided transaction monitoring rule.
        #
        #   @return [String, nil]
        optional :rule_token, String

        # @!attribute sort_by
        #   Sort order for the returned cases.
        #
        #   @return [Symbol, Lithic::Models::TransactionMonitoring::CaseSortOrder, nil]
        optional :sort_by, enum: -> { Lithic::TransactionMonitoring::CaseSortOrder }

        # @!attribute starting_after
        #   A cursor representing an item's token after which a page of results should
        #   begin. Used to retrieve the next page of results after this item.
        #
        #   @return [String, nil]
        optional :starting_after, String

        # @!attribute status
        #   Only return cases with the provided status.
        #
        #   @return [Symbol, Lithic::Models::TransactionMonitoring::CaseStatus, nil]
        optional :status, enum: -> { Lithic::TransactionMonitoring::CaseStatus }

        # @!attribute transaction_token
        #   Only return cases that include the provided transaction.
        #
        #   @return [String, nil]
        optional :transaction_token, String

        # @!method initialize(account_token: nil, assignee: nil, begin_: nil, card_token: nil, end_: nil, ending_before: nil, entity_token: nil, page_size: nil, queue_token: nil, rule_token: nil, sort_by: nil, starting_after: nil, status: nil, transaction_token: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::TransactionMonitoring::CaseListParams} for more details.
        #
        #   @param account_token [String] Only return cases that include transactions on the provided account.
        #
        #   @param assignee [String] Only return cases assigned to the provided value. Pass an empty string to return
        #
        #   @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
        #
        #   @param card_token [String] Only return cases that include transactions on the provided card.
        #
        #   @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
        #
        #   @param ending_before [String] A cursor representing an item's token before which a page of results should end.
        #
        #   @param entity_token [String] Only return cases associated with the provided entity.
        #
        #   @param page_size [Integer] Page size (for pagination).
        #
        #   @param queue_token [String] Only return cases belonging to the provided queue.
        #
        #   @param rule_token [String] Only return cases triggered by the provided transaction monitoring rule.
        #
        #   @param sort_by [Symbol, Lithic::Models::TransactionMonitoring::CaseSortOrder] Sort order for the returned cases.
        #
        #   @param starting_after [String] A cursor representing an item's token after which a page of results should begin
        #
        #   @param status [Symbol, Lithic::Models::TransactionMonitoring::CaseStatus] Only return cases with the provided status.
        #
        #   @param transaction_token [String] Only return cases that include the provided transaction.
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
