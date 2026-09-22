# typed: strong

module Lithic
  module Resources
    class FinancialAccounts
      class InstallmentPlans
        class Statements
          # Get a specific statement snapshot for a given installment plan.
          sig do
            params(
              statement_token: String,
              financial_account_token: String,
              installment_plan_token: String,
              request_options: Lithic::RequestOptions::OrHash
            ).returns(
              Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement
            )
          end
          def retrieve(
            # Globally unique identifier for statement.
            statement_token,
            # Globally unique identifier for financial account.
            financial_account_token:,
            # Globally unique identifier for installment plan.
            installment_plan_token:,
            request_options: {}
          )
          end

          # List the statement snapshots for a given installment plan.
          sig do
            params(
              installment_plan_token: String,
              financial_account_token: String,
              begin_: Date,
              end_: Date,
              ending_before: String,
              page_size: Integer,
              starting_after: String,
              state:
                T.nilable(
                  Lithic::FinancialAccounts::InstallmentPlans::StatementListParams::State::OrSymbol
                ),
              request_options: Lithic::RequestOptions::OrHash
            ).returns(
              Lithic::Internal::CursorPage[
                Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement
              ]
            )
          end
          def list(
            # Path param: Globally unique identifier for installment plan.
            installment_plan_token,
            # Path param: Globally unique identifier for financial account.
            financial_account_token:,
            # Query param: Date string in RFC 3339 format. Only entries created after the
            # specified date will be included.
            begin_: nil,
            # Query param: Date string in RFC 3339 format. Only entries created before the
            # specified date will be included.
            end_: nil,
            # Query param: A cursor representing an item's token before which a page of
            # results should end. Used to retrieve the previous page of results before this
            # item.
            ending_before: nil,
            # Query param: Page size (for pagination).
            page_size: nil,
            # Query param: A cursor representing an item's token after which a page of results
            # should begin. Used to retrieve the next page of results after this item.
            starting_after: nil,
            # Query param: Only snapshots in which the plan was in this state will be
            # included.
            state: nil,
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
