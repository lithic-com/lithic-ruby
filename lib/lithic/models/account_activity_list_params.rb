# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::AccountActivity#list
    class AccountActivityListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute begin_
      #   Date string in RFC 3339 format. Only entries created after the specified time
      #   will be included. UTC time zone.
      #
      #   @return [Time, nil]
      optional :begin_, Time

      # @!attribute business_account_token
      #   Filter by business account token
      #
      #   @return [String, nil]
      optional :business_account_token, String

      # @!attribute category
      #   Filter by transaction category
      #
      #   @return [Symbol, Lithic::Models::AccountActivityListParams::Category, nil]
      optional :category, enum: -> { Lithic::AccountActivityListParams::Category }

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
      #   Filter by financial account token
      #
      #   @return [String, nil]
      optional :financial_account_token, String

      # @!attribute page_size
      #   Page size (for pagination).
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute result
      #   Filter by transaction result
      #
      #   @return [Array<Symbol, Lithic::Models::AccountActivityListParams::Result>, nil]
      optional :result,
               -> {
                 Lithic::Internal::Type::ArrayOf[enum: Lithic::AccountActivityListParams::Result]
               }

      # @!attribute starting_after
      #   A cursor representing an item's token after which a page of results should
      #   begin. Used to retrieve the next page of results after this item.
      #
      #   @return [String, nil]
      optional :starting_after, String

      # @!attribute status
      #   Filter by transaction status
      #
      #   @return [Array<Symbol, Lithic::Models::AccountActivityListParams::Status>, nil]
      optional :status,
               -> {
                 Lithic::Internal::Type::ArrayOf[enum: Lithic::AccountActivityListParams::Status]
               }

      # @!method initialize(begin_: nil, business_account_token: nil, category: nil, end_: nil, ending_before: nil, financial_account_token: nil, page_size: nil, result: nil, starting_after: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::AccountActivityListParams} for more details.
      #
      #   @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
      #
      #   @param business_account_token [String] Filter by business account token
      #
      #   @param category [Symbol, Lithic::Models::AccountActivityListParams::Category] Filter by transaction category
      #
      #   @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
      #
      #   @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      #
      #   @param financial_account_token [String] Filter by financial account token
      #
      #   @param page_size [Integer] Page size (for pagination).
      #
      #   @param result [Array<Symbol, Lithic::Models::AccountActivityListParams::Result>] Filter by transaction result
      #
      #   @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      #
      #   @param status [Array<Symbol, Lithic::Models::AccountActivityListParams::Status>] Filter by transaction status
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Filter by transaction category
      module Category
        extend Lithic::Internal::Type::Enum

        ACH = :ACH
        BALANCE_OR_FUNDING = :BALANCE_OR_FUNDING
        CARD = :CARD
        EXTERNAL_ACH = :EXTERNAL_ACH
        EXTERNAL_CHECK = :EXTERNAL_CHECK
        EXTERNAL_TRANSFER = :EXTERNAL_TRANSFER
        EXTERNAL_WIRE = :EXTERNAL_WIRE
        MANAGEMENT_ADJUSTMENT = :MANAGEMENT_ADJUSTMENT
        MANAGEMENT_DISPUTE = :MANAGEMENT_DISPUTE
        MANAGEMENT_FEE = :MANAGEMENT_FEE
        MANAGEMENT_REWARD = :MANAGEMENT_REWARD
        MANAGEMENT_DISBURSEMENT = :MANAGEMENT_DISBURSEMENT
        PROGRAM_FUNDING = :PROGRAM_FUNDING

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
        EXPIRED = :EXPIRED
        PENDING = :PENDING
        SETTLED = :SETTLED
        VOIDED = :VOIDED
        RETURNED = :RETURNED
        REVERSED = :REVERSED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
