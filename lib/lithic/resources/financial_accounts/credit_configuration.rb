# frozen_string_literal: true

module Lithic
  module Resources
    class FinancialAccounts
      class CreditConfiguration
        # Get an Account's credit configuration
        #
        # @overload retrieve(financial_account_token, request_options: {})
        #
        # @param financial_account_token [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig]
        #
        # @see Lithic::Models::FinancialAccounts::CreditConfigurationRetrieveParams
        def retrieve(financial_account_token, params = {})
          @client.request(
            method: :get,
            path: ["v1/financial_accounts/%1$s/credit_configuration", financial_account_token],
            model: Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig,
            options: params[:request_options]
          )
        end

        # Update an account's credit configuration
        #
        # @overload update(financial_account_token, credit_limit: nil, credit_product_token: nil, external_bank_account_token: nil, tier: nil, request_options: {})
        #
        # @param financial_account_token [String]
        # @param credit_limit [Integer]
        # @param credit_product_token [String]
        # @param external_bank_account_token [String]
        # @param tier [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig]
        #
        # @see Lithic::Models::FinancialAccounts::CreditConfigurationUpdateParams
        def update(financial_account_token, params = {})
          parsed, options = Lithic::Models::FinancialAccounts::CreditConfigurationUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["v1/financial_accounts/%1$s/credit_configuration", financial_account_token],
            body: parsed,
            model: Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig,
            options: options
          )
        end

        # @api private
        #
        # @param client [Lithic::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
