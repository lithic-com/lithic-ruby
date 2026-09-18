# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      # @see Lithic::Resources::FinancialAccounts::InstallmentPlans#retrieve
      class InstallmentPlan < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Globally unique identifier for an installment plan
        #
        #   @return [String]
        required :token, String

        # @!attribute closed_at
        #   Date the plan was paid off or cancelled, or null while it is still open
        #
        #   @return [Date, nil]
        required :closed_at, Date, nil?: true

        # @!attribute created
        #   Timestamp of when the installment plan was created
        #
        #   @return [Time]
        required :created, Time

        # @!attribute fee_amount
        #   Enrollment fee charged when the plan was created in cents
        #
        #   @return [Integer]
        required :fee_amount, Integer

        # @!attribute financial_account_token
        #   Globally unique identifier for a financial account
        #
        #   @return [String]
        required :financial_account_token, String

        # @!attribute installment_plan_total
        #   Total owed on the plan in cents, the principal amount plus the enrollment fee
        #
        #   @return [Integer]
        required :installment_plan_total, Integer

        # @!attribute installments
        #   Installments that make up the plan, oldest first
        #
        #   @return [Array<Lithic::Models::FinancialAccounts::InstallmentPlan::Installment>]
        required :installments,
                 -> { Lithic::Internal::Type::ArrayOf[Lithic::FinancialAccounts::InstallmentPlan::Installment] }

        # @!attribute installments_outstanding
        #   Number of installments that still carry a balance
        #
        #   @return [Integer]
        required :installments_outstanding, Integer

        # @!attribute installments_paid
        #   Number of installments that have been paid off
        #
        #   @return [Integer]
        required :installments_paid, Integer

        # @!attribute num_installments
        #   Number of installments the plan is broken into
        #
        #   @return [Integer]
        required :num_installments, Integer

        # @!attribute principal_amount
        #   Balance the plan was opened on in cents, excluding the enrollment fee
        #
        #   @return [Integer]
        required :principal_amount, Integer

        # @!attribute source_amounts
        #   Balance the plan was opened on, broken out by category, or null if it was not
        #   recorded
        #
        #   @return [Lithic::Models::FinancialAccounts::TransactionCategoryBalances, nil]
        required :source_amounts, -> { Lithic::FinancialAccounts::TransactionCategoryBalances }, nil?: true

        # @!attribute source_id
        #   Identifier of the record the plan was opened from, such as the closing statement
        #   for an unpaid balance
        #
        #   @return [String]
        required :source_id, String

        # @!attribute source_type
        #
        #   @return [Symbol, Lithic::Models::FinancialAccounts::InstallmentPlan::SourceType]
        required :source_type, enum: -> { Lithic::FinancialAccounts::InstallmentPlan::SourceType }

        # @!attribute start_date
        #   Date the plan was created
        #
        #   @return [Date]
        required :start_date, Date

        # @!attribute state
        #   State of the installment plan. A plan is REBUILD_IN_PROGRESS while its loan
        #   tapes are being rebuilt, during which its payment totals are being recomputed
        #   and should not be treated as final
        #
        #   @return [Symbol, Lithic::Models::FinancialAccounts::InstallmentPlan::State]
        required :state, enum: -> { Lithic::FinancialAccounts::InstallmentPlan::State }

        # @!attribute total_paid
        #   Amount paid towards the plan to date in cents
        #
        #   @return [Integer]
        required :total_paid, Integer

        # @!attribute updated
        #   Timestamp of when the installment plan was updated
        #
        #   @return [Time]
        required :updated, Time

        # @!method initialize(token:, closed_at:, created:, fee_amount:, financial_account_token:, installment_plan_total:, installments:, installments_outstanding:, installments_paid:, num_installments:, principal_amount:, source_amounts:, source_id:, source_type:, start_date:, state:, total_paid:, updated:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::FinancialAccounts::InstallmentPlan} for more details.
        #
        #   @param token [String] Globally unique identifier for an installment plan
        #
        #   @param closed_at [Date, nil] Date the plan was paid off or cancelled, or null while it is still open
        #
        #   @param created [Time] Timestamp of when the installment plan was created
        #
        #   @param fee_amount [Integer] Enrollment fee charged when the plan was created in cents
        #
        #   @param financial_account_token [String] Globally unique identifier for a financial account
        #
        #   @param installment_plan_total [Integer] Total owed on the plan in cents, the principal amount plus the enrollment fee
        #
        #   @param installments [Array<Lithic::Models::FinancialAccounts::InstallmentPlan::Installment>] Installments that make up the plan, oldest first
        #
        #   @param installments_outstanding [Integer] Number of installments that still carry a balance
        #
        #   @param installments_paid [Integer] Number of installments that have been paid off
        #
        #   @param num_installments [Integer] Number of installments the plan is broken into
        #
        #   @param principal_amount [Integer] Balance the plan was opened on in cents, excluding the enrollment fee
        #
        #   @param source_amounts [Lithic::Models::FinancialAccounts::TransactionCategoryBalances, nil] Balance the plan was opened on, broken out by category, or null if it was not re
        #
        #   @param source_id [String] Identifier of the record the plan was opened from, such as the closing statement
        #
        #   @param source_type [Symbol, Lithic::Models::FinancialAccounts::InstallmentPlan::SourceType]
        #
        #   @param start_date [Date] Date the plan was created
        #
        #   @param state [Symbol, Lithic::Models::FinancialAccounts::InstallmentPlan::State] State of the installment plan. A plan is REBUILD_IN_PROGRESS while its loan tape
        #
        #   @param total_paid [Integer] Amount paid towards the plan to date in cents
        #
        #   @param updated [Time] Timestamp of when the installment plan was updated

        class Installment < Lithic::Internal::Type::BaseModel
          # @!attribute amount_due
          #   Amount the installment was opened for in cents
          #
          #   @return [Integer]
          required :amount_due, Integer

          # @!attribute amount_due_details
          #
          #   @return [Lithic::Models::FinancialAccounts::TransactionCategoryBalances]
          required :amount_due_details, -> { Lithic::FinancialAccounts::TransactionCategoryBalances }

          # @!attribute amount_outstanding
          #   Amount still owed on the installment in cents
          #
          #   @return [Integer]
          required :amount_outstanding, Integer

          # @!attribute amount_outstanding_details
          #
          #   @return [Lithic::Models::FinancialAccounts::TransactionCategoryBalances]
          required :amount_outstanding_details, -> { Lithic::FinancialAccounts::TransactionCategoryBalances }

          # @!attribute amount_paid
          #   Amount paid towards the installment in cents
          #
          #   @return [Integer]
          required :amount_paid, Integer

          # @!attribute amount_paid_details
          #
          #   @return [Lithic::Models::FinancialAccounts::TransactionCategoryBalances]
          required :amount_paid_details, -> { Lithic::FinancialAccounts::TransactionCategoryBalances }

          # @!attribute date_assessed
          #   Date the installment was actually assessed onto the account, or null if it has
          #   not been assessed yet
          #
          #   @return [Date, nil]
          required :date_assessed, Date, nil?: true

          # @!attribute due_date
          #   Date the installment is scheduled to be assessed onto the account
          #
          #   @return [Date]
          required :due_date, Date

          # @!attribute installment_num
          #   Position of this installment within the plan, starting at 0
          #
          #   @return [Integer]
          required :installment_num, Integer

          # @!attribute payment_due_date
          #   Date the installment must be paid by before it is considered past due
          #
          #   @return [Date]
          required :payment_due_date, Date

          # @!attribute payments
          #   Payments applied to this installment, oldest first
          #
          #   @return [Array<Lithic::Models::FinancialAccounts::InstallmentPlan::Installment::Payment>]
          required :payments,
                   -> { Lithic::Internal::Type::ArrayOf[Lithic::FinancialAccounts::InstallmentPlan::Installment::Payment] }

          # @!method initialize(amount_due:, amount_due_details:, amount_outstanding:, amount_outstanding_details:, amount_paid:, amount_paid_details:, date_assessed:, due_date:, installment_num:, payment_due_date:, payments:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::FinancialAccounts::InstallmentPlan::Installment} for more
          #   details.
          #
          #   @param amount_due [Integer] Amount the installment was opened for in cents
          #
          #   @param amount_due_details [Lithic::Models::FinancialAccounts::TransactionCategoryBalances]
          #
          #   @param amount_outstanding [Integer] Amount still owed on the installment in cents
          #
          #   @param amount_outstanding_details [Lithic::Models::FinancialAccounts::TransactionCategoryBalances]
          #
          #   @param amount_paid [Integer] Amount paid towards the installment in cents
          #
          #   @param amount_paid_details [Lithic::Models::FinancialAccounts::TransactionCategoryBalances]
          #
          #   @param date_assessed [Date, nil] Date the installment was actually assessed onto the account, or null if it has n
          #
          #   @param due_date [Date] Date the installment is scheduled to be assessed onto the account
          #
          #   @param installment_num [Integer] Position of this installment within the plan, starting at 0
          #
          #   @param payment_due_date [Date] Date the installment must be paid by before it is considered past due
          #
          #   @param payments [Array<Lithic::Models::FinancialAccounts::InstallmentPlan::Installment::Payment>] Payments applied to this installment, oldest first

          class Payment < Lithic::Internal::Type::BaseModel
            # @!attribute amount
            #   Amount applied to the installment in cents
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute amount_details
            #
            #   @return [Lithic::Models::FinancialAccounts::TransactionCategoryBalances]
            required :amount_details, -> { Lithic::FinancialAccounts::TransactionCategoryBalances }

            # @!attribute date
            #   Date the payment was applied to the installment
            #
            #   @return [Date]
            required :date, Date

            # @!method initialize(amount:, amount_details:, date:)
            #   @param amount [Integer] Amount applied to the installment in cents
            #
            #   @param amount_details [Lithic::Models::FinancialAccounts::TransactionCategoryBalances]
            #
            #   @param date [Date] Date the payment was applied to the installment
          end
        end

        # @see Lithic::Models::FinancialAccounts::InstallmentPlan#source_type
        module SourceType
          extend Lithic::Internal::Type::Enum

          UNPAID_BALANCE = :UNPAID_BALANCE
          TRANSACTION = :TRANSACTION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # State of the installment plan. A plan is REBUILD_IN_PROGRESS while its loan
        # tapes are being rebuilt, during which its payment totals are being recomputed
        # and should not be treated as final
        #
        # @see Lithic::Models::FinancialAccounts::InstallmentPlan#state
        module State
          extend Lithic::Internal::Type::Enum

          PENDING = :PENDING
          ACTIVE = :ACTIVE
          REBUILD_IN_PROGRESS = :REBUILD_IN_PROGRESS
          FULLY_PAID = :FULLY_PAID
          CANCELLED = :CANCELLED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
