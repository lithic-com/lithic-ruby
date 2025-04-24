# frozen_string_literal: true

module Lithic
  module Resources
    class Cards
      class AggregateBalances
        # Get the aggregated card balance across all end-user accounts.
        #
        # @overload list(account_token: nil, business_account_token: nil, request_options: {})
        #
        # @param account_token [String] Cardholder to retrieve aggregate balances for.
        #
        # @param business_account_token [String] Business to retrieve aggregate balances for.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Internal::SinglePage<Lithic::Models::Cards::AggregateBalanceListResponse>]
        #
        # @see Lithic::Models::Cards::AggregateBalanceListParams
        def list(params = {})
          parsed, options = Lithic::Models::Cards::AggregateBalanceListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "v1/cards/aggregate_balances",
            query: parsed,
            page: Lithic::Internal::SinglePage,
            model: Lithic::Models::Cards::AggregateBalanceListResponse,
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
