# frozen_string_literal: true

module Lithic
  module Resources
    class AggregateBalances
      # Get the aggregated balance across all end-user accounts by financial account
      #   type
      #
      # @param params [Lithic::Models::AggregateBalanceListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, Lithic::Models::AggregateBalanceListParams::FinancialAccountType] :financial_account_type Get the aggregate balance for a given Financial Account type.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::SinglePage<Lithic::Models::AggregateBalance>]
      def list(params = {})
        parsed, options = Lithic::Models::AggregateBalanceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/aggregate_balances",
          query: parsed,
          page: Lithic::SinglePage,
          model: Lithic::Models::AggregateBalance,
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
