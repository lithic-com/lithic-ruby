# frozen_string_literal: true

module Lithic
  module Resources
    class FinancialAccounts
      class CreditConfiguration
        # Get an Account's credit configuration
        #
        # @param financial_account_token [String] Globally unique identifier for financial account.
        #
        # @param params [Lithic::Models::FinancialAccounts::CreditConfigurationRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig]
        def retrieve(financial_account_token, params = {})
          @client.request(
            method: :get,
            path: ["v1/financial_accounts/%0s/credit_configuration", financial_account_token],
            model: Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig,
            options: params[:request_options]
          )
        end

        # Update an account's credit configuration
        #
        # @param financial_account_token [String] Globally unique identifier for financial account.
        #
        # @param params [Lithic::Models::FinancialAccounts::CreditConfigurationUpdateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Integer] :credit_limit
        #
        #   @option params [String] :credit_product_token Globally unique identifier for the credit product
        #
        #   @option params [String] :external_bank_account_token
        #
        #   @option params [String] :tier Tier to assign to a financial account
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig]
        def update(financial_account_token, params = {})
          parsed, options = Lithic::Models::FinancialAccounts::CreditConfigurationUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["v1/financial_accounts/%0s/credit_configuration", financial_account_token],
            body: parsed,
            model: Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig,
            options: options
          )
        end

        # @param client [Lithic::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
