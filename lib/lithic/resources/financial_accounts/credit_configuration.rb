# frozen_string_literal: true

module Lithic
  module Resources
    class FinancialAccounts
      class CreditConfiguration
        # Get an Account's credit configuration
        #
        # @overload retrieve(financial_account_token, request_options: {})
        #
        # @param financial_account_token [String] Globally unique identifier for financial account.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig]
        #
        # @see Lithic::Models::FinancialAccounts::CreditConfigurationRetrieveParams
        def retrieve(financial_account_token, params = {})
          @client.request(
            method: :get,
            path: ["v1/financial_accounts/%1$s/credit_configuration", financial_account_token],
            model: Lithic::FinancialAccounts::FinancialAccountCreditConfig,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::FinancialAccounts::CreditConfigurationUpdateParams} for more
        # details.
        #
        # Update an account's credit configuration. A credit product can only be attached
        # while the financial account is in the `PENDING` state; once a credit product has
        # been assigned the account transitions to `OPEN` and `credit_product_token` can
        # no longer be changed
        #
        # @overload update(financial_account_token, auto_collection_configuration: nil, credit_limit: nil, credit_product_token: nil, external_bank_account_token: nil, tier: nil, request_options: {})
        #
        # @param financial_account_token [String] Globally unique identifier for financial account.
        #
        # @param auto_collection_configuration [Lithic::Models::FinancialAccounts::CreditConfigurationUpdateParams::AutoCollectionConfiguration]
        #
        # @param credit_limit [Integer]
        #
        # @param credit_product_token [String] Globally unique identifier for the credit product. This can only be set
        #
        # @param external_bank_account_token [String]
        #
        # @param tier [String] Tier to assign to a financial account
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig]
        #
        # @see Lithic::Models::FinancialAccounts::CreditConfigurationUpdateParams
        def update(financial_account_token, params = {})
          parsed, options = Lithic::FinancialAccounts::CreditConfigurationUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["v1/financial_accounts/%1$s/credit_configuration", financial_account_token],
            body: parsed,
            model: Lithic::FinancialAccounts::FinancialAccountCreditConfig,
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
