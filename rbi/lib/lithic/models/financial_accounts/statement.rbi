# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class Statement < Lithic::BaseModel
        # Globally unique identifier for a statement
        sig { returns(String) }
        attr_accessor :token

        sig { returns(Lithic::Models::FinancialAccounts::Statement::AccountStanding) }
        attr_reader :account_standing

        sig do
          params(
            account_standing: T.any(Lithic::Models::FinancialAccounts::Statement::AccountStanding, Lithic::Util::AnyHash)
          )
            .void
        end
        attr_writer :account_standing

        sig { returns(Lithic::Models::FinancialAccounts::Statement::AmountDue) }
        attr_reader :amount_due

        sig do
          params(amount_due: T.any(Lithic::Models::FinancialAccounts::Statement::AmountDue, Lithic::Util::AnyHash))
            .void
        end
        attr_writer :amount_due

        # Amount of credit available to spend in cents
        sig { returns(Integer) }
        attr_accessor :available_credit

        # Timestamp of when the statement was created
        sig { returns(Time) }
        attr_accessor :created

        # This is the maximum credit balance extended by the lender in cents
        sig { returns(Integer) }
        attr_accessor :credit_limit

        # Globally unique identifier for a credit product
        sig { returns(String) }
        attr_accessor :credit_product_token

        # Number of days in the billing cycle
        sig { returns(Integer) }
        attr_accessor :days_in_billing_cycle

        # Balance at the end of the billing period. For charge cards, this should be the
        #   same at the statement amount due in cents
        sig { returns(Integer) }
        attr_accessor :ending_balance

        # Globally unique identifier for a financial account
        sig { returns(String) }
        attr_accessor :financial_account_token

        # Date when the payment is due
        sig { returns(T.nilable(Date)) }
        attr_accessor :payment_due_date

        sig { returns(Lithic::Models::FinancialAccounts::Statement::PeriodTotals) }
        attr_reader :period_totals

        sig do
          params(
            period_totals: T.any(Lithic::Models::FinancialAccounts::Statement::PeriodTotals, Lithic::Util::AnyHash)
          )
            .void
        end
        attr_writer :period_totals

        # Balance at the start of the billing period
        sig { returns(Integer) }
        attr_accessor :starting_balance

        # Date when the billing period ended
        sig { returns(Date) }
        attr_accessor :statement_end_date

        # Date when the billing period began
        sig { returns(Date) }
        attr_accessor :statement_start_date

        sig { returns(Lithic::Models::FinancialAccounts::Statement::StatementType::TaggedSymbol) }
        attr_accessor :statement_type

        # Timestamp of when the statement was updated
        sig { returns(Time) }
        attr_accessor :updated

        sig { returns(Lithic::Models::FinancialAccounts::Statement::YtdTotals) }
        attr_reader :ytd_totals

        sig do
          params(ytd_totals: T.any(Lithic::Models::FinancialAccounts::Statement::YtdTotals, Lithic::Util::AnyHash))
            .void
        end
        attr_writer :ytd_totals

        sig { returns(T.nilable(Lithic::Models::FinancialAccounts::Statement::InterestDetails)) }
        attr_reader :interest_details

        sig do
          params(
            interest_details: T.nilable(T.any(Lithic::Models::FinancialAccounts::Statement::InterestDetails, Lithic::Util::AnyHash))
          )
            .void
        end
        attr_writer :interest_details

        # Date when the next payment is due
        sig { returns(T.nilable(Date)) }
        attr_reader :next_payment_due_date

        sig { params(next_payment_due_date: Date).void }
        attr_writer :next_payment_due_date

        # Date when the next billing period will end
        sig { returns(T.nilable(Date)) }
        attr_reader :next_statement_end_date

        sig { params(next_statement_end_date: Date).void }
        attr_writer :next_statement_end_date

        sig do
          params(
            token: String,
            account_standing: T.any(Lithic::Models::FinancialAccounts::Statement::AccountStanding, Lithic::Util::AnyHash),
            amount_due: T.any(Lithic::Models::FinancialAccounts::Statement::AmountDue, Lithic::Util::AnyHash),
            available_credit: Integer,
            created: Time,
            credit_limit: Integer,
            credit_product_token: String,
            days_in_billing_cycle: Integer,
            ending_balance: Integer,
            financial_account_token: String,
            payment_due_date: T.nilable(Date),
            period_totals: T.any(Lithic::Models::FinancialAccounts::Statement::PeriodTotals, Lithic::Util::AnyHash),
            starting_balance: Integer,
            statement_end_date: Date,
            statement_start_date: Date,
            statement_type: Lithic::Models::FinancialAccounts::Statement::StatementType::OrSymbol,
            updated: Time,
            ytd_totals: T.any(Lithic::Models::FinancialAccounts::Statement::YtdTotals, Lithic::Util::AnyHash),
            interest_details: T.nilable(T.any(Lithic::Models::FinancialAccounts::Statement::InterestDetails, Lithic::Util::AnyHash)),
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
                statement_type: Lithic::Models::FinancialAccounts::Statement::StatementType::TaggedSymbol,
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
          sig { returns(Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState) }
          attr_reader :financial_account_state

          sig do
            params(
              financial_account_state: T.any(
                Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState,
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

          sig { returns(Lithic::Models::FinancialAccounts::Statement::AccountStanding::PeriodState::TaggedSymbol) }
          attr_accessor :period_state

          sig do
            params(
              consecutive_full_payments_made: Integer,
              consecutive_minimum_payments_made: Integer,
              consecutive_minimum_payments_missed: Integer,
              days_past_due: Integer,
              financial_account_state: T.any(
                Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState,
                Lithic::Util::AnyHash
              ),
              has_grace: T::Boolean,
              period_number: Integer,
              period_state: Lithic::Models::FinancialAccounts::Statement::AccountStanding::PeriodState::OrSymbol
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
                  financial_account_state: Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState,
                  has_grace: T::Boolean,
                  period_number: Integer,
                  period_state: Lithic::Models::FinancialAccounts::Statement::AccountStanding::PeriodState::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          class FinancialAccountState < Lithic::BaseModel
            # Status of the financial account
            sig do
              returns(
                Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            # Reason for the financial account status change
            sig do
              returns(
                T.nilable(
                  Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::StatusChangeReason::TaggedSymbol
                )
              )
            end
            attr_accessor :status_change_reason

            # Information about the financial account state
            sig do
              params(
                status: Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status::OrSymbol,
                status_change_reason: T.nilable(
                  Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::StatusChangeReason::OrSymbol
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
                    status: Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status::TaggedSymbol,
                    status_change_reason: T.nilable(
                      Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::StatusChangeReason::TaggedSymbol
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
                T.type_alias do
                  T.all(Symbol, Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status::TaggedSymbol
                  )
                end

              OPEN =
                T.let(
                  :OPEN,
                  Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status::TaggedSymbol
                )
              CLOSED =
                T.let(
                  :CLOSED,
                  Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status::TaggedSymbol
                )
              SUSPENDED =
                T.let(
                  :SUSPENDED,
                  Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status::TaggedSymbol
                )
              PENDING =
                T.let(
                  :PENDING,
                  Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status::TaggedSymbol]
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
                  T.all(Symbol, Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::StatusChangeReason)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::StatusChangeReason::TaggedSymbol
                  )
                end

              CHARGED_OFF_DELINQUENT =
                T.let(
                  :CHARGED_OFF_DELINQUENT,
                  Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::StatusChangeReason::TaggedSymbol
                )
              CHARGED_OFF_FRAUD =
                T.let(
                  :CHARGED_OFF_FRAUD,
                  Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::StatusChangeReason::TaggedSymbol
                )
              END_USER_REQUEST =
                T.let(
                  :END_USER_REQUEST,
                  Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::StatusChangeReason::TaggedSymbol
                )
              BANK_REQUEST =
                T.let(
                  :BANK_REQUEST,
                  Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::StatusChangeReason::TaggedSymbol
                )
              DELINQUENT =
                T.let(
                  :DELINQUENT,
                  Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::StatusChangeReason::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::StatusChangeReason::TaggedSymbol
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
              T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccounts::Statement::AccountStanding::PeriodState) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Lithic::Models::FinancialAccounts::Statement::AccountStanding::PeriodState::TaggedSymbol
                )
              end

            STANDARD =
              T.let(:STANDARD, Lithic::Models::FinancialAccounts::Statement::AccountStanding::PeriodState::TaggedSymbol)
            PROMO =
              T.let(:PROMO, Lithic::Models::FinancialAccounts::Statement::AccountStanding::PeriodState::TaggedSymbol)
            PENALTY =
              T.let(:PENALTY, Lithic::Models::FinancialAccounts::Statement::AccountStanding::PeriodState::TaggedSymbol)

            sig do
              override
                .returns(
                  T::Array[Lithic::Models::FinancialAccounts::Statement::AccountStanding::PeriodState::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class AmountDue < Lithic::BaseModel
          # Payment due at the end of the billing period in cents. Negative amount indicates
          #   something is owed. If the amount owed is positive there was a net credit. If
          #   auto-collections are enabled this is the amount that will be requested on the
          #   payment due date
          sig { returns(Integer) }
          attr_accessor :amount

          # Amount past due for statement in cents
          sig { returns(Integer) }
          attr_accessor :past_due

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

        module StatementType
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccounts::Statement::StatementType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Lithic::Models::FinancialAccounts::Statement::StatementType::TaggedSymbol) }

          INITIAL = T.let(:INITIAL, Lithic::Models::FinancialAccounts::Statement::StatementType::TaggedSymbol)
          PERIOD_END =
            T.let(:PERIOD_END, Lithic::Models::FinancialAccounts::Statement::StatementType::TaggedSymbol)
          FINAL = T.let(:FINAL, Lithic::Models::FinancialAccounts::Statement::StatementType::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::FinancialAccounts::Statement::StatementType::TaggedSymbol]) }
          def self.values
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

        class InterestDetails < Lithic::BaseModel
          sig { returns(T.nilable(Integer)) }
          attr_accessor :actual_interest_charged

          sig { returns(Lithic::Models::FinancialAccounts::Statement::InterestDetails::DailyBalanceAmounts) }
          attr_reader :daily_balance_amounts

          sig do
            params(
              daily_balance_amounts: T.any(
                Lithic::Models::FinancialAccounts::Statement::InterestDetails::DailyBalanceAmounts,
                Lithic::Util::AnyHash
              )
            )
              .void
          end
          attr_writer :daily_balance_amounts

          sig { returns(Lithic::Models::FinancialAccounts::Statement::InterestDetails::EffectiveApr) }
          attr_reader :effective_apr

          sig do
            params(
              effective_apr: T.any(Lithic::Models::FinancialAccounts::Statement::InterestDetails::EffectiveApr, Lithic::Util::AnyHash)
            )
              .void
          end
          attr_writer :effective_apr

          sig do
            returns(
              Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestCalculationMethod::TaggedSymbol
            )
          end
          attr_accessor :interest_calculation_method

          sig { returns(Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestForPeriod) }
          attr_reader :interest_for_period

          sig do
            params(
              interest_for_period: T.any(
                Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestForPeriod,
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
                Lithic::Models::FinancialAccounts::Statement::InterestDetails::DailyBalanceAmounts,
                Lithic::Util::AnyHash
              ),
              effective_apr: T.any(Lithic::Models::FinancialAccounts::Statement::InterestDetails::EffectiveApr, Lithic::Util::AnyHash),
              interest_calculation_method: Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestCalculationMethod::OrSymbol,
              interest_for_period: T.any(
                Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestForPeriod,
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
                  daily_balance_amounts: Lithic::Models::FinancialAccounts::Statement::InterestDetails::DailyBalanceAmounts,
                  effective_apr: Lithic::Models::FinancialAccounts::Statement::InterestDetails::EffectiveApr,
                  interest_calculation_method: Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestCalculationMethod::TaggedSymbol,
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
              T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestCalculationMethod) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestCalculationMethod::TaggedSymbol
                )
              end

            DAILY =
              T.let(
                :DAILY,
                Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestCalculationMethod::TaggedSymbol
              )
            AVERAGE_DAILY =
              T.let(
                :AVERAGE_DAILY,
                Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestCalculationMethod::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestCalculationMethod::TaggedSymbol]
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
      end
    end
  end
end
