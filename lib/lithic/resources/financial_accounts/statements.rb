# frozen_string_literal: true

module Lithic
  module Resources
    class FinancialAccounts
      class Statements
        # @return [Lithic::Resources::FinancialAccounts::Statements::LineItems]
        attr_reader :line_items

        # Get a specific statement for a given financial account.
        #
        # @param statement_token [String] Globally unique identifier for statements.
        #
        # @param params [Lithic::Models::FinancialAccounts::StatementRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :financial_account_token Globally unique identifier for financial account.
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
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
        # @param financial_account_token [String] Globally unique identifier for financial account.
        #
        # @param params [Lithic::Models::FinancialAccounts::StatementListParams, Hash{Symbol=>Object}] .
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
        #   @option params [Boolean] :include_initial_statements Whether to include the initial statement. It is not included by default.
        #
        #   @option params [Integer] :page_size Page size (for pagination).
        #
        #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
        #     begin. Used to retrieve the next page of results after this item.
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
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
