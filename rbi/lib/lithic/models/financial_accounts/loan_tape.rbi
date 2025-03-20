# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class LoanTape < Lithic::BaseModel
        # Globally unique identifier for a loan tape
        sig { returns(String) }
        def token
        end

        sig { params(_: String).returns(String) }
        def token=(_)
        end

        sig { returns(Lithic::Models::FinancialAccounts::LoanTape::AccountStanding) }
        def account_standing
        end

        sig do
          params(_: T.any(Lithic::Models::FinancialAccounts::LoanTape::AccountStanding, Lithic::Util::AnyHash))
            .returns(T.any(Lithic::Models::FinancialAccounts::LoanTape::AccountStanding, Lithic::Util::AnyHash))
        end
        def account_standing=(_)
        end

        # Amount of credit available to spend in cents
        sig { returns(Integer) }
        def available_credit
        end

        sig { params(_: Integer).returns(Integer) }
        def available_credit=(_)
        end

        sig { returns(Lithic::Models::FinancialAccounts::LoanTape::Balances) }
        def balances
        end

        sig do
          params(_: T.any(Lithic::Models::FinancialAccounts::LoanTape::Balances, Lithic::Util::AnyHash))
            .returns(T.any(Lithic::Models::FinancialAccounts::LoanTape::Balances, Lithic::Util::AnyHash))
        end
        def balances=(_)
        end

        # Timestamp of when the loan tape was created
        sig { returns(Time) }
        def created
        end

        sig { params(_: Time).returns(Time) }
        def created=(_)
        end

        # For prepay accounts, this is the minimum prepay balance that must be maintained.
        #   For charge card accounts, this is the maximum credit balance extended by a
        #   lender
        sig { returns(Integer) }
        def credit_limit
        end

        sig { params(_: Integer).returns(Integer) }
        def credit_limit=(_)
        end

        # Globally unique identifier for a credit product
        sig { returns(String) }
        def credit_product_token
        end

        sig { params(_: String).returns(String) }
        def credit_product_token=(_)
        end

        # Date of transactions that this loan tape covers
        sig { returns(Date) }
        def date
        end

        sig { params(_: Date).returns(Date) }
        def date=(_)
        end

        sig { returns(Lithic::Models::FinancialAccounts::LoanTape::DayTotals) }
        def day_totals
        end

        sig do
          params(_: T.any(Lithic::Models::FinancialAccounts::LoanTape::DayTotals, Lithic::Util::AnyHash))
            .returns(T.any(Lithic::Models::FinancialAccounts::LoanTape::DayTotals, Lithic::Util::AnyHash))
        end
        def day_totals=(_)
        end

        # Balance at the end of the day
        sig { returns(Integer) }
        def ending_balance
        end

        sig { params(_: Integer).returns(Integer) }
        def ending_balance=(_)
        end

        # Excess credits in the form of provisional credits, payments, or purchase
        #   refunds. If positive, the account is in net credit state with no outstanding
        #   balances. An overpayment could land an account in this state
        sig { returns(Integer) }
        def excess_credits
        end

        sig { params(_: Integer).returns(Integer) }
        def excess_credits=(_)
        end

        # Globally unique identifier for a financial account
        sig { returns(String) }
        def financial_account_token
        end

        sig { params(_: String).returns(String) }
        def financial_account_token=(_)
        end

        sig { returns(T.nilable(Lithic::Models::FinancialAccounts::LoanTape::InterestDetails)) }
        def interest_details
        end

        sig do
          params(
            _: T.nilable(T.any(Lithic::Models::FinancialAccounts::LoanTape::InterestDetails, Lithic::Util::AnyHash))
          )
            .returns(
              T.nilable(T.any(Lithic::Models::FinancialAccounts::LoanTape::InterestDetails, Lithic::Util::AnyHash))
            )
        end
        def interest_details=(_)
        end

        sig { returns(Lithic::Models::FinancialAccounts::LoanTape::MinimumPaymentBalance) }
        def minimum_payment_balance
        end

        sig do
          params(
            _: T.any(Lithic::Models::FinancialAccounts::LoanTape::MinimumPaymentBalance, Lithic::Util::AnyHash)
          )
            .returns(T.any(Lithic::Models::FinancialAccounts::LoanTape::MinimumPaymentBalance, Lithic::Util::AnyHash))
        end
        def minimum_payment_balance=(_)
        end

        sig { returns(Lithic::Models::FinancialAccounts::LoanTape::PaymentAllocation) }
        def payment_allocation
        end

        sig do
          params(_: T.any(Lithic::Models::FinancialAccounts::LoanTape::PaymentAllocation, Lithic::Util::AnyHash))
            .returns(T.any(Lithic::Models::FinancialAccounts::LoanTape::PaymentAllocation, Lithic::Util::AnyHash))
        end
        def payment_allocation=(_)
        end

        sig { returns(Lithic::Models::FinancialAccounts::LoanTape::PeriodTotals) }
        def period_totals
        end

        sig do
          params(_: T.any(Lithic::Models::FinancialAccounts::LoanTape::PeriodTotals, Lithic::Util::AnyHash))
            .returns(T.any(Lithic::Models::FinancialAccounts::LoanTape::PeriodTotals, Lithic::Util::AnyHash))
        end
        def period_totals=(_)
        end

        sig { returns(Lithic::Models::FinancialAccounts::LoanTape::PreviousStatementBalance) }
        def previous_statement_balance
        end

        sig do
          params(
            _: T.any(Lithic::Models::FinancialAccounts::LoanTape::PreviousStatementBalance, Lithic::Util::AnyHash)
          )
            .returns(
              T.any(Lithic::Models::FinancialAccounts::LoanTape::PreviousStatementBalance, Lithic::Util::AnyHash)
            )
        end
        def previous_statement_balance=(_)
        end

        # Balance at the start of the day
        sig { returns(Integer) }
        def starting_balance
        end

        sig { params(_: Integer).returns(Integer) }
        def starting_balance=(_)
        end

        # Timestamp of when the loan tape was updated
        sig { returns(Time) }
        def updated
        end

        sig { params(_: Time).returns(Time) }
        def updated=(_)
        end

        # Version number of the loan tape. This starts at 1
        sig { returns(Integer) }
        def version
        end

        sig { params(_: Integer).returns(Integer) }
        def version=(_)
        end

        sig { returns(Lithic::Models::FinancialAccounts::LoanTape::YtdTotals) }
        def ytd_totals
        end

        sig do
          params(_: T.any(Lithic::Models::FinancialAccounts::LoanTape::YtdTotals, Lithic::Util::AnyHash))
            .returns(T.any(Lithic::Models::FinancialAccounts::LoanTape::YtdTotals, Lithic::Util::AnyHash))
        end
        def ytd_totals=(_)
        end

        # Interest tier to which this account belongs to
        sig { returns(T.nilable(String)) }
        def tier
        end

        sig { params(_: String).returns(String) }
        def tier=(_)
        end

        sig do
          params(
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
          def consecutive_full_payments_made
          end

          sig { params(_: Integer).returns(Integer) }
          def consecutive_full_payments_made=(_)
          end

          # Number of consecutive minimum payments made
          sig { returns(Integer) }
          def consecutive_minimum_payments_made
          end

          sig { params(_: Integer).returns(Integer) }
          def consecutive_minimum_payments_made=(_)
          end

          # Number of consecutive minimum payments missed
          sig { returns(Integer) }
          def consecutive_minimum_payments_missed
          end

          sig { params(_: Integer).returns(Integer) }
          def consecutive_minimum_payments_missed=(_)
          end

          # Number of days past due
          sig { returns(Integer) }
          def days_past_due
          end

          sig { params(_: Integer).returns(Integer) }
          def days_past_due=(_)
          end

          # Whether the account currently has grace or not
          sig { returns(T::Boolean) }
          def has_grace
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def has_grace=(_)
          end

          # Current overall period number
          sig { returns(Integer) }
          def period_number
          end

          sig { params(_: Integer).returns(Integer) }
          def period_number=(_)
          end

          sig { returns(Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::PeriodState::TaggedSymbol) }
          def period_state
          end

          sig do
            params(_: Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::PeriodState::TaggedSymbol)
              .returns(Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::PeriodState::TaggedSymbol)
          end
          def period_state=(_)
          end

          sig do
            params(
              consecutive_full_payments_made: Integer,
              consecutive_minimum_payments_made: Integer,
              consecutive_minimum_payments_missed: Integer,
              days_past_due: Integer,
              has_grace: T::Boolean,
              period_number: Integer,
              period_state: Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::PeriodState::TaggedSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            consecutive_full_payments_made:,
            consecutive_minimum_payments_made:,
            consecutive_minimum_payments_missed:,
            days_past_due:,
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
                  has_grace: T::Boolean,
                  period_number: Integer,
                  period_state: Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::PeriodState::TaggedSymbol
                }
              )
          end
          def to_hash
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

            class << self
              sig do
                override
                  .returns(T::Array[Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::PeriodState::TaggedSymbol])
              end
              def values
              end
            end
          end
        end

        class Balances < Lithic::BaseModel
          # Amount due for the prior billing cycle. Any amounts not fully paid off on this
          #   due date will be considered past due the next day
          sig { returns(Lithic::Models::FinancialAccounts::LoanTape::Balances::Due) }
          def due
          end

          sig do
            params(_: T.any(Lithic::Models::FinancialAccounts::LoanTape::Balances::Due, Lithic::Util::AnyHash))
              .returns(T.any(Lithic::Models::FinancialAccounts::LoanTape::Balances::Due, Lithic::Util::AnyHash))
          end
          def due=(_)
          end

          # Amount due for the current billing cycle. Any amounts not paid off by early
          #   payments or credits will be considered due at the end of the current billing
          #   period
          sig { returns(Lithic::Models::FinancialAccounts::LoanTape::Balances::NextStatementDue) }
          def next_statement_due
          end

          sig do
            params(
              _: T.any(Lithic::Models::FinancialAccounts::LoanTape::Balances::NextStatementDue, Lithic::Util::AnyHash)
            )
              .returns(
                T.any(Lithic::Models::FinancialAccounts::LoanTape::Balances::NextStatementDue, Lithic::Util::AnyHash)
              )
          end
          def next_statement_due=(_)
          end

          # Amount not paid off on previous due dates
          sig { returns(Lithic::Models::FinancialAccounts::LoanTape::Balances::PastDue) }
          def past_due
          end

          sig do
            params(_: T.any(Lithic::Models::FinancialAccounts::LoanTape::Balances::PastDue, Lithic::Util::AnyHash))
              .returns(T.any(Lithic::Models::FinancialAccounts::LoanTape::Balances::PastDue, Lithic::Util::AnyHash))
          end
          def past_due=(_)
          end

          # Amount due for the past billing cycles.
          sig { returns(Lithic::Models::FinancialAccounts::LoanTape::Balances::PastStatementsDue) }
          def past_statements_due
          end

          sig do
            params(
              _: T.any(Lithic::Models::FinancialAccounts::LoanTape::Balances::PastStatementsDue, Lithic::Util::AnyHash)
            )
              .returns(
                T.any(Lithic::Models::FinancialAccounts::LoanTape::Balances::PastStatementsDue, Lithic::Util::AnyHash)
              )
          end
          def past_statements_due=(_)
          end

          sig do
            params(
              due: Lithic::Models::FinancialAccounts::LoanTape::Balances::Due,
              next_statement_due: Lithic::Models::FinancialAccounts::LoanTape::Balances::NextStatementDue,
              past_due: Lithic::Models::FinancialAccounts::LoanTape::Balances::PastDue,
              past_statements_due: Lithic::Models::FinancialAccounts::LoanTape::Balances::PastStatementsDue
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
            def fees
            end

            sig { params(_: Integer).returns(Integer) }
            def fees=(_)
            end

            sig { returns(Integer) }
            def interest
            end

            sig { params(_: Integer).returns(Integer) }
            def interest=(_)
            end

            sig { returns(Integer) }
            def principal
            end

            sig { params(_: Integer).returns(Integer) }
            def principal=(_)
            end

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
            def fees
            end

            sig { params(_: Integer).returns(Integer) }
            def fees=(_)
            end

            sig { returns(Integer) }
            def interest
            end

            sig { params(_: Integer).returns(Integer) }
            def interest=(_)
            end

            sig { returns(Integer) }
            def principal
            end

            sig { params(_: Integer).returns(Integer) }
            def principal=(_)
            end

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
            def fees
            end

            sig { params(_: Integer).returns(Integer) }
            def fees=(_)
            end

            sig { returns(Integer) }
            def interest
            end

            sig { params(_: Integer).returns(Integer) }
            def interest=(_)
            end

            sig { returns(Integer) }
            def principal
            end

            sig { params(_: Integer).returns(Integer) }
            def principal=(_)
            end

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
            def fees
            end

            sig { params(_: Integer).returns(Integer) }
            def fees=(_)
            end

            sig { returns(Integer) }
            def interest
            end

            sig { params(_: Integer).returns(Integer) }
            def interest=(_)
            end

            sig { returns(Integer) }
            def principal
            end

            sig { params(_: Integer).returns(Integer) }
            def principal=(_)
            end

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
          def balance_transfers
          end

          sig { params(_: Integer).returns(Integer) }
          def balance_transfers=(_)
          end

          # ATM and cashback transactions in cents
          sig { returns(Integer) }
          def cash_advances
          end

          sig { params(_: Integer).returns(Integer) }
          def cash_advances=(_)
          end

          # Volume of credit management operation transactions less any balance transfers in
          #   cents
          sig { returns(Integer) }
          def credits
          end

          sig { params(_: Integer).returns(Integer) }
          def credits=(_)
          end

          # Volume of debit management operation transactions less any interest in cents
          sig { returns(Integer) }
          def fees
          end

          sig { params(_: Integer).returns(Integer) }
          def fees=(_)
          end

          # Interest accrued in cents
          sig { returns(Integer) }
          def interest
          end

          sig { params(_: Integer).returns(Integer) }
          def interest=(_)
          end

          # Any funds transfers which affective the balance in cents
          sig { returns(Integer) }
          def payments
          end

          sig { params(_: Integer).returns(Integer) }
          def payments=(_)
          end

          # Net card transaction volume less any cash advances in cents
          sig { returns(Integer) }
          def purchases
          end

          sig { params(_: Integer).returns(Integer) }
          def purchases=(_)
          end

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
          def actual_interest_charged
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def actual_interest_charged=(_)
          end

          sig { returns(Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::DailyBalanceAmounts) }
          def daily_balance_amounts
          end

          sig do
            params(
              _: T.any(
                Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::DailyBalanceAmounts,
                Lithic::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::DailyBalanceAmounts,
                  Lithic::Util::AnyHash
                )
              )
          end
          def daily_balance_amounts=(_)
          end

          sig { returns(Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::EffectiveApr) }
          def effective_apr
          end

          sig do
            params(
              _: T.any(Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::EffectiveApr, Lithic::Util::AnyHash)
            )
              .returns(
                T.any(Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::EffectiveApr, Lithic::Util::AnyHash)
              )
          end
          def effective_apr=(_)
          end

          sig do
            returns(
              Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod::TaggedSymbol
            )
          end
          def interest_calculation_method
          end

          sig do
            params(
              _: Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod::TaggedSymbol
            )
              .returns(
                Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod::TaggedSymbol
              )
          end
          def interest_calculation_method=(_)
          end

          sig { returns(Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestForPeriod) }
          def interest_for_period
          end

          sig do
            params(
              _: T.any(
                Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestForPeriod,
                Lithic::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestForPeriod,
                  Lithic::Util::AnyHash
                )
              )
          end
          def interest_for_period=(_)
          end

          sig { returns(T.nilable(String)) }
          def prime_rate
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def prime_rate=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def minimum_interest_charged
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def minimum_interest_charged=(_)
          end

          sig do
            params(
              actual_interest_charged: T.nilable(Integer),
              daily_balance_amounts: Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::DailyBalanceAmounts,
              effective_apr: Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::EffectiveApr,
              interest_calculation_method: Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod::TaggedSymbol,
              interest_for_period: Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestForPeriod,
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
            def balance_transfers
            end

            sig { params(_: String).returns(String) }
            def balance_transfers=(_)
            end

            sig { returns(String) }
            def cash_advances
            end

            sig { params(_: String).returns(String) }
            def cash_advances=(_)
            end

            sig { returns(String) }
            def purchases
            end

            sig { params(_: String).returns(String) }
            def purchases=(_)
            end

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
            def balance_transfers
            end

            sig { params(_: String).returns(String) }
            def balance_transfers=(_)
            end

            sig { returns(String) }
            def cash_advances
            end

            sig { params(_: String).returns(String) }
            def cash_advances=(_)
            end

            sig { returns(String) }
            def purchases
            end

            sig { params(_: String).returns(String) }
            def purchases=(_)
            end

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

            class << self
              sig do
                override
                  .returns(
                    T::Array[Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod::TaggedSymbol]
                  )
              end
              def values
              end
            end
          end

          class InterestForPeriod < Lithic::BaseModel
            sig { returns(String) }
            def balance_transfers
            end

            sig { params(_: String).returns(String) }
            def balance_transfers=(_)
            end

            sig { returns(String) }
            def cash_advances
            end

            sig { params(_: String).returns(String) }
            def cash_advances=(_)
            end

            sig { returns(String) }
            def purchases
            end

            sig { params(_: String).returns(String) }
            def purchases=(_)
            end

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
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(Integer) }
          def remaining
          end

          sig { params(_: Integer).returns(Integer) }
          def remaining=(_)
          end

          sig { params(amount: Integer, remaining: Integer).returns(T.attached_class) }
          def self.new(amount:, remaining:)
          end

          sig { override.returns({amount: Integer, remaining: Integer}) }
          def to_hash
          end
        end

        class PaymentAllocation < Lithic::BaseModel
          sig { returns(Integer) }
          def fees
          end

          sig { params(_: Integer).returns(Integer) }
          def fees=(_)
          end

          sig { returns(Integer) }
          def interest
          end

          sig { params(_: Integer).returns(Integer) }
          def interest=(_)
          end

          sig { returns(Integer) }
          def principal
          end

          sig { params(_: Integer).returns(Integer) }
          def principal=(_)
          end

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
          def balance_transfers
          end

          sig { params(_: Integer).returns(Integer) }
          def balance_transfers=(_)
          end

          # ATM and cashback transactions in cents
          sig { returns(Integer) }
          def cash_advances
          end

          sig { params(_: Integer).returns(Integer) }
          def cash_advances=(_)
          end

          # Volume of credit management operation transactions less any balance transfers in
          #   cents
          sig { returns(Integer) }
          def credits
          end

          sig { params(_: Integer).returns(Integer) }
          def credits=(_)
          end

          # Volume of debit management operation transactions less any interest in cents
          sig { returns(Integer) }
          def fees
          end

          sig { params(_: Integer).returns(Integer) }
          def fees=(_)
          end

          # Interest accrued in cents
          sig { returns(Integer) }
          def interest
          end

          sig { params(_: Integer).returns(Integer) }
          def interest=(_)
          end

          # Any funds transfers which affective the balance in cents
          sig { returns(Integer) }
          def payments
          end

          sig { params(_: Integer).returns(Integer) }
          def payments=(_)
          end

          # Net card transaction volume less any cash advances in cents
          sig { returns(Integer) }
          def purchases
          end

          sig { params(_: Integer).returns(Integer) }
          def purchases=(_)
          end

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
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(Integer) }
          def remaining
          end

          sig { params(_: Integer).returns(Integer) }
          def remaining=(_)
          end

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
          def balance_transfers
          end

          sig { params(_: Integer).returns(Integer) }
          def balance_transfers=(_)
          end

          # ATM and cashback transactions in cents
          sig { returns(Integer) }
          def cash_advances
          end

          sig { params(_: Integer).returns(Integer) }
          def cash_advances=(_)
          end

          # Volume of credit management operation transactions less any balance transfers in
          #   cents
          sig { returns(Integer) }
          def credits
          end

          sig { params(_: Integer).returns(Integer) }
          def credits=(_)
          end

          # Volume of debit management operation transactions less any interest in cents
          sig { returns(Integer) }
          def fees
          end

          sig { params(_: Integer).returns(Integer) }
          def fees=(_)
          end

          # Interest accrued in cents
          sig { returns(Integer) }
          def interest
          end

          sig { params(_: Integer).returns(Integer) }
          def interest=(_)
          end

          # Any funds transfers which affective the balance in cents
          sig { returns(Integer) }
          def payments
          end

          sig { params(_: Integer).returns(Integer) }
          def payments=(_)
          end

          # Net card transaction volume less any cash advances in cents
          sig { returns(Integer) }
          def purchases
          end

          sig { params(_: Integer).returns(Integer) }
          def purchases=(_)
          end

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
