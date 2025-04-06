# frozen_string_literal: true

module Lithic
  module Resources
    class FinancialAccounts
      class FinancialTransactions
        # Get the financial transaction for the provided token.
        #
        # @overload retrieve(financial_transaction_token, financial_account_token:, request_options: {})
        #
        # @param financial_transaction_token [String]
        # @param financial_account_token [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::FinancialTransaction]
        #
        # @see Lithic::Models::FinancialAccounts::FinancialTransactionRetrieveParams
        def retrieve(financial_transaction_token, params)
          parsed, options =
            Lithic::Models::FinancialAccounts::FinancialTransactionRetrieveParams.dump_request(params)
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
            model: Lithic::Models::FinancialTransaction,
            options: options
          )
        end

        # List the financial transactions for a given financial account.
        #
        # @overload list(financial_account_token, begin_: nil, category: nil, end_: nil, ending_before: nil, result: nil, starting_after: nil, status: nil, request_options: {})
        #
        # @param financial_account_token [String]
        # @param begin_ [Time]
        # @param category [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category]
        # @param end_ [Time]
        # @param ending_before [String]
        # @param result [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result]
        # @param starting_after [String]
        # @param status [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Internal::SinglePage<Lithic::Models::FinancialTransaction>]
        #
        # @see Lithic::Models::FinancialAccounts::FinancialTransactionListParams
        def list(financial_account_token, params = {})
          parsed, options = Lithic::Models::FinancialAccounts::FinancialTransactionListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/financial_accounts/%1$s/financial_transactions", financial_account_token],
            query: parsed.transform_keys(begin_: "begin", end_: "end"),
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
