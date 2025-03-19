# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class Statement < Lithic::BaseModel
        # Globally unique identifier for a statement
        sig { returns(String) }
        def token
        end

        sig { params(_: String).returns(String) }
        def token=(_)
        end

        sig { returns(Lithic::Models::FinancialAccounts::Statement::AccountStanding) }
        def account_standing
        end

        sig do
          params(_: Lithic::Models::FinancialAccounts::Statement::AccountStanding)
            .returns(Lithic::Models::FinancialAccounts::Statement::AccountStanding)
        end
        def account_standing=(_)
        end

        sig { returns(Lithic::Models::FinancialAccounts::Statement::AmountDue) }
        def amount_due
        end

        sig do
          params(_: Lithic::Models::FinancialAccounts::Statement::AmountDue)
            .returns(Lithic::Models::FinancialAccounts::Statement::AmountDue)
        end
        def amount_due=(_)
        end

        # Amount of credit available to spend in cents
        sig { returns(Integer) }
        def available_credit
        end

        sig { params(_: Integer).returns(Integer) }
        def available_credit=(_)
        end

        # Timestamp of when the statement was created
        sig { returns(Time) }
        def created
        end

        sig { params(_: Time).returns(Time) }
        def created=(_)
        end

        # This is the maximum credit balance extended by the lender in cents
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

        # Number of days in the billing cycle
        sig { returns(Integer) }
        def days_in_billing_cycle
        end

        sig { params(_: Integer).returns(Integer) }
        def days_in_billing_cycle=(_)
        end

        # Balance at the end of the billing period. For charge cards, this should be the
        #   same at the statement amount due in cents
        sig { returns(Integer) }
        def ending_balance
        end

        sig { params(_: Integer).returns(Integer) }
        def ending_balance=(_)
        end

        # Globally unique identifier for a financial account
        sig { returns(String) }
        def financial_account_token
        end

        sig { params(_: String).returns(String) }
        def financial_account_token=(_)
        end

        # Date when the payment is due
        sig { returns(T.nilable(Date)) }
        def payment_due_date
        end

        sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
        def payment_due_date=(_)
        end

        sig { returns(Lithic::Models::FinancialAccounts::Statement::PeriodTotals) }
        def period_totals
        end

        sig do
          params(_: Lithic::Models::FinancialAccounts::Statement::PeriodTotals)
            .returns(Lithic::Models::FinancialAccounts::Statement::PeriodTotals)
        end
        def period_totals=(_)
        end

        # Balance at the start of the billing period
        sig { returns(Integer) }
        def starting_balance
        end

        sig { params(_: Integer).returns(Integer) }
        def starting_balance=(_)
        end

        # Date when the billing period ended
        sig { returns(Date) }
        def statement_end_date
        end

        sig { params(_: Date).returns(Date) }
        def statement_end_date=(_)
        end

        # Date when the billing period began
        sig { returns(Date) }
        def statement_start_date
        end

        sig { params(_: Date).returns(Date) }
        def statement_start_date=(_)
        end

        sig { returns(Symbol) }
        def statement_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def statement_type=(_)
        end

        # Timestamp of when the statement was updated
        sig { returns(Time) }
        def updated
        end

        sig { params(_: Time).returns(Time) }
        def updated=(_)
        end

        sig { returns(Lithic::Models::FinancialAccounts::Statement::YtdTotals) }
        def ytd_totals
        end

        sig do
          params(_: Lithic::Models::FinancialAccounts::Statement::YtdTotals)
            .returns(Lithic::Models::FinancialAccounts::Statement::YtdTotals)
        end
        def ytd_totals=(_)
        end

        sig { returns(T.nilable(Lithic::Models::FinancialAccounts::Statement::InterestDetails)) }
        def interest_details
        end

        sig do
          params(_: T.nilable(Lithic::Models::FinancialAccounts::Statement::InterestDetails))
            .returns(T.nilable(Lithic::Models::FinancialAccounts::Statement::InterestDetails))
        end
        def interest_details=(_)
        end

        # Date when the next payment is due
        sig { returns(T.nilable(Date)) }
        def next_payment_due_date
        end

        sig { params(_: Date).returns(Date) }
        def next_payment_due_date=(_)
        end

        # Date when the next billing period will end
        sig { returns(T.nilable(Date)) }
        def next_statement_end_date
        end

        sig { params(_: Date).returns(Date) }
        def next_statement_end_date=(_)
        end

        sig do
          params(
            token: String,
            account_standing: Lithic::Models::FinancialAccounts::Statement::AccountStanding,
            amount_due: Lithic::Models::FinancialAccounts::Statement::AmountDue,
            available_credit: Integer,
            created: Time,
            credit_limit: Integer,
            credit_product_token: String,
            days_in_billing_cycle: Integer,
            ending_balance: Integer,
            financial_account_token: String,
            payment_due_date: T.nilable(Date),
            period_totals: Lithic::Models::FinancialAccounts::Statement::PeriodTotals,
            starting_balance: Integer,
            statement_end_date: Date,
            statement_start_date: Date,
            statement_type: Symbol,
            updated: Time,
            ytd_totals: Lithic::Models::FinancialAccounts::Statement::YtdTotals,
            interest_details: T.nilable(Lithic::Models::FinancialAccounts::Statement::InterestDetails),
            next_payment_due_date: Date,
            next_statement_end_date: Date
          )
            .returns(T.attached_class)
        end
        def self.new(
          token:,
          account_standing:,
          amount_due:,
          available_credit:,
          created:,
          credit_limit:,
          credit_product_token:,
          days_in_billing_cycle:,
          ending_balance:,
          financial_account_token:,
          payment_due_date:,
          period_totals:,
          starting_balance:,
          statement_end_date:,
          statement_start_date:,
          statement_type:,
          updated:,
          ytd_totals:,
          interest_details: nil,
          next_payment_due_date: nil,
          next_statement_end_date: nil
        )
        end

        sig do
          override
            .returns(
              {
                token: String,
                account_standing: Lithic::Models::FinancialAccounts::Statement::AccountStanding,
                amount_due: Lithic::Models::FinancialAccounts::Statement::AmountDue,
                available_credit: Integer,
                created: Time,
                credit_limit: Integer,
                credit_product_token: String,
                days_in_billing_cycle: Integer,
                ending_balance: Integer,
                financial_account_token: String,
                payment_due_date: T.nilable(Date),
                period_totals: Lithic::Models::FinancialAccounts::Statement::PeriodTotals,
                starting_balance: Integer,
                statement_end_date: Date,
                statement_start_date: Date,
                statement_type: Symbol,
                updated: Time,
                ytd_totals: Lithic::Models::FinancialAccounts::Statement::YtdTotals,
                interest_details: T.nilable(Lithic::Models::FinancialAccounts::Statement::InterestDetails),
                next_payment_due_date: Date,
                next_statement_end_date: Date
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

          sig { returns(Symbol) }
          def period_state
          end

          sig { params(_: Symbol).returns(Symbol) }
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
              period_state: Symbol
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
                  period_state: Symbol
                }
              )
          end
          def to_hash
          end

          class PeriodState < Lithic::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            STANDARD = :STANDARD
            PROMO = :PROMO
            PENALTY = :PENALTY
          end
        end

        class AmountDue < Lithic::BaseModel
          # Payment due at the end of the billing period in cents. Negative amount indicates
          #   something is owed. If the amount owed is positive there was a net credit. If
          #   auto-collections are enabled this is the amount that will be requested on the
          #   payment due date
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # Amount past due for statement in cents
          sig { returns(Integer) }
          def past_due
          end

          sig { params(_: Integer).returns(Integer) }
          def past_due=(_)
          end

          sig { params(amount: Integer, past_due: Integer).returns(T.attached_class) }
          def self.new(amount:, past_due:)
          end

          sig { override.returns({amount: Integer, past_due: Integer}) }
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

        class StatementType < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          INITIAL = :INITIAL
          PERIOD_END = :PERIOD_END
          FINAL = :FINAL
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

        class InterestDetails < Lithic::BaseModel
          sig { returns(T.nilable(Integer)) }
          def actual_interest_charged
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def actual_interest_charged=(_)
          end

          sig { returns(Lithic::Models::FinancialAccounts::Statement::InterestDetails::DailyBalanceAmounts) }
          def daily_balance_amounts
          end

          sig do
            params(_: Lithic::Models::FinancialAccounts::Statement::InterestDetails::DailyBalanceAmounts)
              .returns(Lithic::Models::FinancialAccounts::Statement::InterestDetails::DailyBalanceAmounts)
          end
          def daily_balance_amounts=(_)
          end

          sig { returns(Lithic::Models::FinancialAccounts::Statement::InterestDetails::EffectiveApr) }
          def effective_apr
          end

          sig do
            params(_: Lithic::Models::FinancialAccounts::Statement::InterestDetails::EffectiveApr)
              .returns(Lithic::Models::FinancialAccounts::Statement::InterestDetails::EffectiveApr)
          end
          def effective_apr=(_)
          end

          sig { returns(Symbol) }
          def interest_calculation_method
          end

          sig { params(_: Symbol).returns(Symbol) }
          def interest_calculation_method=(_)
          end

          sig { returns(Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestForPeriod) }
          def interest_for_period
          end

          sig do
            params(_: Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestForPeriod)
              .returns(Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestForPeriod)
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
              daily_balance_amounts: Lithic::Models::FinancialAccounts::Statement::InterestDetails::DailyBalanceAmounts,
              effective_apr: Lithic::Models::FinancialAccounts::Statement::InterestDetails::EffectiveApr,
              interest_calculation_method: Symbol,
              interest_for_period: Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestForPeriod,
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
                  daily_balance_amounts: Lithic::Models::FinancialAccounts::Statement::InterestDetails::DailyBalanceAmounts,
                  effective_apr: Lithic::Models::FinancialAccounts::Statement::InterestDetails::EffectiveApr,
                  interest_calculation_method: Symbol,
                  interest_for_period: Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestForPeriod,
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

          class InterestCalculationMethod < Lithic::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            DAILY = :DAILY
            AVERAGE_DAILY = :AVERAGE_DAILY
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
      end
    end
  end
end
