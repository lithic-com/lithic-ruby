# frozen_string_literal: true

module Lithic
  module Resources
    class Cards
      class AggregateBalances
        # Get the aggregated card balance across all end-user accounts.
        #
        # @param params [Lithic::Models::Cards::AggregateBalanceListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :account_token Cardholder to retrieve aggregate balances for.
        #
        #   @option params [String] :business_account_token Business to retrieve aggregate balances for.
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::SinglePage<Lithic::Models::Cards::AggregateBalanceListResponse>]
        #
        # @see Lithic::Models::Cards::AggregateBalanceListParams
        def list(params = {})
          parsed, options = Lithic::Models::Cards::AggregateBalanceListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "v1/cards/aggregate_balances",
            query: parsed,
            page: Lithic::SinglePage,
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
