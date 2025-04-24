# frozen_string_literal: true

module Lithic
  module Resources
    class AggregateBalances
      # Get the aggregated balance across all end-user accounts by financial account
      # type
      #
      # @overload list(financial_account_type: nil, request_options: {})
      #
      # @param financial_account_type [Symbol, Lithic::Models::AggregateBalanceListParams::FinancialAccountType] Get the aggregate balance for a given Financial Account type.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::SinglePage<Lithic::Models::AggregateBalance>]
      #
      # @see Lithic::Models::AggregateBalanceListParams
      def list(params = {})
        parsed, options = Lithic::Models::AggregateBalanceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/aggregate_balances",
          query: parsed,
          page: Lithic::Internal::SinglePage,
          model: Lithic::Models::AggregateBalance,
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
