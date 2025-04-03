# frozen_string_literal: true

module Lithic
  module Resources
    class FinancialAccounts
      class Statements
        class LineItems
          # List the line items for a given statement within a given financial account.
          #
          # @overload list(statement_token, financial_account_token:, ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
          #
          # @param statement_token [String]
          # @param financial_account_token [String]
          # @param ending_before [String]
          # @param page_size [Integer]
          # @param starting_after [String]
          # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Lithic::Internal::CursorPage<Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data>]
          #
          # @see Lithic::Models::FinancialAccounts::Statements::LineItemListParams
          def list(statement_token, params)
            parsed, options = Lithic::Models::FinancialAccounts::Statements::LineItemListParams.dump_request(params)
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
              model: Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data,
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
