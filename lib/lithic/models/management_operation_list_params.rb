# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ManagementOperations#list
    class ManagementOperationListParams < Lithic::Internal::Type::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute [r] begin_
      #   Date string in RFC 3339 format. Only entries created after the specified time
      #   will be included. UTC time zone.
      #
      #   @return [Time, nil]
      optional :begin_, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :begin_

      # @!attribute [r] business_account_token
      #
      #   @return [String, nil]
      optional :business_account_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :business_account_token

      # @!attribute [r] category
      #   Management operation category to be returned.
      #
      #   @return [Symbol, Lithic::Models::ManagementOperationListParams::Category, nil]
      optional :category, enum: -> { Lithic::Models::ManagementOperationListParams::Category }

      # @!parse
      #   # @return [Symbol, Lithic::Models::ManagementOperationListParams::Category]
      #   attr_writer :category

      # @!attribute [r] end_
      #   Date string in RFC 3339 format. Only entries created before the specified time
      #   will be included. UTC time zone.
      #
      #   @return [Time, nil]
      optional :end_, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :end_

      # @!attribute [r] ending_before
      #   A cursor representing an item's token before which a page of results should end.
      #   Used to retrieve the previous page of results before this item.
      #
      #   @return [String, nil]
      optional :ending_before, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ending_before

      # @!attribute [r] financial_account_token
      #   Globally unique identifier for the financial account. Accepted type dependent on
      #   the program's use case.
      #
      #   @return [String, nil]
      optional :financial_account_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :financial_account_token

      # @!attribute [r] page_size
      #   Page size (for pagination).
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :page_size

      # @!attribute [r] starting_after
      #   A cursor representing an item's token after which a page of results should
      #   begin. Used to retrieve the next page of results after this item.
      #
      #   @return [String, nil]
      optional :starting_after, String

      # @!parse
      #   # @return [String]
      #   attr_writer :starting_after

      # @!attribute [r] status
      #   Management operation status to be returned.
      #
      #   @return [Symbol, Lithic::Models::ManagementOperationListParams::Status, nil]
      optional :status, enum: -> { Lithic::Models::ManagementOperationListParams::Status }

      # @!parse
      #   # @return [Symbol, Lithic::Models::ManagementOperationListParams::Status]
      #   attr_writer :status

      # @!method initialize(begin_: nil, business_account_token: nil, category: nil, end_: nil, ending_before: nil, financial_account_token: nil, page_size: nil, starting_after: nil, status: nil, request_options: {})
      #   @param begin_ [Time]
      #   @param business_account_token [String]
      #   @param category [Symbol, Lithic::Models::ManagementOperationListParams::Category]
      #   @param end_ [Time]
      #   @param ending_before [String]
      #   @param financial_account_token [String]
      #   @param page_size [Integer]
      #   @param starting_after [String]
      #   @param status [Symbol, Lithic::Models::ManagementOperationListParams::Status]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Management operation category to be returned.
      module Category
        extend Lithic::Internal::Type::Enum

        MANAGEMENT_FEE = :MANAGEMENT_FEE
        MANAGEMENT_DISPUTE = :MANAGEMENT_DISPUTE
        MANAGEMENT_REWARD = :MANAGEMENT_REWARD
        MANAGEMENT_ADJUSTMENT = :MANAGEMENT_ADJUSTMENT

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
