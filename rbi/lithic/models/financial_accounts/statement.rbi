# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class Statement < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::FinancialAccounts::Statement,
              Lithic::Internal::AnyHash
            )
          end

        # Globally unique identifier for a statement
        sig { returns(String) }
        attr_accessor :token

        sig { returns(Lithic::FinancialAccounts::Statement::AccountStanding) }
        attr_reader :account_standing

        sig do
          params(
            account_standing:
              Lithic::FinancialAccounts::Statement::AccountStanding::OrHash
          ).void
        end
        attr_writer :account_standing

        sig { returns(Lithic::FinancialAccounts::Statement::AmountDue) }
        attr_reader :amount_due

        sig do
          params(
            amount_due: Lithic::FinancialAccounts::Statement::AmountDue::OrHash
          ).void
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
        # same at the statement amount due in cents
        sig { returns(Integer) }
        attr_accessor :ending_balance

        # Globally unique identifier for a financial account
        sig { returns(String) }
        attr_accessor :financial_account_token

        # Date when the payment is due
        sig { returns(T.nilable(Date)) }
        attr_accessor :payment_due_date

        sig { returns(Lithic::StatementTotals) }
        attr_reader :period_totals

        sig { params(period_totals: Lithic::StatementTotals::OrHash).void }
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

        sig do
          returns(
            Lithic::FinancialAccounts::Statement::StatementType::TaggedSymbol
          )
        end
        attr_accessor :statement_type

        # Timestamp of when the statement was updated
        sig { returns(Time) }
        attr_accessor :updated

        sig { returns(Lithic::StatementTotals) }
        attr_reader :ytd_totals

        sig { params(ytd_totals: Lithic::StatementTotals::OrHash).void }
        attr_writer :ytd_totals

        sig do
          returns(
            T.nilable(Lithic::FinancialAccounts::Statement::InterestDetails)
          )
        end
        attr_reader :interest_details

        sig do
          params(
            interest_details:
              T.nilable(
                Lithic::FinancialAccounts::Statement::InterestDetails::OrHash
              )
          ).void
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

        # Details on number and size of payments to pay off balance
        sig do
          returns(
            T.nilable(Lithic::FinancialAccounts::Statement::PayoffDetails)
          )
        end
        attr_reader :payoff_details

        sig do
          params(
            payoff_details:
              T.nilable(
                Lithic::FinancialAccounts::Statement::PayoffDetails::OrHash
              )
          ).void
        end
        attr_writer :payoff_details

        sig do
          params(
            token: String,
            account_standing:
              Lithic::FinancialAccounts::Statement::AccountStanding::OrHash,
            amount_due: Lithic::FinancialAccounts::Statement::AmountDue::OrHash,
            available_credit: Integer,
            created: Time,
            credit_limit: Integer,
            credit_product_token: String,
            days_in_billing_cycle: Integer,
            ending_balance: Integer,
            financial_account_token: String,
            payment_due_date: T.nilable(Date),
            period_totals: Lithic::StatementTotals::OrHash,
            starting_balance: Integer,
            statement_end_date: Date,
            statement_start_date: Date,
            statement_type:
              Lithic::FinancialAccounts::Statement::StatementType::OrSymbol,
            updated: Time,
            ytd_totals: Lithic::StatementTotals::OrHash,
            interest_details:
              T.nilable(
                Lithic::FinancialAccounts::Statement::InterestDetails::OrHash
              ),
            next_payment_due_date: Date,
            next_statement_end_date: Date,
            payoff_details:
              T.nilable(
                Lithic::FinancialAccounts::Statement::PayoffDetails::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier for a statement
          token:,
          account_standing:,
          amount_due:,
          # Amount of credit available to spend in cents
          available_credit:,
          # Timestamp of when the statement was created
          created:,
          # This is the maximum credit balance extended by the lender in cents
          credit_limit:,
          # Globally unique identifier for a credit product
          credit_product_token:,
          # Number of days in the billing cycle
          days_in_billing_cycle:,
          # Balance at the end of the billing period. For charge cards, this should be the
          # same at the statement amount due in cents
          ending_balance:,
          # Globally unique identifier for a financial account
          financial_account_token:,
          # Date when the payment is due
          payment_due_date:,
          period_totals:,
          # Balance at the start of the billing period
          starting_balance:,
          # Date when the billing period ended
          statement_end_date:,
          # Date when the billing period began
          statement_start_date:,
          statement_type:,
          # Timestamp of when the statement was updated
          updated:,
          ytd_totals:,
          interest_details: nil,
          # Date when the next payment is due
          next_payment_due_date: nil,
          # Date when the next billing period will end
          next_statement_end_date: nil,
          # Details on number and size of payments to pay off balance
          payoff_details: nil
        )
        end

        sig do
          override.returns(
            {
              token: String,
              account_standing:
                Lithic::FinancialAccounts::Statement::AccountStanding,
              amount_due: Lithic::FinancialAccounts::Statement::AmountDue,
              available_credit: Integer,
              created: Time,
              credit_limit: Integer,
              credit_product_token: String,
              days_in_billing_cycle: Integer,
              ending_balance: Integer,
              financial_account_token: String,
              payment_due_date: T.nilable(Date),
              period_totals: Lithic::StatementTotals,
              starting_balance: Integer,
              statement_end_date: Date,
              statement_start_date: Date,
              statement_type:
                Lithic::FinancialAccounts::Statement::StatementType::TaggedSymbol,
              updated: Time,
              ytd_totals: Lithic::StatementTotals,
              interest_details:
                T.nilable(
                  Lithic::FinancialAccounts::Statement::InterestDetails
                ),
              next_payment_due_date: Date,
              next_statement_end_date: Date,
              payoff_details:
                T.nilable(Lithic::FinancialAccounts::Statement::PayoffDetails)
            }
          )
        end
        def to_hash
        end

        class AccountStanding < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::FinancialAccounts::Statement::AccountStanding,
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
              Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState
            )
          end
          attr_reader :financial_account_state

          sig do
            params(
              financial_account_state:
                Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::OrHash
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
              Lithic::FinancialAccounts::Statement::AccountStanding::PeriodState::TaggedSymbol
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
                Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::OrHash,
              has_grace: T::Boolean,
              period_number: Integer,
              period_state:
                Lithic::FinancialAccounts::Statement::AccountStanding::PeriodState::OrSymbol
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
                  Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState,
                has_grace: T::Boolean,
                period_number: Integer,
                period_state:
                  Lithic::FinancialAccounts::Statement::AccountStanding::PeriodState::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          class FinancialAccountState < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState,
                  Lithic::Internal::AnyHash
                )
              end

            # Status of the financial account
            sig do
              returns(
                Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            # Substatus for the financial account
            sig do
              returns(
                T.nilable(
                  Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Substatus::TaggedSymbol
                )
              )
            end
            attr_accessor :substatus

            # Information about the financial account state
            sig do
              params(
                status:
                  Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status::OrSymbol,
                substatus:
                  T.nilable(
                    Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Substatus::OrSymbol
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
                    Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status::TaggedSymbol,
                  substatus:
                    T.nilable(
                      Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Substatus::TaggedSymbol
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
                    Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              OPEN =
                T.let(
                  :OPEN,
                  Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status::TaggedSymbol
                )
              CLOSED =
                T.let(
                  :CLOSED,
                  Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status::TaggedSymbol
                )
              SUSPENDED =
                T.let(
                  :SUSPENDED,
                  Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status::TaggedSymbol
                )
              PENDING =
                T.let(
                  :PENDING,
                  Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status::TaggedSymbol
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
                    Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Substatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CHARGED_OFF_DELINQUENT =
                T.let(
                  :CHARGED_OFF_DELINQUENT,
                  Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Substatus::TaggedSymbol
                )
              CHARGED_OFF_FRAUD =
                T.let(
                  :CHARGED_OFF_FRAUD,
                  Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Substatus::TaggedSymbol
                )
              END_USER_REQUEST =
                T.let(
                  :END_USER_REQUEST,
                  Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Substatus::TaggedSymbol
                )
              BANK_REQUEST =
                T.let(
                  :BANK_REQUEST,
                  Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Substatus::TaggedSymbol
                )
              DELINQUENT =
                T.let(
                  :DELINQUENT,
                  Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Substatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Substatus::TaggedSymbol
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
                  Lithic::FinancialAccounts::Statement::AccountStanding::PeriodState
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STANDARD =
              T.let(
                :STANDARD,
                Lithic::FinancialAccounts::Statement::AccountStanding::PeriodState::TaggedSymbol
              )
            PROMO =
              T.let(
                :PROMO,
                Lithic::FinancialAccounts::Statement::AccountStanding::PeriodState::TaggedSymbol
              )
            PENALTY =
              T.let(
                :PENALTY,
                Lithic::FinancialAccounts::Statement::AccountStanding::PeriodState::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::FinancialAccounts::Statement::AccountStanding::PeriodState::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class AmountDue < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::FinancialAccounts::Statement::AmountDue,
                Lithic::Internal::AnyHash
              )
            end

          # Payment due at the end of the billing period in cents. Negative amount indicates
          # something is owed. If the amount owed is positive there was a net credit. If
          # auto-collections are enabled this is the amount that will be requested on the
          # payment due date
          sig { returns(Integer) }
          attr_accessor :amount

          # Amount past due for statement in cents
          sig { returns(Integer) }
          attr_accessor :past_due

          sig do
            params(amount: Integer, past_due: Integer).returns(T.attached_class)
          end
          def self.new(
            # Payment due at the end of the billing period in cents. Negative amount indicates
            # something is owed. If the amount owed is positive there was a net credit. If
            # auto-collections are enabled this is the amount that will be requested on the
            # payment due date
            amount:,
            # Amount past due for statement in cents
            past_due:
          )
          end

          sig { override.returns({ amount: Integer, past_due: Integer }) }
          def to_hash
          end
        end

        module StatementType
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::FinancialAccounts::Statement::StatementType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INITIAL =
            T.let(
              :INITIAL,
              Lithic::FinancialAccounts::Statement::StatementType::TaggedSymbol
            )
          PERIOD_END =
            T.let(
              :PERIOD_END,
              Lithic::FinancialAccounts::Statement::StatementType::TaggedSymbol
            )
          FINAL =
            T.let(
              :FINAL,
              Lithic::FinancialAccounts::Statement::StatementType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::FinancialAccounts::Statement::StatementType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class InterestDetails < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::FinancialAccounts::Statement::InterestDetails,
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
              Lithic::FinancialAccounts::Statement::InterestDetails::InterestCalculationMethod::TaggedSymbol
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
                Lithic::FinancialAccounts::Statement::InterestDetails::InterestCalculationMethod::OrSymbol,
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
                  Lithic::FinancialAccounts::Statement::InterestDetails::InterestCalculationMethod::TaggedSymbol,
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
                  Lithic::FinancialAccounts::Statement::InterestDetails::InterestCalculationMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAILY =
              T.let(
                :DAILY,
                Lithic::FinancialAccounts::Statement::InterestDetails::InterestCalculationMethod::TaggedSymbol
              )
            AVERAGE_DAILY =
              T.let(
                :AVERAGE_DAILY,
                Lithic::FinancialAccounts::Statement::InterestDetails::InterestCalculationMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::FinancialAccounts::Statement::InterestDetails::InterestCalculationMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class PayoffDetails < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::FinancialAccounts::Statement::PayoffDetails,
                Lithic::Internal::AnyHash
              )
            end

          # The number of months it would take to pay off the balance in full by only paying
          # the minimum payment. "NA" will signal negative or zero amortization
          sig { returns(String) }
          attr_accessor :minimum_payment_months

          # The sum of all interest and principal paid, in cents, when only paying minimum
          # monthly payment. "NA" will signal negative or zero amortization
          sig { returns(String) }
          attr_accessor :minimum_payment_total

          # Number of months to full pay off
          sig { returns(T.nilable(Integer)) }
          attr_accessor :payoff_period_length_months

          # The amount needed to be paid, in cents, each month in order to pay off current
          # balance in the payoff period
          sig { returns(T.nilable(Integer)) }
          attr_accessor :payoff_period_monthly_payment_amount

          # The sum of all interest and principal paid, in cents, when paying off in the
          # payoff period
          sig { returns(T.nilable(Integer)) }
          attr_accessor :payoff_period_payment_total

          # Details on number and size of payments to pay off balance
          sig do
            params(
              minimum_payment_months: String,
              minimum_payment_total: String,
              payoff_period_length_months: T.nilable(Integer),
              payoff_period_monthly_payment_amount: T.nilable(Integer),
              payoff_period_payment_total: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            # The number of months it would take to pay off the balance in full by only paying
            # the minimum payment. "NA" will signal negative or zero amortization
            minimum_payment_months:,
            # The sum of all interest and principal paid, in cents, when only paying minimum
            # monthly payment. "NA" will signal negative or zero amortization
            minimum_payment_total:,
            # Number of months to full pay off
            payoff_period_length_months:,
            # The amount needed to be paid, in cents, each month in order to pay off current
            # balance in the payoff period
            payoff_period_monthly_payment_amount:,
            # The sum of all interest and principal paid, in cents, when paying off in the
            # payoff period
            payoff_period_payment_total:
          )
          end

          sig do
            override.returns(
              {
                minimum_payment_months: String,
                minimum_payment_total: String,
                payoff_period_length_months: T.nilable(Integer),
                payoff_period_monthly_payment_amount: T.nilable(Integer),
                payoff_period_payment_total: T.nilable(Integer)
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
