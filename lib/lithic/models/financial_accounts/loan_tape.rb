# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      # @see Lithic::Resources::FinancialAccounts::LoanTapes#retrieve
      class LoanTape < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Globally unique identifier for a loan tape
        #
        #   @return [String]
        required :token, String

        # @!attribute account_standing
        #
        #   @return [Lithic::Models::FinancialAccounts::LoanTape::AccountStanding]
        required :account_standing, -> { Lithic::FinancialAccounts::LoanTape::AccountStanding }

        # @!attribute available_credit
        #   Amount of credit available to spend in cents
        #
        #   @return [Integer]
        required :available_credit, Integer

        # @!attribute balances
        #
        #   @return [Lithic::Models::FinancialAccounts::LoanTape::Balances]
        required :balances, -> { Lithic::FinancialAccounts::LoanTape::Balances }

        # @!attribute created
        #   Timestamp of when the loan tape was created
        #
        #   @return [Time]
        required :created, Time

        # @!attribute credit_limit
        #   For prepay accounts, this is the minimum prepay balance that must be maintained.
        #   For charge card accounts, this is the maximum credit balance extended by a
        #   lender
        #
        #   @return [Integer]
        required :credit_limit, Integer

        # @!attribute credit_product_token
        #   Globally unique identifier for a credit product
        #
        #   @return [String]
        required :credit_product_token, String

        # @!attribute date
        #   Date of transactions that this loan tape covers
        #
        #   @return [Date]
        required :date, Date

        # @!attribute day_totals
        #
        #   @return [Lithic::Models::StatementTotals]
        required :day_totals, -> { Lithic::StatementTotals }

        # @!attribute ending_balance
        #   Balance at the end of the day
        #
        #   @return [Integer]
        required :ending_balance, Integer

        # @!attribute excess_credits
        #   Excess credits in the form of provisional credits, payments, or purchase
        #   refunds. If positive, the account is in net credit state with no outstanding
        #   balances. An overpayment could land an account in this state
        #
        #   @return [Integer]
        required :excess_credits, Integer

        # @!attribute financial_account_token
        #   Globally unique identifier for a financial account
        #
        #   @return [String]
        required :financial_account_token, String

        # @!attribute interest_details
        #
        #   @return [Lithic::Models::FinancialAccounts::LoanTape::InterestDetails, nil]
        required :interest_details, -> { Lithic::FinancialAccounts::LoanTape::InterestDetails }, nil?: true

        # @!attribute minimum_payment_balance
        #
        #   @return [Lithic::Models::FinancialAccounts::LoanTape::MinimumPaymentBalance]
        required :minimum_payment_balance, -> { Lithic::FinancialAccounts::LoanTape::MinimumPaymentBalance }

        # @!attribute payment_allocation
        #
        #   @return [Lithic::Models::FinancialAccounts::LoanTape::PaymentAllocation]
        required :payment_allocation, -> { Lithic::FinancialAccounts::LoanTape::PaymentAllocation }

        # @!attribute period_totals
        #
        #   @return [Lithic::Models::StatementTotals]
        required :period_totals, -> { Lithic::StatementTotals }

        # @!attribute previous_statement_balance
        #
        #   @return [Lithic::Models::FinancialAccounts::LoanTape::PreviousStatementBalance]
        required :previous_statement_balance, -> { Lithic::FinancialAccounts::LoanTape::PreviousStatementBalance }

        # @!attribute starting_balance
        #   Balance at the start of the day
        #
        #   @return [Integer]
        required :starting_balance, Integer

        # @!attribute updated
        #   Timestamp of when the loan tape was updated
        #
        #   @return [Time]
        required :updated, Time

        # @!attribute version
        #   Version number of the loan tape. This starts at 1
        #
        #   @return [Integer]
        required :version, Integer

        # @!attribute ytd_totals
        #
        #   @return [Lithic::Models::StatementTotals]
        required :ytd_totals, -> { Lithic::StatementTotals }

        # @!attribute tier
        #   Interest tier to which this account belongs to
        #
        #   @return [String, nil]
        optional :tier, String, nil?: true

        # @!method initialize(token:, account_standing:, available_credit:, balances:, created:, credit_limit:, credit_product_token:, date:, day_totals:, ending_balance:, excess_credits:, financial_account_token:, interest_details:, minimum_payment_balance:, payment_allocation:, period_totals:, previous_statement_balance:, starting_balance:, updated:, version:, ytd_totals:, tier: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::FinancialAccounts::LoanTape} for more details.
        #
        #   @param token [String] Globally unique identifier for a loan tape
        #
        #   @param account_standing [Lithic::Models::FinancialAccounts::LoanTape::AccountStanding]
        #
        #   @param available_credit [Integer] Amount of credit available to spend in cents
        #
        #   @param balances [Lithic::Models::FinancialAccounts::LoanTape::Balances]
        #
        #   @param created [Time] Timestamp of when the loan tape was created
        #
        #   @param credit_limit [Integer] For prepay accounts, this is the minimum prepay balance that must be maintained.
        #
        #   @param credit_product_token [String] Globally unique identifier for a credit product
        #
        #   @param date [Date] Date of transactions that this loan tape covers
        #
        #   @param day_totals [Lithic::Models::StatementTotals]
        #
        #   @param ending_balance [Integer] Balance at the end of the day
        #
        #   @param excess_credits [Integer] Excess credits in the form of provisional credits, payments, or purchase refunds
        #
        #   @param financial_account_token [String] Globally unique identifier for a financial account
        #
        #   @param interest_details [Lithic::Models::FinancialAccounts::LoanTape::InterestDetails, nil]
        #
        #   @param minimum_payment_balance [Lithic::Models::FinancialAccounts::LoanTape::MinimumPaymentBalance]
        #
        #   @param payment_allocation [Lithic::Models::FinancialAccounts::LoanTape::PaymentAllocation]
        #
        #   @param period_totals [Lithic::Models::StatementTotals]
        #
        #   @param previous_statement_balance [Lithic::Models::FinancialAccounts::LoanTape::PreviousStatementBalance]
        #
        #   @param starting_balance [Integer] Balance at the start of the day
        #
        #   @param updated [Time] Timestamp of when the loan tape was updated
        #
        #   @param version [Integer] Version number of the loan tape. This starts at 1
        #
        #   @param ytd_totals [Lithic::Models::StatementTotals]
        #
        #   @param tier [String, nil] Interest tier to which this account belongs to

        # @see Lithic::Models::FinancialAccounts::LoanTape#account_standing
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
          #   @return [Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState]
          required :financial_account_state,
                   -> { Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState }

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
          #   @return [Symbol, Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::PeriodState]
          required :period_state, enum: -> { Lithic::FinancialAccounts::LoanTape::AccountStanding::PeriodState }

          # @!method initialize(consecutive_full_payments_made:, consecutive_minimum_payments_made:, consecutive_minimum_payments_missed:, days_past_due:, financial_account_state:, has_grace:, period_number:, period_state:)
          #   @param consecutive_full_payments_made [Integer] Number of consecutive full payments made
          #
          #   @param consecutive_minimum_payments_made [Integer] Number of consecutive minimum payments made
          #
          #   @param consecutive_minimum_payments_missed [Integer] Number of consecutive minimum payments missed
          #
          #   @param days_past_due [Integer] Number of days past due
          #
          #   @param financial_account_state [Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState] Information about the financial account state
          #
          #   @param has_grace [Boolean] Whether the account currently has grace or not
          #
          #   @param period_number [Integer] Current overall period number
          #
          #   @param period_state [Symbol, Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::PeriodState]

          # @see Lithic::Models::FinancialAccounts::LoanTape::AccountStanding#financial_account_state
          class FinancialAccountState < Lithic::Internal::Type::BaseModel
            # @!attribute status
            #   Status of the financial account
            #
            #   @return [Symbol, Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Status]
            required :status,
                     enum: -> { Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Status }

            # @!attribute substatus
            #   Substatus for the financial account
            #
            #   @return [Symbol, Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Substatus, nil]
            optional :substatus,
                     enum: -> {
                       Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Substatus
                     },
                     nil?: true

            # @!method initialize(status:, substatus: nil)
            #   Information about the financial account state
            #
            #   @param status [Symbol, Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Status] Status of the financial account
            #
            #   @param substatus [Symbol, Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Substatus, nil] Substatus for the financial account

            # Status of the financial account
            #
            # @see Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState#status
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
            # @see Lithic::Models::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState#substatus
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

          # @see Lithic::Models::FinancialAccounts::LoanTape::AccountStanding#period_state
          module PeriodState
            extend Lithic::Internal::Type::Enum

            STANDARD = :STANDARD
            PROMO = :PROMO
            PENALTY = :PENALTY

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Lithic::Models::FinancialAccounts::LoanTape#balances
        class Balances < Lithic::Internal::Type::BaseModel
          # @!attribute due
          #   Amount due for the prior billing cycle. Any amounts not fully paid off on this
          #   due date will be considered past due the next day
          #
          #   @return [Lithic::Models::FinancialAccounts::CategoryBalances]
          required :due, -> { Lithic::FinancialAccounts::CategoryBalances }

          # @!attribute next_statement_due
          #   Amount due for the current billing cycle. Any amounts not paid off by early
          #   payments or credits will be considered due at the end of the current billing
          #   period
          #
          #   @return [Lithic::Models::FinancialAccounts::CategoryBalances]
          required :next_statement_due, -> { Lithic::FinancialAccounts::CategoryBalances }

          # @!attribute past_due
          #   Amount not paid off on previous due dates
          #
          #   @return [Lithic::Models::FinancialAccounts::CategoryBalances]
          required :past_due, -> { Lithic::FinancialAccounts::CategoryBalances }

          # @!attribute past_statements_due
          #   Amount due for the past billing cycles.
          #
          #   @return [Lithic::Models::FinancialAccounts::CategoryBalances]
          required :past_statements_due, -> { Lithic::FinancialAccounts::CategoryBalances }

          # @!method initialize(due:, next_statement_due:, past_due:, past_statements_due:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::FinancialAccounts::LoanTape::Balances} for more details.
          #
          #   @param due [Lithic::Models::FinancialAccounts::CategoryBalances] Amount due for the prior billing cycle. Any amounts not fully paid off on this d
          #
          #   @param next_statement_due [Lithic::Models::FinancialAccounts::CategoryBalances] Amount due for the current billing cycle. Any amounts not paid off by early paym
          #
          #   @param past_due [Lithic::Models::FinancialAccounts::CategoryBalances] Amount not paid off on previous due dates
          #
          #   @param past_statements_due [Lithic::Models::FinancialAccounts::CategoryBalances] Amount due for the past billing cycles.
        end

        # @see Lithic::Models::FinancialAccounts::LoanTape#interest_details
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
          #   @return [Symbol, Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod]
          required :interest_calculation_method,
                   enum: -> { Lithic::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod }

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
          #   @param interest_calculation_method [Symbol, Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod]
          #   @param interest_for_period [Lithic::Models::CategoryDetails]
          #   @param prime_rate [String, nil]
          #   @param minimum_interest_charged [Integer, nil]

          # @see Lithic::Models::FinancialAccounts::LoanTape::InterestDetails#interest_calculation_method
          module InterestCalculationMethod
            extend Lithic::Internal::Type::Enum

            DAILY = :DAILY
            AVERAGE_DAILY = :AVERAGE_DAILY

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Lithic::Models::FinancialAccounts::LoanTape#minimum_payment_balance
        class MinimumPaymentBalance < Lithic::Internal::Type::BaseModel
          # @!attribute amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute remaining
          #
          #   @return [Integer]
          required :remaining, Integer

          # @!method initialize(amount:, remaining:)
          #   @param amount [Integer]
          #   @param remaining [Integer]
        end

        # @see Lithic::Models::FinancialAccounts::LoanTape#payment_allocation
        class PaymentAllocation < Lithic::Internal::Type::BaseModel
          # @!attribute fee_details
          #
          #   @return [Lithic::Models::CategoryDetails, nil]
          required :fee_details, -> { Lithic::CategoryDetails }, nil?: true

          # @!attribute fees
          #   Amount allocated to fees in cents
          #
          #   @return [Integer]
          required :fees, Integer

          # @!attribute interest
          #   Amount allocated to interest in cents
          #
          #   @return [Integer]
          required :interest, Integer

          # @!attribute interest_details
          #
          #   @return [Lithic::Models::CategoryDetails, nil]
          required :interest_details, -> { Lithic::CategoryDetails }, nil?: true

          # @!attribute principal
          #   Amount allocated to principal in cents
          #
          #   @return [Integer]
          required :principal, Integer

          # @!attribute principal_details
          #
          #   @return [Lithic::Models::CategoryDetails, nil]
          required :principal_details, -> { Lithic::CategoryDetails }, nil?: true

          # @!method initialize(fee_details:, fees:, interest:, interest_details:, principal:, principal_details:)
          #   @param fee_details [Lithic::Models::CategoryDetails, nil]
          #
          #   @param fees [Integer] Amount allocated to fees in cents
          #
          #   @param interest [Integer] Amount allocated to interest in cents
          #
          #   @param interest_details [Lithic::Models::CategoryDetails, nil]
          #
          #   @param principal [Integer] Amount allocated to principal in cents
          #
          #   @param principal_details [Lithic::Models::CategoryDetails, nil]
        end

        # @see Lithic::Models::FinancialAccounts::LoanTape#previous_statement_balance
        class PreviousStatementBalance < Lithic::Internal::Type::BaseModel
          # @!attribute amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute remaining
          #
          #   @return [Integer]
          required :remaining, Integer

          # @!method initialize(amount:, remaining:)
          #   @param amount [Integer]
          #   @param remaining [Integer]
        end
      end
    end
  end
end
