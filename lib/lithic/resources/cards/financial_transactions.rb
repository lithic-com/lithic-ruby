# frozen_string_literal: true

module Lithic
  module Resources
    class Cards
      class FinancialTransactions
        # Get the card financial transaction for the provided token.
        #
        # @overload retrieve(financial_transaction_token, card_token:, request_options: {})
        #
        # @param financial_transaction_token [String] Globally unique identifier for financial transaction token.
        #
        # @param card_token [String]
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::FinancialTransaction]
        #
        # @see Lithic::Models::Cards::FinancialTransactionRetrieveParams
        def retrieve(financial_transaction_token, params)
          parsed, options = Lithic::Cards::FinancialTransactionRetrieveParams.dump_request(params)
          card_token =
            parsed.delete(:card_token) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/cards/%1$s/financial_transactions/%2$s", card_token, financial_transaction_token],
            model: Lithic::FinancialTransaction,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::Cards::FinancialTransactionListParams} for more details.
        #
        # List the financial transactions for a given card.
        #
        # @overload list(card_token, begin_: nil, category: nil, end_: nil, ending_before: nil, result: nil, starting_after: nil, status: nil, request_options: {})
        #
        # @param card_token [String]
        #
        # @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
        #
        # @param category [Symbol, Lithic::Cards::FinancialTransactionListParams::Category] Financial Transaction category to be returned.
        #
        # @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
        #
        # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
        #
        # @param result [Symbol, Lithic::Cards::FinancialTransactionListParams::Result] Financial Transaction result to be returned.
        #
        # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
        #
        # @param status [Symbol, Lithic::Cards::FinancialTransactionListParams::Status] Financial Transaction status to be returned.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Internal::SinglePage<Lithic::FinancialTransaction>]
        #
        # @see Lithic::Models::Cards::FinancialTransactionListParams
        def list(card_token, params = {})
          parsed, options = Lithic::Cards::FinancialTransactionListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/cards/%1$s/financial_transactions", card_token],
            query: parsed.transform_keys(begin_: "begin", end_: "end"),
            page: Lithic::Internal::SinglePage,
            model: Lithic::FinancialTransaction,
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
