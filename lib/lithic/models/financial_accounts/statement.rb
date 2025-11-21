# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      # @see Lithic::Resources::FinancialAccounts::Statements#retrieve
      class Statement < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Globally unique identifier for a statement
        #
        #   @return [String]
        required :token, String

        # @!attribute account_standing
        #
        #   @return [Lithic::Models::FinancialAccounts::Statement::AccountStanding]
        required :account_standing, -> { Lithic::FinancialAccounts::Statement::AccountStanding }

        # @!attribute amount_due
        #
        #   @return [Lithic::Models::FinancialAccounts::Statement::AmountDue]
        required :amount_due, -> { Lithic::FinancialAccounts::Statement::AmountDue }

        # @!attribute available_credit
        #   Amount of credit available to spend in cents
        #
        #   @return [Integer]
        required :available_credit, Integer

        # @!attribute created
        #   Timestamp of when the statement was created
        #
        #   @return [Time]
        required :created, Time

        # @!attribute credit_limit
        #   This is the maximum credit balance extended by the lender in cents
        #
        #   @return [Integer]
        required :credit_limit, Integer

        # @!attribute credit_product_token
        #   Globally unique identifier for a credit product
        #
        #   @return [String]
        required :credit_product_token, String

        # @!attribute days_in_billing_cycle
        #   Number of days in the billing cycle
        #
        #   @return [Integer]
        required :days_in_billing_cycle, Integer

        # @!attribute ending_balance
        #   Balance at the end of the billing period. For charge cards, this should be the
        #   same at the statement amount due in cents
        #
        #   @return [Integer]
        required :ending_balance, Integer

        # @!attribute financial_account_token
        #   Globally unique identifier for a financial account
        #
        #   @return [String]
        required :financial_account_token, String

        # @!attribute payment_due_date
        #   Date when the payment is due
        #
        #   @return [Date, nil]
        required :payment_due_date, Date, nil?: true

        # @!attribute period_totals
        #
        #   @return [Lithic::Models::StatementTotals]
        required :period_totals, -> { Lithic::StatementTotals }

        # @!attribute starting_balance
        #   Balance at the start of the billing period
        #
        #   @return [Integer]
        required :starting_balance, Integer

        # @!attribute statement_end_date
        #   Date when the billing period ended
        #
        #   @return [Date]
        required :statement_end_date, Date

        # @!attribute statement_start_date
        #   Date when the billing period began
        #
        #   @return [Date]
        required :statement_start_date, Date

        # @!attribute statement_type
        #
        #   @return [Symbol, Lithic::Models::FinancialAccounts::Statement::StatementType]
        required :statement_type, enum: -> { Lithic::FinancialAccounts::Statement::StatementType }

        # @!attribute updated
        #   Timestamp of when the statement was updated
        #
        #   @return [Time]
        required :updated, Time

        # @!attribute ytd_totals
        #
        #   @return [Lithic::Models::StatementTotals]
        required :ytd_totals, -> { Lithic::StatementTotals }

        # @!attribute interest_details
        #
        #   @return [Lithic::Models::FinancialAccounts::Statement::InterestDetails, nil]
        optional :interest_details, -> { Lithic::FinancialAccounts::Statement::InterestDetails }, nil?: true

        # @!attribute next_payment_due_date
        #   Date when the next payment is due
        #
        #   @return [Date, nil]
        optional :next_payment_due_date, Date

        # @!attribute next_statement_end_date
        #   Date when the next billing period will end
        #
        #   @return [Date, nil]
        optional :next_statement_end_date, Date

        # @!attribute payoff_details
        #   Details on number and size of payments to pay off balance
        #
        #   @return [Lithic::Models::FinancialAccounts::Statement::PayoffDetails, nil]
        optional :payoff_details, -> { Lithic::FinancialAccounts::Statement::PayoffDetails }, nil?: true

        # @!method initialize(token:, account_standing:, amount_due:, available_credit:, created:, credit_limit:, credit_product_token:, days_in_billing_cycle:, ending_balance:, financial_account_token:, payment_due_date:, period_totals:, starting_balance:, statement_end_date:, statement_start_date:, statement_type:, updated:, ytd_totals:, interest_details: nil, next_payment_due_date: nil, next_statement_end_date: nil, payoff_details: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::FinancialAccounts::Statement} for more details.
        #
        #   @param token [String] Globally unique identifier for a statement
        #
        #   @param account_standing [Lithic::Models::FinancialAccounts::Statement::AccountStanding]
        #
        #   @param amount_due [Lithic::Models::FinancialAccounts::Statement::AmountDue]
        #
        #   @param available_credit [Integer] Amount of credit available to spend in cents
        #
        #   @param created [Time] Timestamp of when the statement was created
        #
        #   @param credit_limit [Integer] This is the maximum credit balance extended by the lender in cents
        #
        #   @param credit_product_token [String] Globally unique identifier for a credit product
        #
        #   @param days_in_billing_cycle [Integer] Number of days in the billing cycle
        #
        #   @param ending_balance [Integer] Balance at the end of the billing period. For charge cards, this should be the s
        #
        #   @param financial_account_token [String] Globally unique identifier for a financial account
        #
        #   @param payment_due_date [Date, nil] Date when the payment is due
        #
        #   @param period_totals [Lithic::Models::StatementTotals]
        #
        #   @param starting_balance [Integer] Balance at the start of the billing period
        #
        #   @param statement_end_date [Date] Date when the billing period ended
        #
        #   @param statement_start_date [Date] Date when the billing period began
        #
        #   @param statement_type [Symbol, Lithic::Models::FinancialAccounts::Statement::StatementType]
        #
        #   @param updated [Time] Timestamp of when the statement was updated
        #
        #   @param ytd_totals [Lithic::Models::StatementTotals]
        #
        #   @param interest_details [Lithic::Models::FinancialAccounts::Statement::InterestDetails, nil]
        #
        #   @param next_payment_due_date [Date] Date when the next payment is due
        #
        #   @param next_statement_end_date [Date] Date when the next billing period will end
        #
        #   @param payoff_details [Lithic::Models::FinancialAccounts::Statement::PayoffDetails, nil] Details on number and size of payments to pay off balance

        # @see Lithic::Models::FinancialAccounts::Statement#account_standing
        class AccountStanding < Lithic::Internal::Type::BaseModel
          # @!attribute consecutive_full_payments_made
          #   Number of consecutive full payments made
          #
          #   @return [Integer]
          required :consecutive_full_payments_made, Integer

          # @!attribute consecutive_minimum_payments_made
          #   Number of consecutive minimum payments made
          #
          #   @return [Integer]
          required :consecutive_minimum_payments_made, Integer

          # @!attribute consecutive_minimum_payments_missed
          #   Number of consecutive minimum payments missed
          #
          #   @return [Integer]
          required :consecutive_minimum_payments_missed, Integer

          # @!attribute days_past_due
          #   Number of days past due
          #
          #   @return [Integer]
          required :days_past_due, Integer

          # @!attribute financial_account_state
          #   Information about the financial account state
          #
          #   @return [Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState]
          required :financial_account_state,
                   -> { Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState }

          # @!attribute has_grace
          #   Whether the account currently has grace or not
          #
          #   @return [Boolean]
          required :has_grace, Lithic::Internal::Type::Boolean

          # @!attribute period_number
          #   Current overall period number
          #
          #   @return [Integer]
          required :period_number, Integer

          # @!attribute period_state
          #
          #   @return [Symbol, Lithic::Models::FinancialAccounts::Statement::AccountStanding::PeriodState]
          required :period_state, enum: -> { Lithic::FinancialAccounts::Statement::AccountStanding::PeriodState }

          # @!method initialize(consecutive_full_payments_made:, consecutive_minimum_payments_made:, consecutive_minimum_payments_missed:, days_past_due:, financial_account_state:, has_grace:, period_number:, period_state:)
          #   @param consecutive_full_payments_made [Integer] Number of consecutive full payments made
          #
          #   @param consecutive_minimum_payments_made [Integer] Number of consecutive minimum payments made
          #
          #   @param consecutive_minimum_payments_missed [Integer] Number of consecutive minimum payments missed
          #
          #   @param days_past_due [Integer] Number of days past due
          #
          #   @param financial_account_state [Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState] Information about the financial account state
          #
          #   @param has_grace [Boolean] Whether the account currently has grace or not
          #
          #   @param period_number [Integer] Current overall period number
          #
          #   @param period_state [Symbol, Lithic::Models::FinancialAccounts::Statement::AccountStanding::PeriodState]

          # @see Lithic::Models::FinancialAccounts::Statement::AccountStanding#financial_account_state
          class FinancialAccountState < Lithic::Internal::Type::BaseModel
            # @!attribute status
            #   Status of the financial account
            #
            #   @return [Symbol, Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status]
            required :status,
                     enum: -> { Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status }

            # @!attribute substatus
            #   Substatus for the financial account
            #
            #   @return [Symbol, Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Substatus, nil]
            optional :substatus,
                     enum: -> {
                       Lithic::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Substatus
                     },
                     nil?: true

            # @!method initialize(status:, substatus: nil)
            #   Information about the financial account state
            #
            #   @param status [Symbol, Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status] Status of the financial account
            #
            #   @param substatus [Symbol, Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Substatus, nil] Substatus for the financial account

            # Status of the financial account
            #
            # @see Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState#status
            module Status
              extend Lithic::Internal::Type::Enum

              OPEN = :OPEN
              CLOSED = :CLOSED
              SUSPENDED = :SUSPENDED
              PENDING = :PENDING

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Substatus for the financial account
            #
            # @see Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState#substatus
            module Substatus
              extend Lithic::Internal::Type::Enum

              CHARGED_OFF_DELINQUENT = :CHARGED_OFF_DELINQUENT
              CHARGED_OFF_FRAUD = :CHARGED_OFF_FRAUD
              END_USER_REQUEST = :END_USER_REQUEST
              BANK_REQUEST = :BANK_REQUEST
              DELINQUENT = :DELINQUENT

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Lithic::Models::FinancialAccounts::Statement::AccountStanding#period_state
          module PeriodState
            extend Lithic::Internal::Type::Enum

            STANDARD = :STANDARD
            PROMO = :PROMO
            PENALTY = :PENALTY

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Lithic::Models::FinancialAccounts::Statement#amount_due
        class AmountDue < Lithic::Internal::Type::BaseModel
          # @!attribute amount
          #   Payment due at the end of the billing period in cents. Negative amount indicates
          #   something is owed. If the amount owed is positive there was a net credit. If
          #   auto-collections are enabled this is the amount that will be requested on the
          #   payment due date
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute past_due
          #   Amount past due for statement in cents
          #
          #   @return [Integer]
          required :past_due, Integer

          # @!method initialize(amount:, past_due:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::FinancialAccounts::Statement::AmountDue} for more details.
          #
          #   @param amount [Integer] Payment due at the end of the billing period in cents. Negative amount indicates
          #
          #   @param past_due [Integer] Amount past due for statement in cents
        end

        # @see Lithic::Models::FinancialAccounts::Statement#statement_type
        module StatementType
          extend Lithic::Internal::Type::Enum

          INITIAL = :INITIAL
          PERIOD_END = :PERIOD_END
          FINAL = :FINAL

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::FinancialAccounts::Statement#interest_details
        class InterestDetails < Lithic::Internal::Type::BaseModel
          # @!attribute actual_interest_charged
          #
          #   @return [Integer, nil]
          required :actual_interest_charged, Integer, nil?: true

          # @!attribute daily_balance_amounts
          #
          #   @return [Lithic::Models::CategoryDetails]
          required :daily_balance_amounts, -> { Lithic::CategoryDetails }

          # @!attribute effective_apr
          #
          #   @return [Lithic::Models::CategoryDetails]
          required :effective_apr, -> { Lithic::CategoryDetails }

          # @!attribute interest_calculation_method
          #
          #   @return [Symbol, Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestCalculationMethod]
          required :interest_calculation_method,
                   enum: -> { Lithic::FinancialAccounts::Statement::InterestDetails::InterestCalculationMethod }

          # @!attribute interest_for_period
          #
          #   @return [Lithic::Models::CategoryDetails]
          required :interest_for_period, -> { Lithic::CategoryDetails }

          # @!attribute prime_rate
          #
          #   @return [String, nil]
          required :prime_rate, String, nil?: true

          # @!attribute minimum_interest_charged
          #
          #   @return [Integer, nil]
          optional :minimum_interest_charged, Integer, nil?: true

          # @!method initialize(actual_interest_charged:, daily_balance_amounts:, effective_apr:, interest_calculation_method:, interest_for_period:, prime_rate:, minimum_interest_charged: nil)
          #   @param actual_interest_charged [Integer, nil]
          #   @param daily_balance_amounts [Lithic::Models::CategoryDetails]
          #   @param effective_apr [Lithic::Models::CategoryDetails]
          #   @param interest_calculation_method [Symbol, Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestCalculationMethod]
          #   @param interest_for_period [Lithic::Models::CategoryDetails]
          #   @param prime_rate [String, nil]
          #   @param minimum_interest_charged [Integer, nil]

          # @see Lithic::Models::FinancialAccounts::Statement::InterestDetails#interest_calculation_method
          module InterestCalculationMethod
            extend Lithic::Internal::Type::Enum

            DAILY = :DAILY
            AVERAGE_DAILY = :AVERAGE_DAILY

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Lithic::Models::FinancialAccounts::Statement#payoff_details
        class PayoffDetails < Lithic::Internal::Type::BaseModel
          # @!attribute minimum_payment_months
          #   The number of months it would take to pay off the balance in full by only paying
          #   the minimum payment. "NA" will signal negative or zero amortization
          #
          #   @return [String]
          required :minimum_payment_months, String

          # @!attribute minimum_payment_total
          #   The sum of all interest and principal paid, in cents, when only paying minimum
          #   monthly payment. "NA" will signal negative or zero amortization
          #
          #   @return [String]
          required :minimum_payment_total, String

          # @!attribute payoff_period_length_months
          #   Number of months to full pay off
          #
          #   @return [Integer, nil]
          required :payoff_period_length_months, Integer, nil?: true

          # @!attribute payoff_period_monthly_payment_amount
          #   The amount needed to be paid, in cents, each month in order to pay off current
          #   balance in the payoff period
          #
          #   @return [Integer, nil]
          required :payoff_period_monthly_payment_amount, Integer, nil?: true

          # @!attribute payoff_period_payment_total
          #   The sum of all interest and principal paid, in cents, when paying off in the
          #   payoff period
          #
          #   @return [Integer, nil]
          required :payoff_period_payment_total, Integer, nil?: true

          # @!method initialize(minimum_payment_months:, minimum_payment_total:, payoff_period_length_months:, payoff_period_monthly_payment_amount:, payoff_period_payment_total:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::FinancialAccounts::Statement::PayoffDetails} for more details.
          #
          #   Details on number and size of payments to pay off balance
          #
          #   @param minimum_payment_months [String] The number of months it would take to pay off the balance in full by only paying
          #
          #   @param minimum_payment_total [String] The sum of all interest and principal paid, in cents, when only paying minimum m
          #
          #   @param payoff_period_length_months [Integer, nil] Number of months to full pay off
          #
          #   @param payoff_period_monthly_payment_amount [Integer, nil] The amount needed to be paid, in cents, each month in order to pay off current b
          #
          #   @param payoff_period_payment_total [Integer, nil] The sum of all interest and principal paid, in cents, when paying off in the pay
        end
      end
    end
  end
end
