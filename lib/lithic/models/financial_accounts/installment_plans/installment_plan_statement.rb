# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      module InstallmentPlans
        # @see Lithic::Resources::FinancialAccounts::InstallmentPlans::Statements#retrieve
        class InstallmentPlanStatement < Lithic::Internal::Type::BaseModel
          # @!attribute token
          #   Globally unique identifier for this snapshot, which is the token of the
          #   statement it is attached to. A plan is snapshotted at most once per statement,
          #   so the statement identifies the snapshot within the plan. Pass it as a
          #   pagination cursor
          #
          #   @return [String]
          required :token, String

          # @!attribute fee_amount
          #   Enrollment fee charged when the plan was created in cents
          #
          #   @return [Integer]
          required :fee_amount, Integer

          # @!attribute installment_plan_token
          #   Globally unique identifier for the installment plan this snapshot is of
          #
          #   @return [String]
          required :installment_plan_token, String

          # @!attribute installment_plan_total
          #   Total owed on the plan in cents, the principal amount plus the enrollment fee
          #
          #   @return [Integer]
          required :installment_plan_total, Integer

          # @!attribute installments
          #   Installments that make up the plan, oldest first
          #
          #   @return [Array<Lithic::Models::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::Installment>]
          required :installments,
                   -> { Lithic::Internal::Type::ArrayOf[Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::Installment] }

          # @!attribute installments_outstanding
          #   Number of installments that still carried a balance as of this statement
          #
          #   @return [Integer]
          required :installments_outstanding, Integer

          # @!attribute installments_paid
          #   Number of installments that had been paid off as of this statement
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

          # @!attribute source_type
          #
          #   @return [Symbol, Lithic::Models::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::SourceType]
          required :source_type,
                   enum: -> { Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::SourceType }

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
          #   @return [Symbol, Lithic::Models::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::State]
          required :state, enum: -> { Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::State }

          # @!attribute total_paid
          #   Amount paid towards the plan as of this statement in cents
          #
          #   @return [Integer]
          required :total_paid, Integer

          # @!method initialize(token:, fee_amount:, installment_plan_token:, installment_plan_total:, installments:, installments_outstanding:, installments_paid:, num_installments:, principal_amount:, source_type:, start_date:, state:, total_paid:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement}
          #   for more details.
          #
          #   An immutable snapshot of an installment plan as of the statement it is attached
          #   to. Lithic cuts one per open plan when a statement is generated and never
          #   reissues it
          #
          #   @param token [String] Globally unique identifier for this snapshot, which is the token of the statemen
          #
          #   @param fee_amount [Integer] Enrollment fee charged when the plan was created in cents
          #
          #   @param installment_plan_token [String] Globally unique identifier for the installment plan this snapshot is of
          #
          #   @param installment_plan_total [Integer] Total owed on the plan in cents, the principal amount plus the enrollment fee
          #
          #   @param installments [Array<Lithic::Models::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::Installment>] Installments that make up the plan, oldest first
          #
          #   @param installments_outstanding [Integer] Number of installments that still carried a balance as of this statement
          #
          #   @param installments_paid [Integer] Number of installments that had been paid off as of this statement
          #
          #   @param num_installments [Integer] Number of installments the plan is broken into
          #
          #   @param principal_amount [Integer] Balance the plan was opened on in cents, excluding the enrollment fee
          #
          #   @param source_type [Symbol, Lithic::Models::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::SourceType]
          #
          #   @param start_date [Date] Date the plan was created
          #
          #   @param state [Symbol, Lithic::Models::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::State] State of the installment plan. A plan is REBUILD_IN_PROGRESS while its loan tape
          #
          #   @param total_paid [Integer] Amount paid towards the plan as of this statement in cents

          class Installment < Lithic::Internal::Type::BaseModel
            # @!attribute amount_due
            #   Amount the installment was opened for in cents
            #
            #   @return [Integer]
            required :amount_due, Integer

            # @!attribute amount_due_details
            #
            #   @return [Lithic::Models::FinancialAccounts::CategoryBalances]
            required :amount_due_details, -> { Lithic::FinancialAccounts::CategoryBalances }

            # @!attribute amount_outstanding
            #   Amount still owed on the installment in cents
            #
            #   @return [Integer]
            required :amount_outstanding, Integer

            # @!attribute amount_outstanding_details
            #
            #   @return [Lithic::Models::FinancialAccounts::CategoryBalances]
            required :amount_outstanding_details, -> { Lithic::FinancialAccounts::CategoryBalances }

            # @!attribute amount_paid
            #   Amount paid towards the installment in cents
            #
            #   @return [Integer]
            required :amount_paid, Integer

            # @!attribute amount_paid_details
            #
            #   @return [Lithic::Models::FinancialAccounts::CategoryBalances]
            required :amount_paid_details, -> { Lithic::FinancialAccounts::CategoryBalances }

            # @!attribute date_assessed
            #   Date the installment was actually assessed onto the account, or null if it had
            #   not been assessed as of this statement
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
            #   @return [Array<Lithic::Models::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::Installment::Payment>]
            required :payments,
                     -> { Lithic::Internal::Type::ArrayOf[Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::Installment::Payment] }

            # @!method initialize(amount_due:, amount_due_details:, amount_outstanding:, amount_outstanding_details:, amount_paid:, amount_paid_details:, date_assessed:, due_date:, installment_num:, payment_due_date:, payments:)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::Installment}
            #   for more details.
            #
            #   One installment of a plan as of the statement. Amounts are totalled across
            #   transaction categories rather than broken out by them, which the installment
            #   plan endpoint does
            #
            #   @param amount_due [Integer] Amount the installment was opened for in cents
            #
            #   @param amount_due_details [Lithic::Models::FinancialAccounts::CategoryBalances]
            #
            #   @param amount_outstanding [Integer] Amount still owed on the installment in cents
            #
            #   @param amount_outstanding_details [Lithic::Models::FinancialAccounts::CategoryBalances]
            #
            #   @param amount_paid [Integer] Amount paid towards the installment in cents
            #
            #   @param amount_paid_details [Lithic::Models::FinancialAccounts::CategoryBalances]
            #
            #   @param date_assessed [Date, nil] Date the installment was actually assessed onto the account, or null if it had n
            #
            #   @param due_date [Date] Date the installment is scheduled to be assessed onto the account
            #
            #   @param installment_num [Integer] Position of this installment within the plan, starting at 0
            #
            #   @param payment_due_date [Date] Date the installment must be paid by before it is considered past due
            #
            #   @param payments [Array<Lithic::Models::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::Installment::Payment>] Payments applied to this installment, oldest first

            class Payment < Lithic::Internal::Type::BaseModel
              # @!attribute amount
              #   Amount applied to the installment in cents
              #
              #   @return [Integer]
              required :amount, Integer

              # @!attribute date
              #   Date the payment was applied to the installment
              #
              #   @return [Date]
              required :date, Date

              # @!method initialize(amount:, date:)
              #   @param amount [Integer] Amount applied to the installment in cents
              #
              #   @param date [Date] Date the payment was applied to the installment
            end
          end

          # @see Lithic::Models::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement#source_type
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
          # @see Lithic::Models::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement#state
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

      InstallmentPlanStatement = InstallmentPlans::InstallmentPlanStatement
    end
  end
end
