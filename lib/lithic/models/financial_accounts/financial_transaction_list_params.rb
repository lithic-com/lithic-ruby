# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      # @see Lithic::Resources::FinancialAccounts::FinancialTransactions#list
      class FinancialTransactionListParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute begin_
        #   Date string in RFC 3339 format. Only entries created after the specified time
        #   will be included. UTC time zone.
        #
        #   @return [Time, nil]
        optional :begin_, Time

        # @!attribute category
        #   Financial Transaction category to be returned.
        #
        #   @return [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category, nil]
        optional :category,
                 enum: -> { Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category }

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

        # @!attribute result
        #   Financial Transaction result to be returned.
        #
        #   @return [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result, nil]
        optional :result, enum: -> { Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result }

        # @!attribute starting_after
        #   A cursor representing an item's token after which a page of results should
        #   begin. Used to retrieve the next page of results after this item.
        #
        #   @return [String, nil]
        optional :starting_after, String

        # @!attribute status
        #   Financial Transaction status to be returned.
        #
        #   @return [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status, nil]
        optional :status, enum: -> { Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status }

        # @!method initialize(begin_: nil, category: nil, end_: nil, ending_before: nil, result: nil, starting_after: nil, status: nil, request_options: {})
        #   @param begin_ [Time]
        #   @param category [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category]
        #   @param end_ [Time]
        #   @param ending_before [String]
        #   @param result [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result]
        #   @param starting_after [String]
        #   @param status [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status]
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

        # Financial Transaction category to be returned.
        module Category
          extend Lithic::Internal::Type::Enum

          ACH = :ACH
          CARD = :CARD
          INTERNAL = :INTERNAL
          TRANSFER = :TRANSFER

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Financial Transaction result to be returned.
        module Result
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Financial Transaction status to be returned.
        module Status
          extend Lithic::Internal::Type::Enum

          DECLINED = :DECLINED
          EXPIRED = :EXPIRED
          PENDING = :PENDING
          RETURNED = :RETURNED
          SETTLED = :SETTLED
          VOIDED = :VOIDED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
