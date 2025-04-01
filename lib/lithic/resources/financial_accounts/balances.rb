# frozen_string_literal: true

module Lithic
  module Resources
    class FinancialAccounts
      class Balances
        # Get the balances for a given financial account.
        #
        # @overload list(financial_account_token, balance_date: nil, last_transaction_event_token: nil, request_options: {})
        #
        # @param financial_account_token [String]
        # @param balance_date [Time]
        # @param last_transaction_event_token [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::SinglePage<Lithic::Models::FinancialAccounts::BalanceListResponse>]
        #
        # @see Lithic::Models::FinancialAccounts::BalanceListParams
        def list(financial_account_token, params = {})
          parsed, options = Lithic::Models::FinancialAccounts::BalanceListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/financial_accounts/%1$s/balances", financial_account_token],
            query: parsed,
            page: Lithic::SinglePage,
            model: Lithic::Models::FinancialAccounts::BalanceListResponse,
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
