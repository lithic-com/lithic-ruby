# frozen_string_literal: true

module Lithic
  module Resources
    class FinancialAccounts
      class Statements
        class LineItems
          # Some parameter documentations has been truncated, see
          # {Lithic::Models::FinancialAccounts::Statements::LineItemListParams} for more
          # details.
          #
          # List the line items for a given statement within a given financial account.
          #
          # @overload list(statement_token, financial_account_token:, ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
          #
          # @param statement_token [String] Path param: Globally unique identifier for statements.
          #
          # @param financial_account_token [String] Path param: Globally unique identifier for financial account.
          #
          # @param ending_before [String] Query param: A cursor representing an item's token before which a page of result
          #
          # @param page_size [Integer] Query param: Page size (for pagination).
          #
          # @param starting_after [String] Query param: A cursor representing an item's token after which a page of results
          #
          # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Lithic::Internal::CursorPage<Lithic::FinancialAccounts::Statements::StatementLineItems::Data>]
          #
          # @see Lithic::Models::FinancialAccounts::Statements::LineItemListParams
          def list(statement_token, params)
            parsed, options = Lithic::FinancialAccounts::Statements::LineItemListParams.dump_request(params)
            financial_account_token =
              parsed.delete(:financial_account_token) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: [
                "v1/financial_accounts/%1$s/statements/%2$s/line_items",
                financial_account_token,
                statement_token
              ],
              query: parsed,
              page: Lithic::Internal::CursorPage,
              model: Lithic::FinancialAccounts::Statements::StatementLineItems::Data,
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
end
