# frozen_string_literal: true

module Lithic
  module Resources
    class FinancialAccounts
      class Statements
        # @return [Lithic::Resources::FinancialAccounts::Statements::LineItems]
        attr_reader :line_items

        # Get a specific statement for a given financial account.
        #
        # @overload retrieve(statement_token, financial_account_token:, request_options: {})
        #
        # @param statement_token [String]
        # @param financial_account_token [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::FinancialAccounts::Statement]
        #
        # @see Lithic::Models::FinancialAccounts::StatementRetrieveParams
        def retrieve(statement_token, params)
          parsed, options = Lithic::Models::FinancialAccounts::StatementRetrieveParams.dump_request(params)
          financial_account_token =
            parsed.delete(:financial_account_token) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/financial_accounts/%1$s/statements/%2$s", financial_account_token, statement_token],
            model: Lithic::Models::FinancialAccounts::Statement,
            options: options
          )
        end

        # List the statements for a given financial account.
        #
        # @overload list(financial_account_token, begin_: nil, end_: nil, ending_before: nil, include_initial_statements: nil, page_size: nil, starting_after: nil, request_options: {})
        #
        # @param financial_account_token [String]
        # @param begin_ [Date]
        # @param end_ [Date]
        # @param ending_before [String]
        # @param include_initial_statements [Boolean]
        # @param page_size [Integer]
        # @param starting_after [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::CursorPage<Lithic::Models::FinancialAccounts::Statement>]
        #
        # @see Lithic::Models::FinancialAccounts::StatementListParams
        def list(financial_account_token, params = {})
          parsed, options = Lithic::Models::FinancialAccounts::StatementListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/financial_accounts/%1$s/statements", financial_account_token],
            query: parsed,
            page: Lithic::CursorPage,
            model: Lithic::Models::FinancialAccounts::Statement,
            options: options
          )
        end

        # @api private
        #
        # @param client [Lithic::Client]
        def initialize(client:)
          @client = client
          @line_items = Lithic::Resources::FinancialAccounts::Statements::LineItems.new(client: client)
        end
      end
    end
  end
end
