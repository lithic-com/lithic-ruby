# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Payments#list
    class PaymentListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute account_token
      #
      #   @return [String, nil]
      optional :account_token, String

      # @!attribute begin_
      #   Date string in RFC 3339 format. Only entries created after the specified time
      #   will be included. UTC time zone.
      #
      #   @return [Time, nil]
      optional :begin_, Time

      # @!attribute business_account_token
      #
      #   @return [String, nil]
      optional :business_account_token, String

      # @!attribute category
      #
      #   @return [Symbol, Lithic::Models::PaymentListParams::Category, nil]
      optional :category, enum: -> { Lithic::PaymentListParams::Category }

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

      # @!attribute financial_account_token
      #
      #   @return [String, nil]
      optional :financial_account_token, String

      # @!attribute page_size
      #   Page size (for pagination).
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute result
      #
      #   @return [Symbol, Lithic::Models::PaymentListParams::Result, nil]
      optional :result, enum: -> { Lithic::PaymentListParams::Result }

      # @!attribute starting_after
      #   A cursor representing an item's token after which a page of results should
      #   begin. Used to retrieve the next page of results after this item.
      #
      #   @return [String, nil]
      optional :starting_after, String

      # @!attribute status
      #
      #   @return [Symbol, Lithic::Models::PaymentListParams::Status, nil]
      optional :status, enum: -> { Lithic::PaymentListParams::Status }

      # @!method initialize(account_token: nil, begin_: nil, business_account_token: nil, category: nil, end_: nil, ending_before: nil, financial_account_token: nil, page_size: nil, result: nil, starting_after: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::PaymentListParams} for more details.
      #
      #   @param account_token [String]
      #
      #   @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
      #
      #   @param business_account_token [String]
      #
      #   @param category [Symbol, Lithic::Models::PaymentListParams::Category]
      #
      #   @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
      #
      #   @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      #
      #   @param financial_account_token [String]
      #
      #   @param page_size [Integer] Page size (for pagination).
      #
      #   @param result [Symbol, Lithic::Models::PaymentListParams::Result]
      #
      #   @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      #
      #   @param status [Symbol, Lithic::Models::PaymentListParams::Status]
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      module Category
        extend Lithic::Internal::Type::Enum

        ACH = :ACH

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Status
        extend Lithic::Internal::Type::Enum

        DECLINED = :DECLINED
        PENDING = :PENDING
        RETURNED = :RETURNED
        SETTLED = :SETTLED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
