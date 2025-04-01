# frozen_string_literal: true

module Lithic
  module Resources
    class FinancialAccounts
      class FinancialTransactions
        # Get the financial transaction for the provided token.
        #
        # @param financial_transaction_token [String] Globally unique identifier for financial transaction token.
        #
        # @param params [Lithic::Models::FinancialAccounts::FinancialTransactionRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :financial_account_token Globally unique identifier for financial account.
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::FinancialTransaction]
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
        # @param financial_account_token [String] Globally unique identifier for financial account.
        #
        # @param params [Lithic::Models::FinancialAccounts::FinancialTransactionListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Time] :begin_ Date string in RFC 3339 format. Only entries created after the specified time
        #     will be included. UTC time zone.
        #
        #   @option params [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Category] :category Financial Transaction category to be returned.
        #
        #   @option params [Time] :end_ Date string in RFC 3339 format. Only entries created before the specified time
        #     will be included. UTC time zone.
        #
        #   @option params [String] :ending_before A cursor representing an item's token before which a page of results should end.
        #     Used to retrieve the previous page of results before this item.
        #
        #   @option params [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Result] :result Financial Transaction result to be returned.
        #
        #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
        #     begin. Used to retrieve the next page of results after this item.
        #
        #   @option params [Symbol, Lithic::Models::FinancialAccounts::FinancialTransactionListParams::Status] :status Financial Transaction status to be returned.
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::SinglePage<Lithic::Models::FinancialTransaction>]
        def list(financial_account_token, params = {})
          parsed, options = Lithic::Models::FinancialAccounts::FinancialTransactionListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/financial_accounts/%1$s/financial_transactions", financial_account_token],
            query: parsed,
            page: Lithic::SinglePage,
            model: Lithic::Models::FinancialTransaction,
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
