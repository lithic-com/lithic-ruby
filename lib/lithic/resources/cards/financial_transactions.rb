# frozen_string_literal: true

module Lithic
  module Resources
    class Cards
      class FinancialTransactions
        # Get the card financial transaction for the provided token.
        #
        # @param financial_transaction_token [String] Globally unique identifier for financial transaction token.
        #
        # @param params [Lithic::Models::Cards::FinancialTransactionRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :card_token
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::FinancialTransaction]
        #
        # @see Lithic::Models::Cards::FinancialTransactionRetrieveParams
        def retrieve(financial_transaction_token, params)
          parsed, options = Lithic::Models::Cards::FinancialTransactionRetrieveParams.dump_request(params)
          card_token =
            parsed.delete(:card_token) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/cards/%1$s/financial_transactions/%2$s", card_token, financial_transaction_token],
            model: Lithic::Models::FinancialTransaction,
            options: options
          )
        end

        # List the financial transactions for a given card.
        #
        # @param card_token [String]
        #
        # @param params [Lithic::Models::Cards::FinancialTransactionListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Time] :begin_ Date string in RFC 3339 format. Only entries created after the specified time
        #     will be included. UTC time zone.
        #
        #   @option params [Symbol, Lithic::Models::Cards::FinancialTransactionListParams::Category] :category Financial Transaction category to be returned.
        #
        #   @option params [Time] :end_ Date string in RFC 3339 format. Only entries created before the specified time
        #     will be included. UTC time zone.
        #
        #   @option params [String] :ending_before A cursor representing an item's token before which a page of results should end.
        #     Used to retrieve the previous page of results before this item.
        #
        #   @option params [Symbol, Lithic::Models::Cards::FinancialTransactionListParams::Result] :result Financial Transaction result to be returned.
        #
        #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
        #     begin. Used to retrieve the next page of results after this item.
        #
        #   @option params [Symbol, Lithic::Models::Cards::FinancialTransactionListParams::Status] :status Financial Transaction status to be returned.
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::SinglePage<Lithic::Models::FinancialTransaction>]
        #
        # @see Lithic::Models::Cards::FinancialTransactionListParams
        def list(card_token, params = {})
          parsed, options = Lithic::Models::Cards::FinancialTransactionListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/cards/%1$s/financial_transactions", card_token],
            query: parsed,
            page: Lithic::SinglePage,
            model: Lithic::Models::FinancialTransaction,
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
