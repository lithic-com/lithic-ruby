# frozen_string_literal: true

module Lithic
  module Resources
    class Balances
      # Get the balances for a program, business, or a given end-user account
      #
      # @param params [Lithic::Models::BalanceListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_token List balances for all financial accounts of a given account_token.
      #
      #   @option params [Time] :balance_date UTC date and time of the balances to retrieve. Defaults to latest available
      #     balances
      #
      #   @option params [String] :business_account_token List balances for all financial accounts of a given business_account_token.
      #
      #   @option params [Symbol, Lithic::Models::BalanceListParams::FinancialAccountType] :financial_account_type List balances for a given Financial Account type.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::SinglePage<Lithic::Models::Balance>]
      def list(params = {})
        parsed, options = Lithic::Models::BalanceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/balances",
          query: parsed,
          page: Lithic::SinglePage,
          model: Lithic::Models::Balance,
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
