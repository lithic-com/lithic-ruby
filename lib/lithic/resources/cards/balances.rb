# frozen_string_literal: true

module Lithic
  module Resources
    class Cards
      class Balances
        # Some parameter documentations has been truncated, see
        # {Lithic::Models::Cards::BalanceListParams} for more details.
        #
        # Get the balances for a given card.
        #
        # @overload list(card_token, balance_date: nil, last_transaction_event_token: nil, request_options: {})
        #
        # @param card_token [String]
        #
        # @param balance_date [Time] UTC date of the balance to retrieve. Defaults to latest available balance
        #
        # @param last_transaction_event_token [String] Balance after a given financial event occured. ...
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Internal::SinglePage<Lithic::Models::Cards::BalanceListResponse>]
        #
        # @see Lithic::Models::Cards::BalanceListParams
        def list(card_token, params = {})
          parsed, options = Lithic::Models::Cards::BalanceListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/cards/%1$s/balances", card_token],
            query: parsed,
            page: Lithic::Internal::SinglePage,
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
