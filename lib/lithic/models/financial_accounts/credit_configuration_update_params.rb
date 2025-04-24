# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      # @see Lithic::Resources::FinancialAccounts::CreditConfiguration#update
      class CreditConfigurationUpdateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

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

        # @!method initialize(credit_limit: nil, credit_product_token: nil, external_bank_account_token: nil, tier: nil, request_options: {})
        #   @param credit_limit [Integer]
        #
        #   @param credit_product_token [String] Globally unique identifier for the credit product
        #
        #   @param external_bank_account_token [String]
        #
        #   @param tier [String] Tier to assign to a financial account
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
