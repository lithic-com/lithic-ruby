# frozen_string_literal: true

module Lithic
  module Resources
    class Cards
      class FinancialTransactions
        # Get the card financial transaction for the provided token.
        #
        # @overload retrieve(financial_transaction_token, card_token:, request_options: {})
        #
        # @param financial_transaction_token [String]
        # @param card_token [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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
        # @overload list(card_token, begin_: nil, category: nil, end_: nil, ending_before: nil, result: nil, starting_after: nil, status: nil, request_options: {})
        #
        # @param card_token [String]
        # @param begin_ [Time]
        # @param category [Symbol, Lithic::Models::Cards::FinancialTransactionListParams::Category]
        # @param end_ [Time]
        # @param ending_before [String]
        # @param result [Symbol, Lithic::Models::Cards::FinancialTransactionListParams::Result]
        # @param starting_after [String]
        # @param status [Symbol, Lithic::Models::Cards::FinancialTransactionListParams::Status]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Internal::SinglePage<Lithic::Models::FinancialTransaction>]
        #
        # @see Lithic::Models::Cards::FinancialTransactionListParams
        def list(card_token, params = {})
          parsed, options = Lithic::Models::Cards::FinancialTransactionListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/cards/%1$s/financial_transactions", card_token],
            query: parsed,
            page: Lithic::Internal::SinglePage,
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
