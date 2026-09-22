# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      InstallmentPlanStatement = InstallmentPlans::InstallmentPlanStatement

      module InstallmentPlans
        class InstallmentPlanStatement < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement,
                Lithic::Internal::AnyHash
              )
            end

          # Globally unique identifier for this snapshot, which is the token of the
          # statement it is attached to. A plan is snapshotted at most once per statement,
          # so the statement identifies the snapshot within the plan. Pass it as a
          # pagination cursor
          sig { returns(String) }
          attr_accessor :token

          # Enrollment fee charged when the plan was created in cents
          sig { returns(Integer) }
          attr_accessor :fee_amount

          # Globally unique identifier for the installment plan this snapshot is of
          sig { returns(String) }
          attr_accessor :installment_plan_token

          # Total owed on the plan in cents, the principal amount plus the enrollment fee
          sig { returns(Integer) }
          attr_accessor :installment_plan_total

          # Installments that make up the plan, oldest first
          sig do
            returns(
              T::Array[
                Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::Installment
              ]
            )
          end
          attr_accessor :installments

          # Number of installments that still carried a balance as of this statement
          sig { returns(Integer) }
          attr_accessor :installments_outstanding

          # Number of installments that had been paid off as of this statement
          sig { returns(Integer) }
          attr_accessor :installments_paid

          # Number of installments the plan is broken into
          sig { returns(Integer) }
          attr_accessor :num_installments

          # Balance the plan was opened on in cents, excluding the enrollment fee
          sig { returns(Integer) }
          attr_accessor :principal_amount

          sig do
            returns(
              Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::SourceType::TaggedSymbol
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
              Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::State::TaggedSymbol
            )
          end
          attr_accessor :state

          # Amount paid towards the plan as of this statement in cents
          sig { returns(Integer) }
          attr_accessor :total_paid

          # An immutable snapshot of an installment plan as of the statement it is attached
          # to. Lithic cuts one per open plan when a statement is generated and never
          # reissues it
          sig do
            params(
              token: String,
              fee_amount: Integer,
              installment_plan_token: String,
              installment_plan_total: Integer,
              installments:
                T::Array[
                  Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::Installment::OrHash
                ],
              installments_outstanding: Integer,
              installments_paid: Integer,
              num_installments: Integer,
              principal_amount: Integer,
              source_type:
                Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::SourceType::OrSymbol,
              start_date: Date,
              state:
                Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::State::OrSymbol,
              total_paid: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Globally unique identifier for this snapshot, which is the token of the
            # statement it is attached to. A plan is snapshotted at most once per statement,
            # so the statement identifies the snapshot within the plan. Pass it as a
            # pagination cursor
            token:,
            # Enrollment fee charged when the plan was created in cents
            fee_amount:,
            # Globally unique identifier for the installment plan this snapshot is of
            installment_plan_token:,
            # Total owed on the plan in cents, the principal amount plus the enrollment fee
            installment_plan_total:,
            # Installments that make up the plan, oldest first
            installments:,
            # Number of installments that still carried a balance as of this statement
            installments_outstanding:,
            # Number of installments that had been paid off as of this statement
            installments_paid:,
            # Number of installments the plan is broken into
            num_installments:,
            # Balance the plan was opened on in cents, excluding the enrollment fee
            principal_amount:,
            source_type:,
            # Date the plan was created
            start_date:,
            # State of the installment plan. A plan is REBUILD_IN_PROGRESS while its loan
            # tapes are being rebuilt, during which its payment totals are being recomputed
            # and should not be treated as final
            state:,
            # Amount paid towards the plan as of this statement in cents
            total_paid:
          )
          end

          sig do
            override.returns(
              {
                token: String,
                fee_amount: Integer,
                installment_plan_token: String,
                installment_plan_total: Integer,
                installments:
                  T::Array[
                    Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::Installment
                  ],
                installments_outstanding: Integer,
                installments_paid: Integer,
                num_installments: Integer,
                principal_amount: Integer,
                source_type:
                  Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::SourceType::TaggedSymbol,
                start_date: Date,
                state:
                  Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::State::TaggedSymbol,
                total_paid: Integer
              }
            )
          end
          def to_hash
          end

          class Installment < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::Installment,
                  Lithic::Internal::AnyHash
                )
              end

            # Amount the installment was opened for in cents
            sig { returns(Integer) }
            attr_accessor :amount_due

            sig { returns(Lithic::FinancialAccounts::CategoryBalances) }
            attr_reader :amount_due_details

            sig do
              params(
                amount_due_details:
                  Lithic::FinancialAccounts::CategoryBalances::OrHash
              ).void
            end
            attr_writer :amount_due_details

            # Amount still owed on the installment in cents
            sig { returns(Integer) }
            attr_accessor :amount_outstanding

            sig { returns(Lithic::FinancialAccounts::CategoryBalances) }
            attr_reader :amount_outstanding_details

            sig do
              params(
                amount_outstanding_details:
                  Lithic::FinancialAccounts::CategoryBalances::OrHash
              ).void
            end
            attr_writer :amount_outstanding_details

            # Amount paid towards the installment in cents
            sig { returns(Integer) }
            attr_accessor :amount_paid

            sig { returns(Lithic::FinancialAccounts::CategoryBalances) }
            attr_reader :amount_paid_details

            sig do
              params(
                amount_paid_details:
                  Lithic::FinancialAccounts::CategoryBalances::OrHash
              ).void
            end
            attr_writer :amount_paid_details

            # Date the installment was actually assessed onto the account, or null if it had
            # not been assessed as of this statement
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
                  Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::Installment::Payment
                ]
              )
            end
            attr_accessor :payments

            # One installment of a plan as of the statement. Amounts are totalled across
            # transaction categories rather than broken out by them, which the installment
            # plan endpoint does
            sig do
              params(
                amount_due: Integer,
                amount_due_details:
                  Lithic::FinancialAccounts::CategoryBalances::OrHash,
                amount_outstanding: Integer,
                amount_outstanding_details:
                  Lithic::FinancialAccounts::CategoryBalances::OrHash,
                amount_paid: Integer,
                amount_paid_details:
                  Lithic::FinancialAccounts::CategoryBalances::OrHash,
                date_assessed: T.nilable(Date),
                due_date: Date,
                installment_num: Integer,
                payment_due_date: Date,
                payments:
                  T::Array[
                    Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::Installment::Payment::OrHash
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
              # Date the installment was actually assessed onto the account, or null if it had
              # not been assessed as of this statement
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
                    Lithic::FinancialAccounts::CategoryBalances,
                  amount_outstanding: Integer,
                  amount_outstanding_details:
                    Lithic::FinancialAccounts::CategoryBalances,
                  amount_paid: Integer,
                  amount_paid_details:
                    Lithic::FinancialAccounts::CategoryBalances,
                  date_assessed: T.nilable(Date),
                  due_date: Date,
                  installment_num: Integer,
                  payment_due_date: Date,
                  payments:
                    T::Array[
                      Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::Installment::Payment
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
                    Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::Installment::Payment,
                    Lithic::Internal::AnyHash
                  )
                end

              # Amount applied to the installment in cents
              sig { returns(Integer) }
              attr_accessor :amount

              # Date the payment was applied to the installment
              sig { returns(Date) }
              attr_accessor :date

              sig do
                params(amount: Integer, date: Date).returns(T.attached_class)
              end
              def self.new(
                # Amount applied to the installment in cents
                amount:,
                # Date the payment was applied to the installment
                date:
              )
              end

              sig { override.returns({ amount: Integer, date: Date }) }
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
                  Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::SourceType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UNPAID_BALANCE =
              T.let(
                :UNPAID_BALANCE,
                Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::SourceType::TaggedSymbol
              )
            TRANSACTION =
              T.let(
                :TRANSACTION,
                Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::SourceType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::SourceType::TaggedSymbol
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
                T.all(
                  Symbol,
                  Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::State
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :PENDING,
                Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::State::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :ACTIVE,
                Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::State::TaggedSymbol
              )
            REBUILD_IN_PROGRESS =
              T.let(
                :REBUILD_IN_PROGRESS,
                Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::State::TaggedSymbol
              )
            FULLY_PAID =
              T.let(
                :FULLY_PAID,
                Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::State::TaggedSymbol
              )
            CANCELLED =
              T.let(
                :CANCELLED,
                Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::State::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::State::TaggedSymbol
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
end
