# frozen_string_literal: true

module Lithic
  module Resources
    class Cards
      class Balances
        # Get the balances for a given card.
        #
        # @param card_token [String]
        #
        # @param params [Lithic::Models::Cards::BalanceListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Time] :balance_date UTC date of the balance to retrieve. Defaults to latest available balance
        #
        #   @option params [String] :last_transaction_event_token Balance after a given financial event occured. For example, passing the
        #     event_token of a $5 CARD_CLEARING financial event will return a balance
        #     decreased by $5
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::SinglePage<Lithic::Models::Cards::BalanceListResponse>]
        def list(card_token, params = {})
          parsed, options = Lithic::Models::Cards::BalanceListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/cards/%0s/balances", card_token],
            query: parsed,
            page: Lithic::SinglePage,
            model: Lithic::Models::Cards::BalanceListResponse,
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
