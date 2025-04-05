# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      # @see Lithic::Resources::FinancialAccounts::FinancialTransactions#list
      class FinancialTransactionListParams < Lithic::Internal::Type::BaseModel
        # @!parse
        #   extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute [r] begin_
        #   Date string in RFC 3339 format. Only entries created after the specified time
        #   will be included. UTC time zone.
        #
        #   @return [Time, nil]
        optional :begin_, Time, api_name: :begin

        # @!parse
        #   # @return [Time]
        #   attr_writer :begin_

        # @!attribute [r] category
        #   Financial Transaction category to be returned.
        #
        #   @return [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category, nil]
        optional :category,
                 enum: -> { Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category }

        # @!parse
        #   # @return [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category]
        #   attr_writer :category

        # @!attribute [r] end_
        #   Date string in RFC 3339 format. Only entries created before the specified time
        #   will be included. UTC time zone.
        #
        #   @return [Time, nil]
        optional :end_, Time, api_name: :end

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

        # @!attribute [r] result
        #   Financial Transaction result to be returned.
        #
        #   @return [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result, nil]
        optional :result, enum: -> { Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result }

        # @!parse
        #   # @return [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result]
        #   attr_writer :result

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
        #   Financial Transaction status to be returned.
        #
        #   @return [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status, nil]
        optional :status, enum: -> { Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status }

        # @!parse
        #   # @return [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status]
        #   attr_writer :status

        # @!parse
        #   # @param begin_ [Time]
        #   # @param category [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category]
        #   # @param end_ [Time]
        #   # @param ending_before [String]
        #   # @param result [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result]
        #   # @param starting_after [String]
        #   # @param status [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status]
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     begin_: nil,
        #     category: nil,
        #     end_: nil,
        #     ending_before: nil,
        #     result: nil,
        #     starting_after: nil,
        #     status: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

        # Financial Transaction category to be returned.
        module Category
          extend Lithic::Internal::Type::Enum

          ACH = :ACH
          CARD = :CARD
          INTERNAL = :INTERNAL
          TRANSFER = :TRANSFER

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # Financial Transaction result to be returned.
        module Result
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
