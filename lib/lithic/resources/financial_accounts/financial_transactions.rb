# frozen_string_literal: true

module Lithic
  module Resources
    class FinancialAccounts
      class FinancialTransactions
        # Get the financial transaction for the provided token.
        #
        # @overload retrieve(financial_transaction_token, financial_account_token:, request_options: {})
        #
        # @param financial_transaction_token [String] Globally unique identifier for financial transaction token.
        #
        # @param financial_account_token [String] Globally unique identifier for financial account.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::FinancialTransaction]
        #
        # @see Lithic::Models::FinancialAccounts::FinancialTransactionRetrieveParams
        def retrieve(financial_transaction_token, params)
          parsed, options = Lithic::FinancialAccounts::FinancialTransactionRetrieveParams.dump_request(params)
          financial_account_token =
            parsed.delete(:financial_account_token) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: [
              "v1/financial_accounts/%1$s/financial_transactions/%2$s",
              financial_account_token,
              financial_transaction_token
            ],
            model: Lithic::FinancialTransaction,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::FinancialAccounts::FinancialTransactionListParams} for more
        # details.
        #
        # List the financial transactions for a given financial account.
        #
        # @overload list(financial_account_token, begin_: nil, category: nil, end_: nil, ending_before: nil, result: nil, starting_after: nil, status: nil, request_options: {})
        #
        # @param financial_account_token [String] Globally unique identifier for financial account.
        #
        # @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
        #
        # @param category [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category] Financial Transaction category to be returned.
        #
        # @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
        #
        # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
        #
        # @param result [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result] Financial Transaction result to be returned.
        #
        # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
        #
        # @param status [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status] Financial Transaction status to be returned.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Internal::SinglePage<Lithic::Models::FinancialTransaction>]
        #
        # @see Lithic::Models::FinancialAccounts::FinancialTransactionListParams
        def list(financial_account_token, params = {})
          parsed, options = Lithic::FinancialAccounts::FinancialTransactionListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/financial_accounts/%1$s/financial_transactions", financial_account_token],
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
