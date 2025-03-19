# frozen_string_literal: true

module Lithic
  module Resources
    class FinancialAccounts
      class Statements
        class LineItems
          # List the line items for a given statement within a given financial account.
          #
          # @param statement_token [String] Path param: Globally unique identifier for statements.
          #
          # @param params [Lithic::Models::FinancialAccounts::Statements::LineItemListParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :financial_account_token Path param: Globally unique identifier for financial account.
          #
          #   @option params [String] :ending_before Query param: A cursor representing an item's token before which a page of
          #     results should end. Used to retrieve the previous page of results before this
          #     item.
          #
          #   @option params [Integer] :page_size Query param: Page size (for pagination).
          #
          #   @option params [String] :starting_after Query param: A cursor representing an item's token after which a page of results
          #     should begin. Used to retrieve the next page of results after this item.
          #
          #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Lithic::CursorPage<Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data>]
          def list(statement_token, params)
            parsed, options = Lithic::Models::FinancialAccounts::Statements::LineItemListParams.dump_request(params)
            financial_account_token =
              parsed.delete(:financial_account_token) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: [
                "v1/financial_accounts/%0s/statements/%1s/line_items",
                financial_account_token,
                statement_token
              ],
              query: parsed,
              page: Lithic::CursorPage,
              model: Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data,
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
end
