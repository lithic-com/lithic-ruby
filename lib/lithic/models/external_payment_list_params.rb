# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ExternalPayments#list
    class ExternalPaymentListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

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
      #   External Payment category to be returned.
      #
      #   @return [Symbol, Lithic::Models::ExternalPaymentListParams::Category, nil]
      optional :category, enum: -> { Lithic::Models::ExternalPaymentListParams::Category }

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
      #   Globally unique identifier for the financial account or card that will send the
      #   funds. Accepted type dependent on the program's use case.
      #
      #   @return [String, nil]
      optional :financial_account_token, String

      # @!attribute page_size
      #   Page size (for pagination).
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute result
      #   External Payment result to be returned.
      #
      #   @return [Symbol, Lithic::Models::ExternalPaymentListParams::Result, nil]
      optional :result, enum: -> { Lithic::Models::ExternalPaymentListParams::Result }

      # @!attribute starting_after
      #   A cursor representing an item's token after which a page of results should
      #   begin. Used to retrieve the next page of results after this item.
      #
      #   @return [String, nil]
      optional :starting_after, String

      # @!attribute status
      #   Book transfer status to be returned.
      #
      #   @return [Symbol, Lithic::Models::ExternalPaymentListParams::Status, nil]
      optional :status, enum: -> { Lithic::Models::ExternalPaymentListParams::Status }

      # @!method initialize(begin_: nil, business_account_token: nil, category: nil, end_: nil, ending_before: nil, financial_account_token: nil, page_size: nil, result: nil, starting_after: nil, status: nil, request_options: {})
      #   @param begin_ [Time]
      #   @param business_account_token [String]
      #   @param category [Symbol, Lithic::Models::ExternalPaymentListParams::Category]
      #   @param end_ [Time]
      #   @param ending_before [String]
      #   @param financial_account_token [String]
      #   @param page_size [Integer]
      #   @param result [Symbol, Lithic::Models::ExternalPaymentListParams::Result]
      #   @param starting_after [String]
      #   @param status [Symbol, Lithic::Models::ExternalPaymentListParams::Status]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # External Payment category to be returned.
      module Category
        extend Lithic::Internal::Type::Enum

        EXTERNAL_WIRE = :EXTERNAL_WIRE
        EXTERNAL_ACH = :EXTERNAL_ACH
        EXTERNAL_CHECK = :EXTERNAL_CHECK
        EXTERNAL_TRANSFER = :EXTERNAL_TRANSFER

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # External Payment result to be returned.
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Book transfer status to be returned.
      module Status
        extend Lithic::Internal::Type::Enum

        PENDING = :PENDING
        SETTLED = :SETTLED
        DECLINED = :DECLINED
        REVERSED = :REVERSED
        CANCELED = :CANCELED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
