# typed: strong

module Lithic
  module Resources
    class FinancialAccounts
      class Statements
        class LineItems
          # List the line items for a given statement within a given financial account.
          sig do
            params(
              statement_token: String,
              financial_account_token: String,
              ending_before: String,
              page_size: Integer,
              starting_after: String,
              request_options: Lithic::RequestOptions::OrHash
            ).returns(
              Lithic::Internal::CursorPage[
                Lithic::FinancialAccounts::Statements::StatementLineItems::Data
              ]
            )
          end
          def list(
            # Path param: Globally unique identifier for statements.
            statement_token,
            # Path param: Globally unique identifier for financial account.
            financial_account_token:,
            # Query param: A cursor representing an item's token before which a page of
            # results should end. Used to retrieve the previous page of results before this
            # item.
            ending_before: nil,
            # Query param: Page size (for pagination).
            page_size: nil,
            # Query param: A cursor representing an item's token after which a page of results
            # should begin. Used to retrieve the next page of results after this item.
            starting_after: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Lithic::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
