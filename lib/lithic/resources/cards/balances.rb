# frozen_string_literal: true

module Lithic
  module Resources
    class Cards
      class Balances
        # Get the balances for a given card.
        #
        # @overload list(card_token, balance_date: nil, last_transaction_event_token: nil, request_options: {})
        #
        # @param card_token [String]
        # @param balance_date [Time]
        # @param last_transaction_event_token [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::SinglePage<Lithic::Models::Cards::BalanceListResponse>]
        #
        # @see Lithic::Models::Cards::BalanceListParams
        def list(card_token, params = {})
          parsed, options = Lithic::Models::Cards::BalanceListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/cards/%1$s/balances", card_token],
            query: parsed,
            page: Lithic::SinglePage,
            model: Lithic::Models::Cards::BalanceListResponse,
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
