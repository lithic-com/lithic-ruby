# frozen_string_literal: true

module Lithic
  module Resources
    class FinancialAccounts
      class Balances
        # Get the balances for a given financial account.
        #
        # @param financial_account_token [String] Globally unique identifier for financial account.
        #
        # @param params [Lithic::Models::FinancialAccounts::BalanceListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Time] :balance_date UTC date of the balance to retrieve. Defaults to latest available balance
        #
        #   @option params [String] :last_transaction_event_token Balance after a given financial event occured. For example, passing the
        #     event_token of a $5 CARD_CLEARING financial event will return a balance
        #     decreased by $5
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::SinglePage<Lithic::Models::FinancialAccounts::BalanceListResponse>]
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

        # @param client [Lithic::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
