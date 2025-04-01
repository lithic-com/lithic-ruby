# frozen_string_literal: true

module Lithic
  module Resources
    class FinancialAccounts
      class LoanTapes
        # Get a specific loan tape for a given financial account.
        #
        # @overload retrieve(loan_tape_token, financial_account_token:, request_options: {})
        #
        # @param loan_tape_token [String]
        # @param financial_account_token [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::FinancialAccounts::LoanTape]
        #
        # @see Lithic::Models::FinancialAccounts::LoanTapeRetrieveParams
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
        # @overload list(financial_account_token, begin_: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
        #
        # @param financial_account_token [String]
        # @param begin_ [Date]
        # @param end_ [Date]
        # @param ending_before [String]
        # @param page_size [Integer]
        # @param starting_after [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::CursorPage<Lithic::Models::FinancialAccounts::LoanTape>]
        #
        # @see Lithic::Models::FinancialAccounts::LoanTapeListParams
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
