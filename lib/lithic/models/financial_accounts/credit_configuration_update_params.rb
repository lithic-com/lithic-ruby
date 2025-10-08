# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      # @see Lithic::Resources::FinancialAccounts::CreditConfiguration#update
      class CreditConfigurationUpdateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute auto_collection_configuration
        #
        #   @return [Lithic::Models::FinancialAccounts::CreditConfigurationUpdateParams::AutoCollectionConfiguration, nil]
        optional :auto_collection_configuration,
                 -> { Lithic::FinancialAccounts::CreditConfigurationUpdateParams::AutoCollectionConfiguration }

        # @!attribute credit_limit
        #
        #   @return [Integer, nil]
        optional :credit_limit, Integer

        # @!attribute credit_product_token
        #   Globally unique identifier for the credit product
        #
        #   @return [String, nil]
        optional :credit_product_token, String

        # @!attribute external_bank_account_token
        #
        #   @return [String, nil]
        optional :external_bank_account_token, String

        # @!attribute tier
        #   Tier to assign to a financial account
        #
        #   @return [String, nil]
        optional :tier, String

        # @!method initialize(auto_collection_configuration: nil, credit_limit: nil, credit_product_token: nil, external_bank_account_token: nil, tier: nil, request_options: {})
        #   @param auto_collection_configuration [Lithic::Models::FinancialAccounts::CreditConfigurationUpdateParams::AutoCollectionConfiguration]
        #
        #   @param credit_limit [Integer]
        #
        #   @param credit_product_token [String] Globally unique identifier for the credit product
        #
        #   @param external_bank_account_token [String]
        #
        #   @param tier [String] Tier to assign to a financial account
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

        class AutoCollectionConfiguration < Lithic::Internal::Type::BaseModel
          # @!attribute auto_collection_enabled
          #   If auto collection is enabled for this account
          #
          #   @return [Boolean, nil]
          optional :auto_collection_enabled, Lithic::Internal::Type::Boolean

          # @!method initialize(auto_collection_enabled: nil)
          #   @param auto_collection_enabled [Boolean] If auto collection is enabled for this account
        end
      end
    end
  end
end
