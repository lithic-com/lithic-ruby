# frozen_string_literal: true

module Lithic
  module Models
    class AggregateBalance < Lithic::BaseModel
      # @!attribute available_amount
      #   Funds available for spend in the currency's smallest unit (e.g., cents for USD)
      #
      #   @return [Integer]
      required :available_amount, Integer

      # @!attribute created
      #   Date and time for when the balance was first created.
      #
      #   @return [Time]
      required :created, Time

      # @!attribute currency
      #   3-character alphabetic ISO 4217 code for the local currency of the balance.
      #
      #   @return [String]
      required :currency, String

      # @!attribute financial_account_type
      #   Type of financial account
      #
      #   @return [Symbol, Lithic::Models::AggregateBalance::FinancialAccountType]
      required :financial_account_type, enum: -> { Lithic::Models::AggregateBalance::FinancialAccountType }

      # @!attribute last_financial_account_token
      #   Globally unique identifier for the financial account that had its balance
      #     updated most recently
      #
      #   @return [String]
      required :last_financial_account_token, String

      # @!attribute last_transaction_event_token
      #   Globally unique identifier for the last transaction event that impacted this
      #     balance
      #
      #   @return [String]
      required :last_transaction_event_token, String

      # @!attribute last_transaction_token
      #   Globally unique identifier for the last transaction that impacted this balance
      #
      #   @return [String]
      required :last_transaction_token, String

      # @!attribute pending_amount
      #   Funds not available for spend due to card authorizations or pending ACH release.
      #     Shown in the currency's smallest unit (e.g., cents for USD)
      #
      #   @return [Integer]
      required :pending_amount, Integer

      # @!attribute total_amount
      #   The sum of available and pending balance in the currency's smallest unit (e.g.,
      #     cents for USD)
      #
      #   @return [Integer]
      required :total_amount, Integer

      # @!attribute updated
      #   Date and time for when the balance was last updated.
      #
      #   @return [Time]
      required :updated, Time

      # @!parse
      #   # Aggregate Balance across all end-user accounts
      #   #
      #   # @param available_amount [Integer]
      #   # @param created [Time]
      #   # @param currency [String]
      #   # @param financial_account_type [Symbol, Lithic::Models::AggregateBalance::FinancialAccountType]
      #   # @param last_financial_account_token [String]
      #   # @param last_transaction_event_token [String]
      #   # @param last_transaction_token [String]
      #   # @param pending_amount [Integer]
      #   # @param total_amount [Integer]
      #   # @param updated [Time]
      #   #
      #   def initialize(
      #     available_amount:,
      #     created:,
      #     currency:,
      #     financial_account_type:,
      #     last_financial_account_token:,
      #     last_transaction_event_token:,
      #     last_transaction_token:,
      #     pending_amount:,
      #     total_amount:,
      #     updated:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # Type of financial account
      module FinancialAccountType
        extend Lithic::Enum

        ISSUING = :ISSUING
        OPERATING = :OPERATING
        RESERVE = :RESERVE

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
