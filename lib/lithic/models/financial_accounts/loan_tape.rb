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
        #   @return [Lithic::Models::FinancialAccounts::LoanTape::DayTotals]
        required :day_totals, -> { Lithic::FinancialAccounts::LoanTape::DayTotals }

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
        #   @return [Lithic::Models::FinancialAccounts::LoanTape::PeriodTotals]
        required :period_totals, -> { Lithic::FinancialAccounts::LoanTape::PeriodTotals }

        # @!attribute previous_statement_balance
        #
        #   @return [Lithic::Models::FinancialAccounts::LoanTape::PreviousStatementBalance]
        required :previous_statement_balance,
                 -> {
                   Lithic::FinancialAccounts::LoanTape::PreviousStatementBalance
                 }

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
        #   @return [Lithic::Models::FinancialAccounts::LoanTape::YtdTotals]
        required :ytd_totals, -> { Lithic::FinancialAccounts::LoanTape::YtdTotals }

        # @!attribute tier
        #   Interest tier to which this account belongs to
        #
        #   @return [String, nil]
        optional :tier, String

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
        #   @param day_totals [Lithic::Models::FinancialAccounts::LoanTape::DayTotals]
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
        #   @param period_totals [Lithic::Models::FinancialAccounts::LoanTape::PeriodTotals]
        #
        #   @param previous_statement_balance [Lithic::Models::FinancialAccounts::LoanTape::PreviousStatementBalance]
        #
        #   @param starting_balance [Integer] Balance at the start of the day
        #
        #   @param updated [Time] Timestamp of when the loan tape was updated
        #
        #   @param version [Integer] Version number of the loan tape. This starts at 1
        #
        #   @param ytd_totals [Lithic::Models::FinancialAccounts::LoanTape::YtdTotals]
        #
        #   @param tier [String] Interest tier to which this account belongs to

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
          required :period_state,
                   enum: -> {
                     Lithic::FinancialAccounts::LoanTape::AccountStanding::PeriodState
                   }

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
                     enum: -> {
                       Lithic::FinancialAccounts::LoanTape::AccountStanding::FinancialAccountState::Status
                     }

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
          #   @return [Lithic::Models::FinancialAccounts::LoanTape::Balances::Due]
          required :due, -> { Lithic::FinancialAccounts::LoanTape::Balances::Due }

          # @!attribute next_statement_due
          #   Amount due for the current billing cycle. Any amounts not paid off by early
          #   payments or credits will be considered due at the end of the current billing
          #   period
          #
          #   @return [Lithic::Models::FinancialAccounts::LoanTape::Balances::NextStatementDue]
          required :next_statement_due, -> { Lithic::FinancialAccounts::LoanTape::Balances::NextStatementDue }

          # @!attribute past_due
          #   Amount not paid off on previous due dates
          #
          #   @return [Lithic::Models::FinancialAccounts::LoanTape::Balances::PastDue]
          required :past_due, -> { Lithic::FinancialAccounts::LoanTape::Balances::PastDue }

          # @!attribute past_statements_due
          #   Amount due for the past billing cycles.
          #
          #   @return [Lithic::Models::FinancialAccounts::LoanTape::Balances::PastStatementsDue]
          required :past_statements_due,
                   -> {
                     Lithic::FinancialAccounts::LoanTape::Balances::PastStatementsDue
                   }

          # @!method initialize(due:, next_statement_due:, past_due:, past_statements_due:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::FinancialAccounts::LoanTape::Balances} for more details.
          #
          #   @param due [Lithic::Models::FinancialAccounts::LoanTape::Balances::Due] Amount due for the prior billing cycle. Any amounts not fully paid off on this d
          #
          #   @param next_statement_due [Lithic::Models::FinancialAccounts::LoanTape::Balances::NextStatementDue] Amount due for the current billing cycle. Any amounts not paid off by early paym
          #
          #   @param past_due [Lithic::Models::FinancialAccounts::LoanTape::Balances::PastDue] Amount not paid off on previous due dates
          #
          #   @param past_statements_due [Lithic::Models::FinancialAccounts::LoanTape::Balances::PastStatementsDue] Amount due for the past billing cycles.

          # @see Lithic::Models::FinancialAccounts::LoanTape::Balances#due
          class Due < Lithic::Internal::Type::BaseModel
            # @!attribute fees
            #
            #   @return [Integer]
            required :fees, Integer

            # @!attribute interest
            #
            #   @return [Integer]
            required :interest, Integer

            # @!attribute principal
            #
            #   @return [Integer]
            required :principal, Integer

            # @!method initialize(fees:, interest:, principal:)
            #   Amount due for the prior billing cycle. Any amounts not fully paid off on this
            #   due date will be considered past due the next day
            #
            #   @param fees [Integer]
            #   @param interest [Integer]
            #   @param principal [Integer]
          end

          # @see Lithic::Models::FinancialAccounts::LoanTape::Balances#next_statement_due
          class NextStatementDue < Lithic::Internal::Type::BaseModel
            # @!attribute fees
            #
            #   @return [Integer]
            required :fees, Integer

            # @!attribute interest
            #
            #   @return [Integer]
            required :interest, Integer

            # @!attribute principal
            #
            #   @return [Integer]
            required :principal, Integer

            # @!method initialize(fees:, interest:, principal:)
            #   Amount due for the current billing cycle. Any amounts not paid off by early
            #   payments or credits will be considered due at the end of the current billing
            #   period
            #
            #   @param fees [Integer]
            #   @param interest [Integer]
            #   @param principal [Integer]
          end

          # @see Lithic::Models::FinancialAccounts::LoanTape::Balances#past_due
          class PastDue < Lithic::Internal::Type::BaseModel
            # @!attribute fees
            #
            #   @return [Integer]
            required :fees, Integer

            # @!attribute interest
            #
            #   @return [Integer]
            required :interest, Integer

            # @!attribute principal
            #
            #   @return [Integer]
            required :principal, Integer

            # @!method initialize(fees:, interest:, principal:)
            #   Amount not paid off on previous due dates
            #
            #   @param fees [Integer]
            #   @param interest [Integer]
            #   @param principal [Integer]
          end

          # @see Lithic::Models::FinancialAccounts::LoanTape::Balances#past_statements_due
          class PastStatementsDue < Lithic::Internal::Type::BaseModel
            # @!attribute fees
            #
            #   @return [Integer]
            required :fees, Integer

            # @!attribute interest
            #
            #   @return [Integer]
            required :interest, Integer

            # @!attribute principal
            #
            #   @return [Integer]
            required :principal, Integer

            # @!method initialize(fees:, interest:, principal:)
            #   Amount due for the past billing cycles.
            #
            #   @param fees [Integer]
            #   @param interest [Integer]
            #   @param principal [Integer]
          end
        end

        # @see Lithic::Models::FinancialAccounts::LoanTape#day_totals
        class DayTotals < Lithic::Internal::Type::BaseModel
          # @!attribute balance_transfers
          #   Opening balance transferred from previous account in cents
          #
          #   @return [Integer]
          required :balance_transfers, Integer

          # @!attribute cash_advances
          #   ATM and cashback transactions in cents
          #
          #   @return [Integer]
          required :cash_advances, Integer

          # @!attribute credits
          #   Volume of credit management operation transactions less any balance transfers in
          #   cents
          #
          #   @return [Integer]
          required :credits, Integer

          # @!attribute fees
          #   Volume of debit management operation transactions less any interest in cents
          #
          #   @return [Integer]
          required :fees, Integer

          # @!attribute interest
          #   Interest accrued in cents
          #
          #   @return [Integer]
          required :interest, Integer

          # @!attribute payments
          #   Any funds transfers which affective the balance in cents
          #
          #   @return [Integer]
          required :payments, Integer

          # @!attribute purchases
          #   Net card transaction volume less any cash advances in cents
          #
          #   @return [Integer]
          required :purchases, Integer

          # @!method initialize(balance_transfers:, cash_advances:, credits:, fees:, interest:, payments:, purchases:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::FinancialAccounts::LoanTape::DayTotals} for more details.
          #
          #   @param balance_transfers [Integer] Opening balance transferred from previous account in cents
          #
          #   @param cash_advances [Integer] ATM and cashback transactions in cents
          #
          #   @param credits [Integer] Volume of credit management operation transactions less any balance transfers in
          #
          #   @param fees [Integer] Volume of debit management operation transactions less any interest in cents
          #
          #   @param interest [Integer] Interest accrued in cents
          #
          #   @param payments [Integer] Any funds transfers which affective the balance in cents
          #
          #   @param purchases [Integer] Net card transaction volume less any cash advances in cents
        end

        # @see Lithic::Models::FinancialAccounts::LoanTape#interest_details
        class InterestDetails < Lithic::Internal::Type::BaseModel
          # @!attribute actual_interest_charged
          #
          #   @return [Integer, nil]
          required :actual_interest_charged, Integer, nil?: true

          # @!attribute daily_balance_amounts
          #
          #   @return [Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::DailyBalanceAmounts]
          required :daily_balance_amounts,
                   -> { Lithic::FinancialAccounts::LoanTape::InterestDetails::DailyBalanceAmounts }

          # @!attribute effective_apr
          #
          #   @return [Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::EffectiveApr]
          required :effective_apr, -> { Lithic::FinancialAccounts::LoanTape::InterestDetails::EffectiveApr }

          # @!attribute interest_calculation_method
          #
          #   @return [Symbol, Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod]
          required :interest_calculation_method,
                   enum: -> {
                     Lithic::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod
                   }

          # @!attribute interest_for_period
          #
          #   @return [Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestForPeriod]
          required :interest_for_period,
                   -> { Lithic::FinancialAccounts::LoanTape::InterestDetails::InterestForPeriod }

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
          #   @param daily_balance_amounts [Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::DailyBalanceAmounts]
          #   @param effective_apr [Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::EffectiveApr]
          #   @param interest_calculation_method [Symbol, Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestCalculationMethod]
          #   @param interest_for_period [Lithic::Models::FinancialAccounts::LoanTape::InterestDetails::InterestForPeriod]
          #   @param prime_rate [String, nil]
          #   @param minimum_interest_charged [Integer, nil]

          # @see Lithic::Models::FinancialAccounts::LoanTape::InterestDetails#daily_balance_amounts
          class DailyBalanceAmounts < Lithic::Internal::Type::BaseModel
            # @!attribute balance_transfers
            #
            #   @return [String]
            required :balance_transfers, String

            # @!attribute cash_advances
            #
            #   @return [String]
            required :cash_advances, String

            # @!attribute purchases
            #
            #   @return [String]
            required :purchases, String

            # @!method initialize(balance_transfers:, cash_advances:, purchases:)
            #   @param balance_transfers [String]
            #   @param cash_advances [String]
            #   @param purchases [String]
          end

          # @see Lithic::Models::FinancialAccounts::LoanTape::InterestDetails#effective_apr
          class EffectiveApr < Lithic::Internal::Type::BaseModel
            # @!attribute balance_transfers
            #
            #   @return [String]
            required :balance_transfers, String

            # @!attribute cash_advances
            #
            #   @return [String]
            required :cash_advances, String

            # @!attribute purchases
            #
            #   @return [String]
            required :purchases, String

            # @!method initialize(balance_transfers:, cash_advances:, purchases:)
            #   @param balance_transfers [String]
            #   @param cash_advances [String]
            #   @param purchases [String]
          end

          # @see Lithic::Models::FinancialAccounts::LoanTape::InterestDetails#interest_calculation_method
          module InterestCalculationMethod
            extend Lithic::Internal::Type::Enum

            DAILY = :DAILY
            AVERAGE_DAILY = :AVERAGE_DAILY

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Lithic::Models::FinancialAccounts::LoanTape::InterestDetails#interest_for_period
          class InterestForPeriod < Lithic::Internal::Type::BaseModel
            # @!attribute balance_transfers
            #
            #   @return [String]
            required :balance_transfers, String

            # @!attribute cash_advances
            #
            #   @return [String]
            required :cash_advances, String

            # @!attribute purchases
            #
            #   @return [String]
            required :purchases, String

            # @!method initialize(balance_transfers:, cash_advances:, purchases:)
            #   @param balance_transfers [String]
            #   @param cash_advances [String]
            #   @param purchases [String]
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
          # @!attribute fees
          #
          #   @return [Integer]
          required :fees, Integer

          # @!attribute interest
          #
          #   @return [Integer]
          required :interest, Integer

          # @!attribute principal
          #
          #   @return [Integer]
          required :principal, Integer

          # @!method initialize(fees:, interest:, principal:)
          #   @param fees [Integer]
          #   @param interest [Integer]
          #   @param principal [Integer]
        end

        # @see Lithic::Models::FinancialAccounts::LoanTape#period_totals
        class PeriodTotals < Lithic::Internal::Type::BaseModel
          # @!attribute balance_transfers
          #   Opening balance transferred from previous account in cents
          #
          #   @return [Integer]
          required :balance_transfers, Integer

          # @!attribute cash_advances
          #   ATM and cashback transactions in cents
          #
          #   @return [Integer]
          required :cash_advances, Integer

          # @!attribute credits
          #   Volume of credit management operation transactions less any balance transfers in
          #   cents
          #
          #   @return [Integer]
          required :credits, Integer

          # @!attribute fees
          #   Volume of debit management operation transactions less any interest in cents
          #
          #   @return [Integer]
          required :fees, Integer

          # @!attribute interest
          #   Interest accrued in cents
          #
          #   @return [Integer]
          required :interest, Integer

          # @!attribute payments
          #   Any funds transfers which affective the balance in cents
          #
          #   @return [Integer]
          required :payments, Integer

          # @!attribute purchases
          #   Net card transaction volume less any cash advances in cents
          #
          #   @return [Integer]
          required :purchases, Integer

          # @!method initialize(balance_transfers:, cash_advances:, credits:, fees:, interest:, payments:, purchases:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::FinancialAccounts::LoanTape::PeriodTotals} for more details.
          #
          #   @param balance_transfers [Integer] Opening balance transferred from previous account in cents
          #
          #   @param cash_advances [Integer] ATM and cashback transactions in cents
          #
          #   @param credits [Integer] Volume of credit management operation transactions less any balance transfers in
          #
          #   @param fees [Integer] Volume of debit management operation transactions less any interest in cents
          #
          #   @param interest [Integer] Interest accrued in cents
          #
          #   @param payments [Integer] Any funds transfers which affective the balance in cents
          #
          #   @param purchases [Integer] Net card transaction volume less any cash advances in cents
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

        # @see Lithic::Models::FinancialAccounts::LoanTape#ytd_totals
        class YtdTotals < Lithic::Internal::Type::BaseModel
          # @!attribute balance_transfers
          #   Opening balance transferred from previous account in cents
          #
          #   @return [Integer]
          required :balance_transfers, Integer

          # @!attribute cash_advances
          #   ATM and cashback transactions in cents
          #
          #   @return [Integer]
          required :cash_advances, Integer

          # @!attribute credits
          #   Volume of credit management operation transactions less any balance transfers in
          #   cents
          #
          #   @return [Integer]
          required :credits, Integer

          # @!attribute fees
          #   Volume of debit management operation transactions less any interest in cents
          #
          #   @return [Integer]
          required :fees, Integer

          # @!attribute interest
          #   Interest accrued in cents
          #
          #   @return [Integer]
          required :interest, Integer

          # @!attribute payments
          #   Any funds transfers which affective the balance in cents
          #
          #   @return [Integer]
          required :payments, Integer

          # @!attribute purchases
          #   Net card transaction volume less any cash advances in cents
          #
          #   @return [Integer]
          required :purchases, Integer

          # @!method initialize(balance_transfers:, cash_advances:, credits:, fees:, interest:, payments:, purchases:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::FinancialAccounts::LoanTape::YtdTotals} for more details.
          #
          #   @param balance_transfers [Integer] Opening balance transferred from previous account in cents
          #
          #   @param cash_advances [Integer] ATM and cashback transactions in cents
          #
          #   @param credits [Integer] Volume of credit management operation transactions less any balance transfers in
          #
          #   @param fees [Integer] Volume of debit management operation transactions less any interest in cents
          #
          #   @param interest [Integer] Interest accrued in cents
          #
          #   @param payments [Integer] Any funds transfers which affective the balance in cents
          #
          #   @param purchases [Integer] Net card transaction volume less any cash advances in cents
        end
      end
    end
  end
end
