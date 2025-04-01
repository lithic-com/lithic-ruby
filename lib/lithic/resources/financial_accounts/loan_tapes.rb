# frozen_string_literal: true

module Lithic
  module Resources
    class FinancialAccounts
      class LoanTapes
        # Get a specific loan tape for a given financial account.
        #
        # @param loan_tape_token [String] Globally unique identifier for loan tape.
        #
        # @param params [Lithic::Models::FinancialAccounts::LoanTapeRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :financial_account_token Globally unique identifier for financial account.
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::FinancialAccounts::LoanTape]
        def retrieve(loan_tape_token, params)
          parsed, options = Lithic::Models::FinancialAccounts::LoanTapeRetrieveParams.dump_request(params)
          financial_account_token =
            parsed.delete(:financial_account_token) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/financial_accounts/%1$s/loan_tapes/%2$s", financial_account_token, loan_tape_token],
            model: Lithic::Models::FinancialAccounts::LoanTape,
            options: options
          )
        end

        # List the loan tapes for a given financial account.
        #
        # @param financial_account_token [String] Globally unique identifier for financial account.
        #
        # @param params [Lithic::Models::FinancialAccounts::LoanTapeListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Date] :begin_ Date string in RFC 3339 format. Only entries created after the specified date
        #     will be included.
        #
        #   @option params [Date] :end_ Date string in RFC 3339 format. Only entries created before the specified date
        #     will be included.
        #
        #   @option params [String] :ending_before A cursor representing an item's token before which a page of results should end.
        #     Used to retrieve the previous page of results before this item.
        #
        #   @option params [Integer] :page_size Page size (for pagination).
        #
        #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
        #     begin. Used to retrieve the next page of results after this item.
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::CursorPage<Lithic::Models::FinancialAccounts::LoanTape>]
        def list(financial_account_token, params = {})
          parsed, options = Lithic::Models::FinancialAccounts::LoanTapeListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/financial_accounts/%1$s/loan_tapes", financial_account_token],
            query: parsed,
            page: Lithic::CursorPage,
            model: Lithic::Models::FinancialAccounts::LoanTape,
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
