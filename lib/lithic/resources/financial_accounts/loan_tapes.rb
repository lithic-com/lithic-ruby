# frozen_string_literal: true

module Lithic
  module Resources
    class FinancialAccounts
      class LoanTapes
        # Get a specific loan tape for a given financial account.
        #
        # @overload retrieve(loan_tape_token, financial_account_token:, request_options: {})
        #
        # @param loan_tape_token [String] Globally unique identifier for loan tape.
        #
        # @param financial_account_token [String] Globally unique identifier for financial account.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::FinancialAccounts::LoanTape]
        #
        # @see Lithic::Models::FinancialAccounts::LoanTapeRetrieveParams
        def retrieve(loan_tape_token, params)
          parsed, options = Lithic::FinancialAccounts::LoanTapeRetrieveParams.dump_request(params)
          financial_account_token =
            parsed.delete(:financial_account_token) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/financial_accounts/%1$s/loan_tapes/%2$s", financial_account_token, loan_tape_token],
            model: Lithic::FinancialAccounts::LoanTape,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::FinancialAccounts::LoanTapeListParams} for more details.
        #
        # List the loan tapes for a given financial account.
        #
        # @overload list(financial_account_token, begin_: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
        #
        # @param financial_account_token [String] Globally unique identifier for financial account.
        #
        # @param begin_ [Date] Date string in RFC 3339 format. Only entries created after the specified date wi
        #
        # @param end_ [Date] Date string in RFC 3339 format. Only entries created before the specified date w
        #
        # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
        #
        # @param page_size [Integer] Page size (for pagination).
        #
        # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Internal::CursorPage<Lithic::FinancialAccounts::LoanTape>]
        #
        # @see Lithic::Models::FinancialAccounts::LoanTapeListParams
        def list(financial_account_token, params = {})
          parsed, options = Lithic::FinancialAccounts::LoanTapeListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/financial_accounts/%1$s/loan_tapes", financial_account_token],
            query: parsed.transform_keys(begin_: "begin", end_: "end"),
            page: Lithic::Internal::CursorPage,
            model: Lithic::FinancialAccounts::LoanTape,
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
