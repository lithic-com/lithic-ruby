# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      class FinancialAccountCreditConfig < Lithic::BaseModel
        # @!attribute account_token
        #   Globally unique identifier for the account
        #
        #   @return [String]
        required :account_token, String

        # @!attribute charged_off_reason
        #   Reason for the financial account being marked as Charged Off
        #
        #   @return [Symbol, Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason, nil]
        required :charged_off_reason,
                 enum: -> { Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason },
                 nil?: true

        # @!attribute credit_limit
        #
        #   @return [Integer, nil]
        required :credit_limit, Integer, nil?: true

        # @!attribute credit_product_token
        #   Globally unique identifier for the credit product
        #
        #   @return [String, nil]
        required :credit_product_token, String, nil?: true

        # @!attribute external_bank_account_token
        #
        #   @return [String, nil]
        required :external_bank_account_token, String, nil?: true

        # @!attribute financial_account_state
        #   State of the financial account
        #
        #   @return [Symbol, Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState]
        required :financial_account_state,
                 enum: -> { Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState }

        # @!attribute is_spend_blocked
        #
        #   @return [Boolean]
        required :is_spend_blocked, Lithic::BooleanModel

        # @!attribute tier
        #   Tier assigned to the financial account
        #
        #   @return [String, nil]
        required :tier, String, nil?: true

        # @!parse
        #   # @param account_token [String]
        #   # @param charged_off_reason [Symbol, Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason, nil]
        #   # @param credit_limit [Integer, nil]
        #   # @param credit_product_token [String, nil]
        #   # @param external_bank_account_token [String, nil]
        #   # @param financial_account_state [Symbol, Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState]
        #   # @param is_spend_blocked [Boolean]
        #   # @param tier [String, nil]
        #   #
        #   def initialize(
        #     account_token:,
        #     charged_off_reason:,
        #     credit_limit:,
        #     credit_product_token:,
        #     external_bank_account_token:,
        #     financial_account_state:,
        #     is_spend_blocked:,
        #     tier:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Lithic::BaseModel) -> void

        # Reason for the financial account being marked as Charged Off
        module ChargedOffReason
          extend Lithic::Enum

          DELINQUENT = :DELINQUENT
          FRAUD = :FRAUD

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # State of the financial account
        module FinancialAccountState
          extend Lithic::Enum

          PENDING = :PENDING
          CURRENT = :CURRENT
          DELINQUENT = :DELINQUENT
          CHARGED_OFF = :CHARGED_OFF

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end

    FinancialAccountCreditConfig = FinancialAccounts::FinancialAccountCreditConfig
  end
end
