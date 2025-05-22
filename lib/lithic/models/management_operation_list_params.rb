# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ManagementOperations#list
    class ManagementOperationListParams < Lithic::Internal::Type::BaseModel
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
      #   Management operation category to be returned.
      #
      #   @return [Symbol, Lithic::Models::ManagementOperationListParams::Category, nil]
      optional :category, enum: -> { Lithic::ManagementOperationListParams::Category }

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
      #   Globally unique identifier for the financial account. Accepted type dependent on
      #   the program's use case.
      #
      #   @return [String, nil]
      optional :financial_account_token, String

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

      # @!attribute status
      #   Management operation status to be returned.
      #
      #   @return [Symbol, Lithic::Models::ManagementOperationListParams::Status, nil]
      optional :status, enum: -> { Lithic::ManagementOperationListParams::Status }

      # @!method initialize(begin_: nil, business_account_token: nil, category: nil, end_: nil, ending_before: nil, financial_account_token: nil, page_size: nil, starting_after: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::ManagementOperationListParams} for more details.
      #
      #   @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
      #
      #   @param business_account_token [String]
      #
      #   @param category [Symbol, Lithic::Models::ManagementOperationListParams::Category] Management operation category to be returned.
      #
      #   @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
      #
      #   @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      #
      #   @param financial_account_token [String] Globally unique identifier for the financial account. Accepted type dependent on
      #
      #   @param page_size [Integer] Page size (for pagination).
      #
      #   @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      #
      #   @param status [Symbol, Lithic::Models::ManagementOperationListParams::Status] Management operation status to be returned.
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Management operation category to be returned.
      module Category
        extend Lithic::Internal::Type::Enum

        MANAGEMENT_FEE = :MANAGEMENT_FEE
        MANAGEMENT_DISPUTE = :MANAGEMENT_DISPUTE
        MANAGEMENT_REWARD = :MANAGEMENT_REWARD
        MANAGEMENT_ADJUSTMENT = :MANAGEMENT_ADJUSTMENT
        MANAGEMENT_DISBURSEMENT = :MANAGEMENT_DISBURSEMENT

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Management operation status to be returned.
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
