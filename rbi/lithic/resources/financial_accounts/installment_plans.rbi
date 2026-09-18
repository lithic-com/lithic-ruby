# typed: strong

module Lithic
  module Resources
    class FinancialAccounts
      class InstallmentPlans
        # Get a specific installment plan for a given financial account.
        sig do
          params(
            installment_plan_token: String,
            financial_account_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::FinancialAccounts::InstallmentPlan)
        end
        def retrieve(
          # Globally unique identifier for installment plan.
          installment_plan_token,
          # Globally unique identifier for financial account.
          financial_account_token:,
          request_options: {}
        )
        end

        # List the installment plans for a given financial account.
        sig do
          params(
            financial_account_token: String,
            ending_before: String,
            page_size: Integer,
            starting_after: String,
            state:
              T.nilable(
                Lithic::FinancialAccounts::InstallmentPlanListParams::State::OrSymbol
              ),
            request_options: Lithic::RequestOptions::OrHash
          ).returns(
            Lithic::Internal::CursorPage[
              Lithic::FinancialAccounts::InstallmentPlan
            ]
          )
        end
        def list(
          # Globally unique identifier for financial account.
          financial_account_token,
          # A cursor representing an item's token before which a page of results should end.
          # Used to retrieve the previous page of results before this item.
          ending_before: nil,
          # Page size (for pagination).
          page_size: nil,
          # A cursor representing an item's token after which a page of results should
          # begin. Used to retrieve the next page of results after this item.
          starting_after: nil,
          # Only installment plans in this state will be included.
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
