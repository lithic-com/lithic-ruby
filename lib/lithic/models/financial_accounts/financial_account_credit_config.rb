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

        # @!method initialize(account_token:, auto_collection_configuration:, credit_limit:, credit_product_token:, external_bank_account_token:, tier:)
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
      end
    end

    FinancialAccountCreditConfig = FinancialAccounts::FinancialAccountCreditConfig
  end
end
