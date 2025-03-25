# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class LoanTape < Lithic::BaseModel
        # Globally unique identifier for a loan tape
        sig { returns(String) }
        attr_accessor :token

        sig { returns(Lithic::Models::FinancialAccounts::LoanTape::AccountStanding) }
        attr_reader :account_standing

        sig do
          params(
            account_standing: T.any(Lithic::Models::FinancialAccounts::LoanTape::AccountStanding, Lithic::Util::AnyHash)
          )
            .void
        end
        attr_writer :account_standing

        # Amount of credit available to spend in cents
        sig { returns(Integer) }
        attr_accessor :available_credit

        sig { returns(Lithic::Models::FinancialAccounts::LoanTape::Balances) }
        attr_reader :balances

        sig { params(balances: T.any(Lithic::Models::FinancialAccounts::LoanTape::Balances, Lithic::Util::AnyHash)).void }
        attr_writer :balances

        # Timestamp of when the loan tape was created
        sig { returns(Time) }
        attr_accessor :created

        # For prepay accounts, this is the minimum prepay balance that must be maintained.
        #   For charge card accounts, this is the maximum credit balance extended by a
        #   lender
        sig { returns(Integer) }
        attr_accessor :credit_limit

        # Globally unique identifier for a credit product
        sig { returns(String) }
        attr_accessor :credit_product_token

        # Date of transactions that this loan tape covers
        sig { returns(Date) }
        attr_accessor :date

        sig { returns(Lithic::Models::FinancialAccounts::LoanTape::DayTotals) }
        attr_reader :day_totals

        sig do
          params(day_totals: T.any(Lithic::Models::FinancialAccounts::LoanTape::DayTotals, Lithic::Util::AnyHash))
            .void
        end
        attr_writer :day_totals

        # Balance at the end of the day
        sig { returns(Integer) }
        attr_accessor :ending_balance

        # Excess credits in the form of provisional credits, payments, or purchase
        #   refunds. If positive, the account is in net credit state with no outstanding
        #   balances. An overpayment could land an account in this state
        sig { returns(Integer) }
        attr_accessor :excess_credits

        # Globally unique identifier for a financial account
        sig { returns(String) }
        attr_accessor :financial_account_token

        sig { returns(T.nilable(Lithic::Models::FinancialAccounts::LoanTape::InterestDetails)) }
        attr_reader :interest_details

        sig do
          params(
            interest_details: T.nilable(T.any(Lithic::Models::FinancialAccounts::LoanTape::InterestDetails, Lithic::Util::AnyHash))
          )
            .void
        end
        attr_writer :interest_details

        sig { returns(Lithic::Models::FinancialAccounts::LoanTape::MinimumPaymentBalance) }
        attr_reader :minimum_payment_balance

        sig do
          params(
            minimum_payment_balance: T.any(Lithic::Models::FinancialAccounts::LoanTape::MinimumPaymentBalance, Lithic::Util::AnyHash)
          )
            .void
        end
        attr_writer :minimum_payment_balance

        sig { returns(Lithic::Models::FinancialAccounts::LoanTape::PaymentAllocation) }
        attr_reader :payment_allocation

        sig do
          params(
            payment_allocation: T.any(Lithic::Models::FinancialAccounts::LoanTape::PaymentAllocation, Lithic::Util::AnyHash)
          )
            .void
        end
        attr_writer :payment_allocation

        sig { returns(Lithic::Models::FinancialAccounts::LoanTape::PeriodTotals) }
        attr_reader :period_totals

        sig do
          params(
            period_totals: T.any(Lithic::Models::FinancialAccounts::LoanTape::PeriodTotals, Lithic::Util::AnyHash)
          )
            .void
        end
        attr_writer :period_totals

        sig { returns(Lithic::Models::FinancialAccounts::LoanTape::PreviousStatementBalance) }
        attr_reader :previous_statement_balance

        sig do
          params(
            previous_statement_balance: T.any(Lithic::Models::FinancialAccounts::LoanTape::PreviousStatementBalance, Lithic::Util::AnyHash)
          )
            .void
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

        sig { returns(Lithic::Models::FinancialAccounts::LoanTape::YtdTotals) }
        attr_reader :ytd_totals

        sig do
          params(ytd_totals: T.any(Lithic::Models::FinancialAccounts::LoanTape::YtdTotals, Lithic::Util::AnyHash))
            .void
        end
        attr_writer :ytd_totals

        # Interest tier to which this account belongs to
        sig { returns(T.nilable(String)) }
        attr_reader :tier

        sig { params(tier: String).void }
        attr_writer :tier

        sig do
          params(
            token: String,
            account_standing: T.any(Lithic::Models::FinancialAccounts::LoanTape::AccountStanding, Lithic::Util::AnyHash),
            available_credit: Integer,
            balances: T.any(Lithic::Models::FinancialAccounts::LoanTape::Balances, Lithic::Util::AnyHash),
            created: Time,
            credit_limit: Integer,
            credit_product_token: String,
            date: Date,
            day_totals: T.any(Lithic::Models::FinancialAccounts::LoanTape::DayTotals, Lithic::Util::AnyHash),
            ending_balance: Integer,
            excess_credits: Integer,
            financial_account_token: String,
            interest_details: T.nilable(T.any(Lithic::Models::FinancialAccounts::LoanTape::InterestDetails, Lithic::Util::AnyHash)),
            minimum_payment_balance: T.any(Lithic::Models::FinancialAccounts::LoanTape::MinimumPaymentBalance, Lithic::Util::AnyHash),
            payment_allocation: T.any(Lithic::Models::FinancialAccounts::LoanTape::PaymentAllocation, Lithic::Util::AnyHash),
            period_totals: T.any(Lithic::Models::FinancialAccounts::LoanTape::PeriodTotals, Lithic::Util::AnyHash),
            previous_statement_balance: T.any(Lithic::Models::FinancialAccounts::LoanTape::PreviousStatementBalance, Lithic::Util::AnyHash),
            starting_balance: Integer,
            updated: Time,
            version: Integer,
            ytd_totals: T.any(Lithic::Models::FinancialAccounts::LoanTape::YtdTotals, Lithic::Util::AnyHash),
            tier: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          token:,
          account_standing:,
          available_credit:,
          balances:,
          created:,
          credit_limit:,
          credit_product_token:,
          date:,
          day_totals:,
          ending_balance:,
          excess_credits:,
          financial_account_token:,
          interest_details:,
          minimum_payment_balance:,
          payment_allocation:,
          period_totals:,
          previous_statement_balance:,
          starting_balance:,
          updated:,
          version:,
          ytd_totals:,
          tier: nil
        )
        end

        sig do
          override
            .returns(
              {
                token: String,
                account_standing: Lithic::Models::FinancialAccounts::LoanTape::AccountStanding,
                available_credit: Integer,
                balances: Lithic::Models::FinancialAccounts::LoanTape::Balances,
                created: Time,
                credit_limit: Integer,
                credit_product_token: String,
                date: Date,
                day_totals: Lithic::Models::FinancialAccounts::LoanTape::DayTotals,
                ending_balance: Integer,
                excess_credits: Integer,
                financial_account_token: String,
                interest_details: T.nilable(Lithic::Models::FinancialAccounts::LoanTape::InterestDetails),
                minimum_payment_balance: Lithic::Models::FinancialAccounts::LoanTape::MinimumPaymentBalance,
                payment_allocation: Lithic::Models::FinancialAccounts::LoanTape::PaymentAllocation,
                period_totals: Lithic::Models::FinancialAccounts::LoanTape::PeriodTotals,
                previous_statement_balance: Lithic::Models::FinancialAccounts::LoanTape::PreviousStatementBalance,
                starting_balance: Integer,
                updated: Time,
                version: Integer,
                ytd_totals: Lithic::Models::FinancialAccounts::LoanTape::YtdTotals,
                tier: String
              }
            )
        end
        def to_hash
        end

        class AccountStanding < Lithic::BaseModel
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
          sig { returns(Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState) }
          attr_reader :financial_account_state

          sig do
            params(
              financial_account_state: T.any(
                Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState,
                Lithic::Util::AnyHash
              )
            )
              .void
          end
          attr_writer :financial_account_state

          # Whether the account currently has grace or not
          sig { returns(T::Boolean) }
          attr_accessor :has_grace

          # Current overall period number
          sig { returns(Integer) }
          attr_accessor :period_number

          sig { returns(Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::PeriodState::TaggedSymbol) }
          attr_accessor :period_state

          sig do
            params(
              consecutive_full_payments_made: Integer,
              consecutive_minimum_payments_made: Integer,
              consecutive_minimum_payments_missed: Integer,
              days_past_due: Integer,
              financial_account_state: T.any(
                Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState,
                Lithic::Util::AnyHash
              ),
              has_grace: T::Boolean,
              period_number: Integer,
              period_state: Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::PeriodState::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            consecutive_full_payments_made:,
            consecutive_minimum_payments_made:,
            consecutive_minimum_payments_missed:,
            days_past_due:,
            financial_account_state:,
            has_grace:,
            period_number:,
            period_state:
          )
          end

          sig do
            override
              .returns(
                {
                  consecutive_full_payments_made: Integer,
                  consecutive_minimum_payments_made: Integer,
                  consecutive_minimum_payments_missed: Integer,
                  days_past_due: Integer,
                  financial_account_state: Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState,
                  has_grace: T::Boolean,
                  period_number: Integer,
                  period_state: Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::PeriodState::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          class FinancialAccountState < Lithic::BaseModel
            # Status of the financial account
            sig do
              returns(
                Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            # Reason for the financial account status change
            sig do
              returns(
                T.nilable(
                  Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::StatusChangeReason::TaggedSymbol
                )
              )
            end
            attr_accessor :status_change_reason

            # Information about the financial account state
            sig do
              params(
                status: Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Status::OrSymbol,
                status_change_reason: T.nilable(
                  Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::StatusChangeReason::OrSymbol
                )
              )
                .returns(T.attached_class)
            end
            def self.new(status:, status_change_reason: nil)
            end

            sig do
              override
                .returns(
                  {
                    status: Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Status::TaggedSymbol,
                    status_change_reason: T.nilable(
                      Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::StatusChangeReason::TaggedSymbol
                    )
                  }
                )
            end
            def to_hash
            end

            # Status of the financial account
            module Status
              extend Lithic::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Status) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Status::TaggedSymbol
                  )
                end

              OPEN =
                T.let(
                  :OPEN,
                  Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Status::TaggedSymbol
                )
              CLOSED =
                T.let(
                  :CLOSED,
                  Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Status::TaggedSymbol
                )
              SUSPENDED =
                T.let(
                  :SUSPENDED,
                  Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Status::TaggedSymbol
                )
              PENDING =
                T.let(
                  :PENDING,
                  Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Status::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Status::TaggedSymbol]
                  )
              end
              def self.values
              end
            end

            # Reason for the financial account status change
            module StatusChangeReason
              extend Lithic::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::StatusChangeReason)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::StatusChangeReason::TaggedSymbol
                  )
                end

              CHARGED_OFF_DELINQUENT =
                T.let(
                  :CHARGED_OFF_DELINQUENT,
                  Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::StatusChangeReason::TaggedSymbol
                )
              CHARGED_OFF_FRAUD =
                T.let(
                  :CHARGED_OFF_FRAUD,
                  Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::StatusChangeReason::TaggedSymbol
                )
              END_USER_REQUEST =
                T.let(
                  :END_USER_REQUEST,
                  Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::StatusChangeReason::TaggedSymbol
                )
              BANK_REQUEST =
                T.let(
                  :BANK_REQUEST,
                  Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::StatusChangeReason::TaggedSymbol
                )
              DELINQUENT =
                T.let(
                  :DELINQUENT,
                  Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::StatusChangeReason::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::StatusChangeReason::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end
          end

          module PeriodState
            extend Lithic::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::PeriodState) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::PeriodState::TaggedSymbol) }

            STANDARD =
              T.let(:STANDARD, Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::PeriodState::TaggedSymbol)
            PROMO =
              T.let(:PROMO, Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::PeriodState::TaggedSymbol)
            PENALTY =
              T.let(:PENALTY, Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::PeriodState::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::PeriodState::TaggedSymbol])
            end
            def self.values
            end
          end
        end

        class Balances < Lithic::BaseModel
          # Amount due for the prior billing cycle. Any amounts not fully paid off on this
          #   due date will be considered past due the next day
          sig { returns(Lithic::Models::FinancialAccounts::LoanTape::Balances::Due) }
          attr_reader :due

          sig { params(due: T.any(Lithic::Models::FinancialAccounts::LoanTape::Balances::Due, Lithic::Util::AnyHash)).void }
          attr_writer :due

          # Amount due for the current billing cycle. Any amounts not paid off by early
          #   payments or credits will be considered due at the end of the current billing
          #   period
          sig { returns(Lithic::Models::FinancialAccounts::LoanTape::Balances::NextStatementDue) }
          attr_reader :next_statement_due

          sig do
            params(
              next_statement_due: T.any(Lithic::Models::FinancialAccounts::LoanTape::Balances::NextStatementDue, Lithic::Util::AnyHash)
            )
              .void
          end
          attr_writer :next_statement_due

          # Amount not paid off on previous due dates
          sig { returns(Lithic::Models::FinancialAccounts::LoanTape::Balances::PastDue) }
          attr_reader :past_due

          sig do
            params(
              past_due: T.any(Lithic::Models::FinancialAccounts::LoanTape::Balances::PastDue, Lithic::Util::AnyHash)
            )
              .void
          end
          attr_writer :past_due

          # Amount due for the past billing cycles.
          sig { returns(Lithic::Models::FinancialAccounts::LoanTape::Balances::PastStatementsDue) }
          attr_reader :past_statements_due

          sig do
            params(
              past_statements_due: T.any(Lithic::Models::FinancialAccounts::LoanTape::Balances::PastStatementsDue, Lithic::Util::AnyHash)
            )
              .void
          end
          attr_writer :past_statements_due

          sig do
            params(
              due: T.any(Lithic::Models::FinancialAccounts::LoanTape::Balances::Due, Lithic::Util::AnyHash),
              next_statement_due: T.any(Lithic::Models::FinancialAccounts::LoanTape::Balances::NextStatementDue, Lithic::Util::AnyHash),
              past_due: T.any(Lithic::Models::FinancialAccounts::LoanTape::Balances::PastDue, Lithic::Util::AnyHash),
              past_statements_due: T.any(Lithic::Models::FinancialAccounts::LoanTape::Balances::PastStatementsDue, Lithic::Util::AnyHash)
            )
              .returns(T.attached_class)
          end
          def self.new(due:, next_statement_due:, past_due:, past_statements_due:)
          end

          sig do
            override
              .returns(
                {
                  due: Lithic::Models::FinancialAccounts::LoanTape::Balances::Due,
                  next_statement_due: Lithic::Models::FinancialAccounts::LoanTape::Balances::NextStatementDue,
                  past_due: Lithic::Models::FinancialAccounts::LoanTape::Balances::PastDue,
                  past_statements_due: Lithic::Models::FinancialAccounts::LoanTape::Balances::PastStatementsDue
                }
              )
          end
          def to_hash
          end

          class Due < Lithic::BaseModel
            sig { returns(Integer) }
            attr_accessor :fees

            sig { returns(Integer) }
            attr_accessor :interest

            sig { returns(Integer) }
            attr_accessor :principal

            # Amount due for the prior billing cycle. Any amounts not fully paid off on this
            #   due date will be considered past due the next day
            sig { params(fees: Integer, interest: Integer, principal: Integer).returns(T.attached_class) }
            def self.new(fees:, interest:, principal:)
            end

            sig { override.returns({fees: Integer, interest: Integer, principal: Integer}) }
            def to_hash
            end
          end

          class NextStatementDue < Lithic::BaseModel
            sig { returns(Integer) }
            attr_accessor :fees

            sig { returns(Integer) }
            attr_accessor :interest

            sig { returns(Integer) }
            attr_accessor :principal

            # Amount due for the current billing cycle. Any amounts not paid off by early
            #   payments or credits will be considered due at the end of the current billing
            #   period
            sig { params(fees: Integer, interest: Integer, principal: Integer).returns(T.attached_class) }
            def self.new(fees:, interest:, principal:)
            end

            sig { override.returns({fees: Integer, interest: Integer, principal: Integer}) }
            def to_hash
            end
          end

          class PastDue < Lithic::BaseModel
            sig { returns(Integer) }
            attr_accessor :fees

            sig { returns(Integer) }
            attr_accessor :interest

            sig { returns(Integer) }
            attr_accessor :principal

            # Amount not paid off on previous due dates
            sig { params(fees: Integer, interest: Integer, principal: Integer).returns(T.attached_class) }
            def self.new(fees:, interest:, principal:)
            end

            sig { override.returns({fees: Integer, interest: Integer, principal: Integer}) }
            def to_hash
            end
          end

          class PastStatementsDue < Lithic::BaseModel
            sig { returns(Integer) }
            attr_accessor :fees

            sig { returns(Integer) }
            attr_accessor :interest

            sig { returns(Integer) }
            attr_accessor :principal

            # Amount due for the past billing cycles.
            sig { params(fees: Integer, interest: Integer, principal: Integer).returns(T.attached_class) }
            def self.new(fees:, interest:, principal:)
            end

            sig { override.returns({fees: Integer, interest: Integer, principal: Integer}) }
            def to_hash
            end
          end
        end

        class DayTotals < Lithic::BaseModel
          # Opening balance transferred from previous account in cents
          sig { returns(Integer) }
          attr_accessor :balance_transfers

          # ATM and cashback transactions in cents
          sig { returns(Integer) }
          attr_accessor :cash_advances

          # Volume of credit management operation transactions less any balance transfers in
          #   cents
          sig { returns(Integer) }
          attr_accessor :credits

          # Volume of debit management operation transactions less any interest in cents
          sig { returns(Integer) }
          attr_accessor :fees

          # Interest accrued in cents
          sig { returns(Integer) }
          attr_accessor :interest

          # Any funds transfers which affective the balance in cents
          sig { returns(Integer) }
          attr_accessor :payments

          # Net card transaction volume less any cash advances in cents
          sig { returns(Integer) }
          attr_accessor :purchases

          sig do
            params(
              balance_transfers: Integer,
              cash_advances: Integer,
              credits: Integer,
              fees: Integer,
              interest: Integer,
              payments: Integer,
              purchases: Integer
            )
              .returns(T.attached_class)
          end
          def self.new(balance_transfers:, cash_advances:, credits:, fees:, interest:, payments:, purchases:)
          end

          sig do
            override
              .returns(
                {
                  balance_transfers: Integer,
                  cash_advances: Integer,
                  credits: Integer,
                  fees: Integer,
                  interest: Integer,
                  payments: Integer,
                  purchases: Integer
                }
              )
          end
          def to_hash
          end
        end

        class InterestDetails < Lithic::BaseModel
          sig { returns(T.nilable(Integer)) }
          attr_accessor :actual_interest_charged

          sig { returns(Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::DailyBalanceAmounts) }
          attr_reader :daily_balance_amounts

          sig do
            params(
              daily_balance_amounts: T.any(
                Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::DailyBalanceAmounts,
                Lithic::Util::AnyHash
              )
            )
              .void
          end
          attr_writer :daily_balance_amounts

          sig { returns(Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::EffectiveApr) }
          attr_reader :effective_apr

          sig do
            params(
              effective_apr: T.any(Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::EffectiveApr, Lithic::Util::AnyHash)
            )
              .void
          end
          attr_writer :effective_apr

          sig do
            returns(
              Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod::TaggedSymbol
            )
          end
          attr_accessor :interest_calculation_method

          sig { returns(Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestForPeriod) }
          attr_reader :interest_for_period

          sig do
            params(
              interest_for_period: T.any(
                Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestForPeriod,
                Lithic::Util::AnyHash
              )
            )
              .void
          end
          attr_writer :interest_for_period

          sig { returns(T.nilable(String)) }
          attr_accessor :prime_rate

          sig { returns(T.nilable(Integer)) }
          attr_accessor :minimum_interest_charged

          sig do
            params(
              actual_interest_charged: T.nilable(Integer),
              daily_balance_amounts: T.any(
                Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::DailyBalanceAmounts,
                Lithic::Util::AnyHash
              ),
              effective_apr: T.any(Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::EffectiveApr, Lithic::Util::AnyHash),
              interest_calculation_method: Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod::OrSymbol,
              interest_for_period: T.any(
                Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestForPeriod,
                Lithic::Util::AnyHash
              ),
              prime_rate: T.nilable(String),
              minimum_interest_charged: T.nilable(Integer)
            )
              .returns(T.attached_class)
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
            override
              .returns(
                {
                  actual_interest_charged: T.nilable(Integer),
                  daily_balance_amounts: Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::DailyBalanceAmounts,
                  effective_apr: Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::EffectiveApr,
                  interest_calculation_method: Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod::TaggedSymbol,
                  interest_for_period: Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestForPeriod,
                  prime_rate: T.nilable(String),
                  minimum_interest_charged: T.nilable(Integer)
                }
              )
          end
          def to_hash
          end

          class DailyBalanceAmounts < Lithic::BaseModel
            sig { returns(String) }
            attr_accessor :balance_transfers

            sig { returns(String) }
            attr_accessor :cash_advances

            sig { returns(String) }
            attr_accessor :purchases

            sig do
              params(
                balance_transfers: String,
                cash_advances: String,
                purchases: String
              ).returns(T.attached_class)
            end
            def self.new(balance_transfers:, cash_advances:, purchases:)
            end

            sig { override.returns({balance_transfers: String, cash_advances: String, purchases: String}) }
            def to_hash
            end
          end

          class EffectiveApr < Lithic::BaseModel
            sig { returns(String) }
            attr_accessor :balance_transfers

            sig { returns(String) }
            attr_accessor :cash_advances

            sig { returns(String) }
            attr_accessor :purchases

            sig do
              params(
                balance_transfers: String,
                cash_advances: String,
                purchases: String
              ).returns(T.attached_class)
            end
            def self.new(balance_transfers:, cash_advances:, purchases:)
            end

            sig { override.returns({balance_transfers: String, cash_advances: String, purchases: String}) }
            def to_hash
            end
          end

          module InterestCalculationMethod
            extend Lithic::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod::TaggedSymbol
                )
              end

            DAILY =
              T.let(
                :DAILY,
                Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod::TaggedSymbol
              )
            AVERAGE_DAILY =
              T.let(
                :AVERAGE_DAILY,
                Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod::TaggedSymbol]
                )
            end
            def self.values
            end
          end

          class InterestForPeriod < Lithic::BaseModel
            sig { returns(String) }
            attr_accessor :balance_transfers

            sig { returns(String) }
            attr_accessor :cash_advances

            sig { returns(String) }
            attr_accessor :purchases

            sig do
              params(
                balance_transfers: String,
                cash_advances: String,
                purchases: String
              ).returns(T.attached_class)
            end
            def self.new(balance_transfers:, cash_advances:, purchases:)
            end

            sig { override.returns({balance_transfers: String, cash_advances: String, purchases: String}) }
            def to_hash
            end
          end
        end

        class MinimumPaymentBalance < Lithic::BaseModel
          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(Integer) }
          attr_accessor :remaining

          sig { params(amount: Integer, remaining: Integer).returns(T.attached_class) }
          def self.new(amount:, remaining:)
          end

          sig { override.returns({amount: Integer, remaining: Integer}) }
          def to_hash
          end
        end

        class PaymentAllocation < Lithic::BaseModel
          sig { returns(Integer) }
          attr_accessor :fees

          sig { returns(Integer) }
          attr_accessor :interest

          sig { returns(Integer) }
          attr_accessor :principal

          sig { params(fees: Integer, interest: Integer, principal: Integer).returns(T.attached_class) }
          def self.new(fees:, interest:, principal:)
          end

          sig { override.returns({fees: Integer, interest: Integer, principal: Integer}) }
          def to_hash
          end
        end

        class PeriodTotals < Lithic::BaseModel
          # Opening balance transferred from previous account in cents
          sig { returns(Integer) }
          attr_accessor :balance_transfers

          # ATM and cashback transactions in cents
          sig { returns(Integer) }
          attr_accessor :cash_advances

          # Volume of credit management operation transactions less any balance transfers in
          #   cents
          sig { returns(Integer) }
          attr_accessor :credits

          # Volume of debit management operation transactions less any interest in cents
          sig { returns(Integer) }
          attr_accessor :fees

          # Interest accrued in cents
          sig { returns(Integer) }
          attr_accessor :interest

          # Any funds transfers which affective the balance in cents
          sig { returns(Integer) }
          attr_accessor :payments

          # Net card transaction volume less any cash advances in cents
          sig { returns(Integer) }
          attr_accessor :purchases

          sig do
            params(
              balance_transfers: Integer,
              cash_advances: Integer,
              credits: Integer,
              fees: Integer,
              interest: Integer,
              payments: Integer,
              purchases: Integer
            )
              .returns(T.attached_class)
          end
          def self.new(balance_transfers:, cash_advances:, credits:, fees:, interest:, payments:, purchases:)
          end

          sig do
            override
              .returns(
                {
                  balance_transfers: Integer,
                  cash_advances: Integer,
                  credits: Integer,
                  fees: Integer,
                  interest: Integer,
                  payments: Integer,
                  purchases: Integer
                }
              )
          end
          def to_hash
          end
        end

        class PreviousStatementBalance < Lithic::BaseModel
          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(Integer) }
          attr_accessor :remaining

          sig { params(amount: Integer, remaining: Integer).returns(T.attached_class) }
          def self.new(amount:, remaining:)
          end

          sig { override.returns({amount: Integer, remaining: Integer}) }
          def to_hash
          end
        end

        class YtdTotals < Lithic::BaseModel
          # Opening balance transferred from previous account in cents
          sig { returns(Integer) }
          attr_accessor :balance_transfers

          # ATM and cashback transactions in cents
          sig { returns(Integer) }
          attr_accessor :cash_advances

          # Volume of credit management operation transactions less any balance transfers in
          #   cents
          sig { returns(Integer) }
          attr_accessor :credits

          # Volume of debit management operation transactions less any interest in cents
          sig { returns(Integer) }
          attr_accessor :fees

          # Interest accrued in cents
          sig { returns(Integer) }
          attr_accessor :interest

          # Any funds transfers which affective the balance in cents
          sig { returns(Integer) }
          attr_accessor :payments

          # Net card transaction volume less any cash advances in cents
          sig { returns(Integer) }
          attr_accessor :purchases

          sig do
            params(
              balance_transfers: Integer,
              cash_advances: Integer,
              credits: Integer,
              fees: Integer,
              interest: Integer,
              payments: Integer,
              purchases: Integer
            )
              .returns(T.attached_class)
          end
          def self.new(balance_transfers:, cash_advances:, credits:, fees:, interest:, payments:, purchases:)
          end

          sig do
            override
              .returns(
                {
                  balance_transfers: Integer,
                  cash_advances: Integer,
                  credits: Integer,
                  fees: Integer,
                  interest: Integer,
                  payments: Integer,
                  purchases: Integer
                }
              )
          end
          def to_hash
          end
        end
      end
    end
  end
end
