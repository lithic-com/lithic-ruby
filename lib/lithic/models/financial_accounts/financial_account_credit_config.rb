# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      # @see Lithic::Resources::FinancialAccounts::CreditConfiguration#retrieve
      class FinancialAccountCreditConfig < Lithic::Internal::Type::BaseModel
        # @!attribute account_token
        #   Globally unique identifier for the account
        #
        #   @return [String]
        required :account_token, String

        # @!attribute auto_collection_configuration
        #
        #   @return [Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::AutoCollectionConfiguration]
        required :auto_collection_configuration,
                 -> { Lithic::FinancialAccounts::FinancialAccountCreditConfig::AutoCollectionConfiguration }

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

        # @!attribute tier
        #   Tier assigned to the financial account
        #
        #   @return [String, nil]
        required :tier, String, nil?: true

        # @!attribute charged_off_reason
        #   @deprecated
        #
        #   Reason for the financial account being marked as Charged Off
        #
        #   @return [Symbol, Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason, nil]
        optional :charged_off_reason,
                 enum: -> { Lithic::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason },
                 nil?: true

        # @!attribute financial_account_state
        #   @deprecated
        #
        #   State of the financial account
        #
        #   @return [Symbol, Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState, nil]
        optional :financial_account_state,
                 enum: -> { Lithic::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState }

        # @!attribute is_spend_blocked
        #   @deprecated
        #
        #   @return [Boolean, nil]
        optional :is_spend_blocked, Lithic::Internal::Type::Boolean

        # @!method initialize(account_token:, auto_collection_configuration:, credit_limit:, credit_product_token:, external_bank_account_token:, tier:, charged_off_reason: nil, financial_account_state: nil, is_spend_blocked: nil)
        #   @param account_token [String] Globally unique identifier for the account
        #
        #   @param auto_collection_configuration [Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::AutoCollectionConfiguration]
        #
        #   @param credit_limit [Integer, nil]
        #
        #   @param credit_product_token [String, nil] Globally unique identifier for the credit product
        #
        #   @param external_bank_account_token [String, nil]
        #
        #   @param tier [String, nil] Tier assigned to the financial account
        #
        #   @param charged_off_reason [Symbol, Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason, nil] Reason for the financial account being marked as Charged Off
        #
        #   @param financial_account_state [Symbol, Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState] State of the financial account
        #
        #   @param is_spend_blocked [Boolean]

        # @see Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig#auto_collection_configuration
        class AutoCollectionConfiguration < Lithic::Internal::Type::BaseModel
          # @!attribute auto_collection_enabled
          #   If auto collection is enabled for this account
          #
          #   @return [Boolean]
          required :auto_collection_enabled, Lithic::Internal::Type::Boolean

          # @!method initialize(auto_collection_enabled:)
          #   @param auto_collection_enabled [Boolean] If auto collection is enabled for this account
        end

        # @deprecated
        #
        # Reason for the financial account being marked as Charged Off
        #
        # @see Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig#charged_off_reason
        module ChargedOffReason
          extend Lithic::Internal::Type::Enum

          DELINQUENT = :DELINQUENT
          FRAUD = :FRAUD

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @deprecated
        #
        # State of the financial account
        #
        # @see Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig#financial_account_state
        module FinancialAccountState
          extend Lithic::Internal::Type::Enum

          PENDING = :PENDING
          CURRENT = :CURRENT
          DELINQUENT = :DELINQUENT
          CHARGED_OFF = :CHARGED_OFF

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    FinancialAccountCreditConfig = FinancialAccounts::FinancialAccountCreditConfig
  end
end
