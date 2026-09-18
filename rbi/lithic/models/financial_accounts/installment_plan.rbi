# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class InstallmentPlan < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::FinancialAccounts::InstallmentPlan,
              Lithic::Internal::AnyHash
            )
          end

        # Globally unique identifier for an installment plan
        sig { returns(String) }
        attr_accessor :token

        # Date the plan was paid off or cancelled, or null while it is still open
        sig { returns(T.nilable(Date)) }
        attr_accessor :closed_at

        # Timestamp of when the installment plan was created
        sig { returns(Time) }
        attr_accessor :created

        # Enrollment fee charged when the plan was created in cents
        sig { returns(Integer) }
        attr_accessor :fee_amount

        # Globally unique identifier for a financial account
        sig { returns(String) }
        attr_accessor :financial_account_token

        # Total owed on the plan in cents, the principal amount plus the enrollment fee
        sig { returns(Integer) }
        attr_accessor :installment_plan_total

        # Installments that make up the plan, oldest first
        sig do
          returns(
            T::Array[Lithic::FinancialAccounts::InstallmentPlan::Installment]
          )
        end
        attr_accessor :installments

        # Number of installments that still carry a balance
        sig { returns(Integer) }
        attr_accessor :installments_outstanding

        # Number of installments that have been paid off
        sig { returns(Integer) }
        attr_accessor :installments_paid

        # Number of installments the plan is broken into
        sig { returns(Integer) }
        attr_accessor :num_installments

        # Balance the plan was opened on in cents, excluding the enrollment fee
        sig { returns(Integer) }
        attr_accessor :principal_amount

        # Balance the plan was opened on, broken out by category, or null if it was not
        # recorded
        sig do
          returns(
            T.nilable(Lithic::FinancialAccounts::TransactionCategoryBalances)
          )
        end
        attr_reader :source_amounts

        sig do
          params(
            source_amounts:
              T.nilable(
                Lithic::FinancialAccounts::TransactionCategoryBalances::OrHash
              )
          ).void
        end
        attr_writer :source_amounts

        # Identifier of the record the plan was opened from, such as the closing statement
        # for an unpaid balance
        sig { returns(String) }
        attr_accessor :source_id

        sig do
          returns(
            Lithic::FinancialAccounts::InstallmentPlan::SourceType::TaggedSymbol
          )
        end
        attr_accessor :source_type

        # Date the plan was created
        sig { returns(Date) }
        attr_accessor :start_date

        # State of the installment plan. A plan is REBUILD_IN_PROGRESS while its loan
        # tapes are being rebuilt, during which its payment totals are being recomputed
        # and should not be treated as final
        sig do
          returns(
            Lithic::FinancialAccounts::InstallmentPlan::State::TaggedSymbol
          )
        end
        attr_accessor :state

        # Amount paid towards the plan to date in cents
        sig { returns(Integer) }
        attr_accessor :total_paid

        # Timestamp of when the installment plan was updated
        sig { returns(Time) }
        attr_accessor :updated

        sig do
          params(
            token: String,
            closed_at: T.nilable(Date),
            created: Time,
            fee_amount: Integer,
            financial_account_token: String,
            installment_plan_total: Integer,
            installments:
              T::Array[
                Lithic::FinancialAccounts::InstallmentPlan::Installment::OrHash
              ],
            installments_outstanding: Integer,
            installments_paid: Integer,
            num_installments: Integer,
            principal_amount: Integer,
            source_amounts:
              T.nilable(
                Lithic::FinancialAccounts::TransactionCategoryBalances::OrHash
              ),
            source_id: String,
            source_type:
              Lithic::FinancialAccounts::InstallmentPlan::SourceType::OrSymbol,
            start_date: Date,
            state: Lithic::FinancialAccounts::InstallmentPlan::State::OrSymbol,
            total_paid: Integer,
            updated: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier for an installment plan
          token:,
          # Date the plan was paid off or cancelled, or null while it is still open
          closed_at:,
          # Timestamp of when the installment plan was created
          created:,
          # Enrollment fee charged when the plan was created in cents
          fee_amount:,
          # Globally unique identifier for a financial account
          financial_account_token:,
          # Total owed on the plan in cents, the principal amount plus the enrollment fee
          installment_plan_total:,
          # Installments that make up the plan, oldest first
          installments:,
          # Number of installments that still carry a balance
          installments_outstanding:,
          # Number of installments that have been paid off
          installments_paid:,
          # Number of installments the plan is broken into
          num_installments:,
          # Balance the plan was opened on in cents, excluding the enrollment fee
          principal_amount:,
          # Balance the plan was opened on, broken out by category, or null if it was not
          # recorded
          source_amounts:,
          # Identifier of the record the plan was opened from, such as the closing statement
          # for an unpaid balance
          source_id:,
          source_type:,
          # Date the plan was created
          start_date:,
          # State of the installment plan. A plan is REBUILD_IN_PROGRESS while its loan
          # tapes are being rebuilt, during which its payment totals are being recomputed
          # and should not be treated as final
          state:,
          # Amount paid towards the plan to date in cents
          total_paid:,
          # Timestamp of when the installment plan was updated
          updated:
        )
        end

        sig do
          override.returns(
            {
              token: String,
              closed_at: T.nilable(Date),
              created: Time,
              fee_amount: Integer,
              financial_account_token: String,
              installment_plan_total: Integer,
              installments:
                T::Array[
                  Lithic::FinancialAccounts::InstallmentPlan::Installment
                ],
              installments_outstanding: Integer,
              installments_paid: Integer,
              num_installments: Integer,
              principal_amount: Integer,
              source_amounts:
                T.nilable(
                  Lithic::FinancialAccounts::TransactionCategoryBalances
                ),
              source_id: String,
              source_type:
                Lithic::FinancialAccounts::InstallmentPlan::SourceType::TaggedSymbol,
              start_date: Date,
              state:
                Lithic::FinancialAccounts::InstallmentPlan::State::TaggedSymbol,
              total_paid: Integer,
              updated: Time
            }
          )
        end
        def to_hash
        end

        class Installment < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::FinancialAccounts::InstallmentPlan::Installment,
                Lithic::Internal::AnyHash
              )
            end

          # Amount the installment was opened for in cents
          sig { returns(Integer) }
          attr_accessor :amount_due

          sig do
            returns(Lithic::FinancialAccounts::TransactionCategoryBalances)
          end
          attr_reader :amount_due_details

          sig do
            params(
              amount_due_details:
                Lithic::FinancialAccounts::TransactionCategoryBalances::OrHash
            ).void
          end
          attr_writer :amount_due_details

          # Amount still owed on the installment in cents
          sig { returns(Integer) }
          attr_accessor :amount_outstanding

          sig do
            returns(Lithic::FinancialAccounts::TransactionCategoryBalances)
          end
          attr_reader :amount_outstanding_details

          sig do
            params(
              amount_outstanding_details:
                Lithic::FinancialAccounts::TransactionCategoryBalances::OrHash
            ).void
          end
          attr_writer :amount_outstanding_details

          # Amount paid towards the installment in cents
          sig { returns(Integer) }
          attr_accessor :amount_paid

          sig do
            returns(Lithic::FinancialAccounts::TransactionCategoryBalances)
          end
          attr_reader :amount_paid_details

          sig do
            params(
              amount_paid_details:
                Lithic::FinancialAccounts::TransactionCategoryBalances::OrHash
            ).void
          end
          attr_writer :amount_paid_details

          # Date the installment was actually assessed onto the account, or null if it has
          # not been assessed yet
          sig { returns(T.nilable(Date)) }
          attr_accessor :date_assessed

          # Date the installment is scheduled to be assessed onto the account
          sig { returns(Date) }
          attr_accessor :due_date

          # Position of this installment within the plan, starting at 0
          sig { returns(Integer) }
          attr_accessor :installment_num

          # Date the installment must be paid by before it is considered past due
          sig { returns(Date) }
          attr_accessor :payment_due_date

          # Payments applied to this installment, oldest first
          sig do
            returns(
              T::Array[
                Lithic::FinancialAccounts::InstallmentPlan::Installment::Payment
              ]
            )
          end
          attr_accessor :payments

          sig do
            params(
              amount_due: Integer,
              amount_due_details:
                Lithic::FinancialAccounts::TransactionCategoryBalances::OrHash,
              amount_outstanding: Integer,
              amount_outstanding_details:
                Lithic::FinancialAccounts::TransactionCategoryBalances::OrHash,
              amount_paid: Integer,
              amount_paid_details:
                Lithic::FinancialAccounts::TransactionCategoryBalances::OrHash,
              date_assessed: T.nilable(Date),
              due_date: Date,
              installment_num: Integer,
              payment_due_date: Date,
              payments:
                T::Array[
                  Lithic::FinancialAccounts::InstallmentPlan::Installment::Payment::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Amount the installment was opened for in cents
            amount_due:,
            amount_due_details:,
            # Amount still owed on the installment in cents
            amount_outstanding:,
            amount_outstanding_details:,
            # Amount paid towards the installment in cents
            amount_paid:,
            amount_paid_details:,
            # Date the installment was actually assessed onto the account, or null if it has
            # not been assessed yet
            date_assessed:,
            # Date the installment is scheduled to be assessed onto the account
            due_date:,
            # Position of this installment within the plan, starting at 0
            installment_num:,
            # Date the installment must be paid by before it is considered past due
            payment_due_date:,
            # Payments applied to this installment, oldest first
            payments:
          )
          end

          sig do
            override.returns(
              {
                amount_due: Integer,
                amount_due_details:
                  Lithic::FinancialAccounts::TransactionCategoryBalances,
                amount_outstanding: Integer,
                amount_outstanding_details:
                  Lithic::FinancialAccounts::TransactionCategoryBalances,
                amount_paid: Integer,
                amount_paid_details:
                  Lithic::FinancialAccounts::TransactionCategoryBalances,
                date_assessed: T.nilable(Date),
                due_date: Date,
                installment_num: Integer,
                payment_due_date: Date,
                payments:
                  T::Array[
                    Lithic::FinancialAccounts::InstallmentPlan::Installment::Payment
                  ]
              }
            )
          end
          def to_hash
          end

          class Payment < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::FinancialAccounts::InstallmentPlan::Installment::Payment,
                  Lithic::Internal::AnyHash
                )
              end

            # Amount applied to the installment in cents
            sig { returns(Integer) }
            attr_accessor :amount

            sig do
              returns(Lithic::FinancialAccounts::TransactionCategoryBalances)
            end
            attr_reader :amount_details

            sig do
              params(
                amount_details:
                  Lithic::FinancialAccounts::TransactionCategoryBalances::OrHash
              ).void
            end
            attr_writer :amount_details

            # Date the payment was applied to the installment
            sig { returns(Date) }
            attr_accessor :date

            sig do
              params(
                amount: Integer,
                amount_details:
                  Lithic::FinancialAccounts::TransactionCategoryBalances::OrHash,
                date: Date
              ).returns(T.attached_class)
            end
            def self.new(
              # Amount applied to the installment in cents
              amount:,
              amount_details:,
              # Date the payment was applied to the installment
              date:
            )
            end

            sig do
              override.returns(
                {
                  amount: Integer,
                  amount_details:
                    Lithic::FinancialAccounts::TransactionCategoryBalances,
                  date: Date
                }
              )
            end
            def to_hash
            end
          end
        end

        module SourceType
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::FinancialAccounts::InstallmentPlan::SourceType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UNPAID_BALANCE =
            T.let(
              :UNPAID_BALANCE,
              Lithic::FinancialAccounts::InstallmentPlan::SourceType::TaggedSymbol
            )
          TRANSACTION =
            T.let(
              :TRANSACTION,
              Lithic::FinancialAccounts::InstallmentPlan::SourceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::FinancialAccounts::InstallmentPlan::SourceType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # State of the installment plan. A plan is REBUILD_IN_PROGRESS while its loan
        # tapes are being rebuilt, during which its payment totals are being recomputed
        # and should not be treated as final
        module State
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::FinancialAccounts::InstallmentPlan::State)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              Lithic::FinancialAccounts::InstallmentPlan::State::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :ACTIVE,
              Lithic::FinancialAccounts::InstallmentPlan::State::TaggedSymbol
            )
          REBUILD_IN_PROGRESS =
            T.let(
              :REBUILD_IN_PROGRESS,
              Lithic::FinancialAccounts::InstallmentPlan::State::TaggedSymbol
            )
          FULLY_PAID =
            T.let(
              :FULLY_PAID,
              Lithic::FinancialAccounts::InstallmentPlan::State::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :CANCELLED,
              Lithic::FinancialAccounts::InstallmentPlan::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::FinancialAccounts::InstallmentPlan::State::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
