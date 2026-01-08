# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class LoanTape < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::FinancialAccounts::LoanTape,
              Lithic::Internal::AnyHash
            )
          end

        # Globally unique identifier for a loan tape
        sig { returns(String) }
        attr_accessor :token

        sig { returns(Lithic::FinancialAccounts::LoanTape::AccountStanding) }
        attr_reader :account_standing

        sig do
          params(
            account_standing:
              Lithic::FinancialAccounts::LoanTape::AccountStanding::OrHash
          ).void
        end
        attr_writer :account_standing

        # Amount of credit available to spend in cents
        sig { returns(Integer) }
        attr_accessor :available_credit

        sig { returns(Lithic::FinancialAccounts::LoanTape::Balances) }
        attr_reader :balances

        sig do
          params(
            balances: Lithic::FinancialAccounts::LoanTape::Balances::OrHash
          ).void
        end
        attr_writer :balances

        # Timestamp of when the loan tape was created
        sig { returns(Time) }
        attr_accessor :created

        # For prepay accounts, this is the minimum prepay balance that must be maintained.
        # For charge card accounts, this is the maximum credit balance extended by a
        # lender
        sig { returns(Integer) }
        attr_accessor :credit_limit

        # Globally unique identifier for a credit product
        sig { returns(String) }
        attr_accessor :credit_product_token

        # Date of transactions that this loan tape covers
        sig { returns(Date) }
        attr_accessor :date

        sig { returns(Lithic::StatementTotals) }
        attr_reader :day_totals

        sig { params(day_totals: Lithic::StatementTotals::OrHash).void }
        attr_writer :day_totals

        # Balance at the end of the day
        sig { returns(Integer) }
        attr_accessor :ending_balance

        # Excess credits in the form of provisional credits, payments, or purchase
        # refunds. If positive, the account is in net credit state with no outstanding
        # balances. An overpayment could land an account in this state
        sig { returns(Integer) }
        attr_accessor :excess_credits

        # Globally unique identifier for a financial account
        sig { returns(String) }
        attr_accessor :financial_account_token

        sig do
          returns(
            T.nilable(Lithic::FinancialAccounts::LoanTape::InterestDetails)
          )
        end
        attr_reader :interest_details

        sig do
          params(
            interest_details:
              T.nilable(
                Lithic::FinancialAccounts::LoanTape::InterestDetails::OrHash
              )
          ).void
        end
        attr_writer :interest_details

        sig do
          returns(Lithic::FinancialAccounts::LoanTape::MinimumPaymentBalance)
        end
        attr_reader :minimum_payment_balance

        sig do
          params(
            minimum_payment_balance:
              Lithic::FinancialAccounts::LoanTape::MinimumPaymentBalance::OrHash
          ).void
        end
        attr_writer :minimum_payment_balance

        sig { returns(Lithic::FinancialAccounts::LoanTape::PaymentAllocation) }
        attr_reader :payment_allocation

        sig do
          params(
            payment_allocation:
              Lithic::FinancialAccounts::LoanTape::PaymentAllocation::OrHash
          ).void
        end
        attr_writer :payment_allocation

        sig { returns(Lithic::StatementTotals) }
        attr_reader :period_totals

        sig { params(period_totals: Lithic::StatementTotals::OrHash).void }
        attr_writer :period_totals

        sig do
          returns(Lithic::FinancialAccounts::LoanTape::PreviousStatementBalance)
        end
        attr_reader :previous_statement_balance

        sig do
          params(
            previous_statement_balance:
              Lithic::FinancialAccounts::LoanTape::PreviousStatementBalance::OrHash
          ).void
        end
        attr_writer :previous_statement_balance

        # Balance at the start of the day
        sig { returns(Integer) }
        attr_accessor :starting_balance

        # Timestamp of when the loan tape was updated
        sig { returns(Time) }
        attr_accessor :updated

        # Version number of the loan tape. This starts at 1
        sig { returns(Integer) }
        attr_accessor :version

        sig { returns(Lithic::StatementTotals) }
        attr_reader :ytd_totals

        sig { params(ytd_totals: Lithic::StatementTotals::OrHash).void }
        attr_writer :ytd_totals

        # Interest tier to which this account belongs to
        sig { returns(T.nilable(String)) }
        attr_accessor :tier

        sig do
          params(
            token: String,
            account_standing:
              Lithic::FinancialAccounts::LoanTape::AccountStanding::OrHash,
            available_credit: Integer,
            balances: Lithic::FinancialAccounts::LoanTape::Balances::OrHash,
            created: Time,
            credit_limit: Integer,
            credit_product_token: String,
            date: Date,
            day_totals: Lithic::StatementTotals::OrHash,
            ending_balance: Integer,
            excess_credits: Integer,
            financial_account_token: String,
            interest_details:
              T.nilable(
                Lithic::FinancialAccounts::LoanTape::InterestDetails::OrHash
              ),
            minimum_payment_balance:
              Lithic::FinancialAccounts::LoanTape::MinimumPaymentBalance::OrHash,
            payment_allocation:
              Lithic::FinancialAccounts::LoanTape::PaymentAllocation::OrHash,
            period_totals: Lithic::StatementTotals::OrHash,
            previous_statement_balance:
              Lithic::FinancialAccounts::LoanTape::PreviousStatementBalance::OrHash,
            starting_balance: Integer,
            updated: Time,
            version: Integer,
            ytd_totals: Lithic::StatementTotals::OrHash,
            tier: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier for a loan tape
          token:,
          account_standing:,
          # Amount of credit available to spend in cents
          available_credit:,
          balances:,
          # Timestamp of when the loan tape was created
          created:,
          # For prepay accounts, this is the minimum prepay balance that must be maintained.
          # For charge card accounts, this is the maximum credit balance extended by a
          # lender
          credit_limit:,
          # Globally unique identifier for a credit product
          credit_product_token:,
          # Date of transactions that this loan tape covers
          date:,
          day_totals:,
          # Balance at the end of the day
          ending_balance:,
          # Excess credits in the form of provisional credits, payments, or purchase
          # refunds. If positive, the account is in net credit state with no outstanding
          # balances. An overpayment could land an account in this state
          excess_credits:,
          # Globally unique identifier for a financial account
          financial_account_token:,
          interest_details:,
          minimum_payment_balance:,
          payment_allocation:,
          period_totals:,
          previous_statement_balance:,
          # Balance at the start of the day
          starting_balance:,
          # Timestamp of when the loan tape was updated
          updated:,
          # Version number of the loan tape. This starts at 1
          version:,
          ytd_totals:,
          # Interest tier to which this account belongs to
          tier: nil
        )
        end

        sig do
          override.returns(
            {
              token: String,
              account_standing:
                Lithic::FinancialAccounts::LoanTape::AccountStanding,
              available_credit: Integer,
              balances: Lithic::FinancialAccounts::LoanTape::Balances,
              created: Time,
              credit_limit: Integer,
              credit_product_token: String,
              date: Date,
              day_totals: Lithic::StatementTotals,
              ending_balance: Integer,
              excess_credits: Integer,
              financial_account_token: String,
              interest_details:
                T.nilable(Lithic::FinancialAccounts::LoanTape::InterestDetails),
              minimum_payment_balance:
                Lithic::FinancialAccounts::LoanTape::MinimumPaymentBalance,
              payment_allocation:
                Lithic::FinancialAccounts::LoanTape::PaymentAllocation,
              period_totals: Lithic::StatementTotals,
              previous_statement_balance:
                Lithic::FinancialAccounts::LoanTape::PreviousStatementBalance,
              starting_balance: Integer,
              updated: Time,
              version: Integer,
              ytd_totals: Lithic::StatementTotals,
              tier: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class AccountStanding < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::FinancialAccounts::LoanTape::AccountStanding,
                Lithic::Internal::AnyHash
              )
            end

          # Number of consecutive full payments made
          sig { returns(Integer) }
          attr_accessor :consecutive_full_payments_made

          # Number of consecutive minimum payments made
          sig { returns(Integer) }
          attr_accessor :consecutive_minimum_payments_made

          # Number of consecutive minimum payments missed
          sig { returns(Integer) }
          attr_accessor :consecutive_minimum_payments_missed

          # Number of days past due
          sig { returns(Integer) }
          attr_accessor :days_past_due

          # Information about the financial account state
          sig do
            returns(
              Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState
            )
          end
          attr_reader :financial_account_state

          sig do
            params(
              financial_account_state:
                Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::OrHash
            ).void
          end
          attr_writer :financial_account_state

          # Whether the account currently has grace or not
          sig { returns(T::Boolean) }
          attr_accessor :has_grace

          # Current overall period number
          sig { returns(Integer) }
          attr_accessor :period_number

          sig do
            returns(
              Lithic::FinancialAccounts::LoanTape::AccountStanding::PeriodState::TaggedSymbol
            )
          end
          attr_accessor :period_state

          sig do
            params(
              consecutive_full_payments_made: Integer,
              consecutive_minimum_payments_made: Integer,
              consecutive_minimum_payments_missed: Integer,
              days_past_due: Integer,
              financial_account_state:
                Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::OrHash,
              has_grace: T::Boolean,
              period_number: Integer,
              period_state:
                Lithic::FinancialAccounts::LoanTape::AccountStanding::PeriodState::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Number of consecutive full payments made
            consecutive_full_payments_made:,
            # Number of consecutive minimum payments made
            consecutive_minimum_payments_made:,
            # Number of consecutive minimum payments missed
            consecutive_minimum_payments_missed:,
            # Number of days past due
            days_past_due:,
            # Information about the financial account state
            financial_account_state:,
            # Whether the account currently has grace or not
            has_grace:,
            # Current overall period number
            period_number:,
            period_state:
          )
          end

          sig do
            override.returns(
              {
                consecutive_full_payments_made: Integer,
                consecutive_minimum_payments_made: Integer,
                consecutive_minimum_payments_missed: Integer,
                days_past_due: Integer,
                financial_account_state:
                  Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState,
                has_grace: T::Boolean,
                period_number: Integer,
                period_state:
                  Lithic::FinancialAccounts::LoanTape::AccountStanding::PeriodState::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          class FinancialAccountState < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState,
                  Lithic::Internal::AnyHash
                )
              end

            # Status of the financial account
            sig do
              returns(
                Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            # Substatus for the financial account
            sig do
              returns(
                T.nilable(
                  Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Substatus::TaggedSymbol
                )
              )
            end
            attr_accessor :substatus

            # Information about the financial account state
            sig do
              params(
                status:
                  Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Status::OrSymbol,
                substatus:
                  T.nilable(
                    Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Substatus::OrSymbol
                  )
              ).returns(T.attached_class)
            end
            def self.new(
              # Status of the financial account
              status:,
              # Substatus for the financial account
              substatus: nil
            )
            end

            sig do
              override.returns(
                {
                  status:
                    Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Status::TaggedSymbol,
                  substatus:
                    T.nilable(
                      Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Substatus::TaggedSymbol
                    )
                }
              )
            end
            def to_hash
            end

            # Status of the financial account
            module Status
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              OPEN =
                T.let(
                  :OPEN,
                  Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Status::TaggedSymbol
                )
              CLOSED =
                T.let(
                  :CLOSED,
                  Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Status::TaggedSymbol
                )
              SUSPENDED =
                T.let(
                  :SUSPENDED,
                  Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Status::TaggedSymbol
                )
              PENDING =
                T.let(
                  :PENDING,
                  Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Substatus for the financial account
            module Substatus
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Substatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CHARGED_OFF_DELINQUENT =
                T.let(
                  :CHARGED_OFF_DELINQUENT,
                  Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Substatus::TaggedSymbol
                )
              CHARGED_OFF_FRAUD =
                T.let(
                  :CHARGED_OFF_FRAUD,
                  Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Substatus::TaggedSymbol
                )
              END_USER_REQUEST =
                T.let(
                  :END_USER_REQUEST,
                  Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Substatus::TaggedSymbol
                )
              BANK_REQUEST =
                T.let(
                  :BANK_REQUEST,
                  Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Substatus::TaggedSymbol
                )
              DELINQUENT =
                T.let(
                  :DELINQUENT,
                  Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Substatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Substatus::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          module PeriodState
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::FinancialAccounts::LoanTape::AccountStanding::PeriodState
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STANDARD =
              T.let(
                :STANDARD,
                Lithic::FinancialAccounts::LoanTape::AccountStanding::PeriodState::TaggedSymbol
              )
            PROMO =
              T.let(
                :PROMO,
                Lithic::FinancialAccounts::LoanTape::AccountStanding::PeriodState::TaggedSymbol
              )
            PENALTY =
              T.let(
                :PENALTY,
                Lithic::FinancialAccounts::LoanTape::AccountStanding::PeriodState::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::FinancialAccounts::LoanTape::AccountStanding::PeriodState::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Balances < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::FinancialAccounts::LoanTape::Balances,
                Lithic::Internal::AnyHash
              )
            end

          # Amount due for the prior billing cycle. Any amounts not fully paid off on this
          # due date will be considered past due the next day
          sig { returns(Lithic::FinancialAccounts::CategoryBalances) }
          attr_reader :due

          sig do
            params(
              due: Lithic::FinancialAccounts::CategoryBalances::OrHash
            ).void
          end
          attr_writer :due

          # Amount due for the current billing cycle. Any amounts not paid off by early
          # payments or credits will be considered due at the end of the current billing
          # period
          sig { returns(Lithic::FinancialAccounts::CategoryBalances) }
          attr_reader :next_statement_due

          sig do
            params(
              next_statement_due:
                Lithic::FinancialAccounts::CategoryBalances::OrHash
            ).void
          end
          attr_writer :next_statement_due

          # Amount not paid off on previous due dates
          sig { returns(Lithic::FinancialAccounts::CategoryBalances) }
          attr_reader :past_due

          sig do
            params(
              past_due: Lithic::FinancialAccounts::CategoryBalances::OrHash
            ).void
          end
          attr_writer :past_due

          # Amount due for the past billing cycles.
          sig { returns(Lithic::FinancialAccounts::CategoryBalances) }
          attr_reader :past_statements_due

          sig do
            params(
              past_statements_due:
                Lithic::FinancialAccounts::CategoryBalances::OrHash
            ).void
          end
          attr_writer :past_statements_due

          sig do
            params(
              due: Lithic::FinancialAccounts::CategoryBalances::OrHash,
              next_statement_due:
                Lithic::FinancialAccounts::CategoryBalances::OrHash,
              past_due: Lithic::FinancialAccounts::CategoryBalances::OrHash,
              past_statements_due:
                Lithic::FinancialAccounts::CategoryBalances::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Amount due for the prior billing cycle. Any amounts not fully paid off on this
            # due date will be considered past due the next day
            due:,
            # Amount due for the current billing cycle. Any amounts not paid off by early
            # payments or credits will be considered due at the end of the current billing
            # period
            next_statement_due:,
            # Amount not paid off on previous due dates
            past_due:,
            # Amount due for the past billing cycles.
            past_statements_due:
          )
          end

          sig do
            override.returns(
              {
                due: Lithic::FinancialAccounts::CategoryBalances,
                next_statement_due: Lithic::FinancialAccounts::CategoryBalances,
                past_due: Lithic::FinancialAccounts::CategoryBalances,
                past_statements_due: Lithic::FinancialAccounts::CategoryBalances
              }
            )
          end
          def to_hash
          end
        end

        class InterestDetails < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::FinancialAccounts::LoanTape::InterestDetails,
                Lithic::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_accessor :actual_interest_charged

          sig { returns(Lithic::CategoryDetails) }
          attr_reader :daily_balance_amounts

          sig do
            params(daily_balance_amounts: Lithic::CategoryDetails::OrHash).void
          end
          attr_writer :daily_balance_amounts

          sig { returns(Lithic::CategoryDetails) }
          attr_reader :effective_apr

          sig { params(effective_apr: Lithic::CategoryDetails::OrHash).void }
          attr_writer :effective_apr

          sig do
            returns(
              Lithic::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod::TaggedSymbol
            )
          end
          attr_accessor :interest_calculation_method

          sig { returns(Lithic::CategoryDetails) }
          attr_reader :interest_for_period

          sig do
            params(interest_for_period: Lithic::CategoryDetails::OrHash).void
          end
          attr_writer :interest_for_period

          sig { returns(T.nilable(String)) }
          attr_accessor :prime_rate

          sig { returns(T.nilable(Integer)) }
          attr_accessor :minimum_interest_charged

          sig do
            params(
              actual_interest_charged: T.nilable(Integer),
              daily_balance_amounts: Lithic::CategoryDetails::OrHash,
              effective_apr: Lithic::CategoryDetails::OrHash,
              interest_calculation_method:
                Lithic::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod::OrSymbol,
              interest_for_period: Lithic::CategoryDetails::OrHash,
              prime_rate: T.nilable(String),
              minimum_interest_charged: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            actual_interest_charged:,
            daily_balance_amounts:,
            effective_apr:,
            interest_calculation_method:,
            interest_for_period:,
            prime_rate:,
            minimum_interest_charged: nil
          )
          end

          sig do
            override.returns(
              {
                actual_interest_charged: T.nilable(Integer),
                daily_balance_amounts: Lithic::CategoryDetails,
                effective_apr: Lithic::CategoryDetails,
                interest_calculation_method:
                  Lithic::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod::TaggedSymbol,
                interest_for_period: Lithic::CategoryDetails,
                prime_rate: T.nilable(String),
                minimum_interest_charged: T.nilable(Integer)
              }
            )
          end
          def to_hash
          end

          module InterestCalculationMethod
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAILY =
              T.let(
                :DAILY,
                Lithic::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod::TaggedSymbol
              )
            AVERAGE_DAILY =
              T.let(
                :AVERAGE_DAILY,
                Lithic::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class MinimumPaymentBalance < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::FinancialAccounts::LoanTape::MinimumPaymentBalance,
                Lithic::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(Integer) }
          attr_accessor :remaining

          sig do
            params(amount: Integer, remaining: Integer).returns(
              T.attached_class
            )
          end
          def self.new(amount:, remaining:)
          end

          sig { override.returns({ amount: Integer, remaining: Integer }) }
          def to_hash
          end
        end

        class PaymentAllocation < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::FinancialAccounts::LoanTape::PaymentAllocation,
                Lithic::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Lithic::CategoryDetails)) }
          attr_reader :fee_details

          sig do
            params(fee_details: T.nilable(Lithic::CategoryDetails::OrHash)).void
          end
          attr_writer :fee_details

          # Amount allocated to fees in cents
          sig { returns(Integer) }
          attr_accessor :fees

          # Amount allocated to interest in cents
          sig { returns(Integer) }
          attr_accessor :interest

          sig { returns(T.nilable(Lithic::CategoryDetails)) }
          attr_reader :interest_details

          sig do
            params(
              interest_details: T.nilable(Lithic::CategoryDetails::OrHash)
            ).void
          end
          attr_writer :interest_details

          # Amount allocated to principal in cents
          sig { returns(Integer) }
          attr_accessor :principal

          sig { returns(T.nilable(Lithic::CategoryDetails)) }
          attr_reader :principal_details

          sig do
            params(
              principal_details: T.nilable(Lithic::CategoryDetails::OrHash)
            ).void
          end
          attr_writer :principal_details

          sig do
            params(
              fee_details: T.nilable(Lithic::CategoryDetails::OrHash),
              fees: Integer,
              interest: Integer,
              interest_details: T.nilable(Lithic::CategoryDetails::OrHash),
              principal: Integer,
              principal_details: T.nilable(Lithic::CategoryDetails::OrHash)
            ).returns(T.attached_class)
          end
          def self.new(
            fee_details:,
            # Amount allocated to fees in cents
            fees:,
            # Amount allocated to interest in cents
            interest:,
            interest_details:,
            # Amount allocated to principal in cents
            principal:,
            principal_details:
          )
          end

          sig do
            override.returns(
              {
                fee_details: T.nilable(Lithic::CategoryDetails),
                fees: Integer,
                interest: Integer,
                interest_details: T.nilable(Lithic::CategoryDetails),
                principal: Integer,
                principal_details: T.nilable(Lithic::CategoryDetails)
              }
            )
          end
          def to_hash
          end
        end

        class PreviousStatementBalance < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::FinancialAccounts::LoanTape::PreviousStatementBalance,
                Lithic::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(Integer) }
          attr_accessor :remaining

          sig do
            params(amount: Integer, remaining: Integer).returns(
              T.attached_class
            )
          end
          def self.new(amount:, remaining:)
          end

          sig { override.returns({ amount: Integer, remaining: Integer }) }
          def to_hash
          end
        end
      end
    end
  end
end
