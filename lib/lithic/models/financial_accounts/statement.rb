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
        required :account_standing, -> { Lithic::Models::FinancialAccounts::Statement::AccountStanding }

        # @!attribute amount_due
        #
        #   @return [Lithic::Models::FinancialAccounts::Statement::AmountDue]
        required :amount_due, -> { Lithic::Models::FinancialAccounts::Statement::AmountDue }

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
        #     same at the statement amount due in cents
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
        #   @return [Lithic::Models::FinancialAccounts::Statement::PeriodTotals]
        required :period_totals, -> { Lithic::Models::FinancialAccounts::Statement::PeriodTotals }

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
        required :statement_type, enum: -> { Lithic::Models::FinancialAccounts::Statement::StatementType }

        # @!attribute updated
        #   Timestamp of when the statement was updated
        #
        #   @return [Time]
        required :updated, Time

        # @!attribute ytd_totals
        #
        #   @return [Lithic::Models::FinancialAccounts::Statement::YtdTotals]
        required :ytd_totals, -> { Lithic::Models::FinancialAccounts::Statement::YtdTotals }

        # @!attribute interest_details
        #
        #   @return [Lithic::Models::FinancialAccounts::Statement::InterestDetails, nil]
        optional :interest_details,
                 -> { Lithic::Models::FinancialAccounts::Statement::InterestDetails },
                 nil?: true

        # @!attribute [r] next_payment_due_date
        #   Date when the next payment is due
        #
        #   @return [Date, nil]
        optional :next_payment_due_date, Date

        # @!parse
        #   # @return [Date]
        #   attr_writer :next_payment_due_date

        # @!attribute [r] next_statement_end_date
        #   Date when the next billing period will end
        #
        #   @return [Date, nil]
        optional :next_statement_end_date, Date

        # @!parse
        #   # @return [Date]
        #   attr_writer :next_statement_end_date

        # @!parse
        #   # @param token [String]
        #   # @param account_standing [Lithic::Models::FinancialAccounts::Statement::AccountStanding]
        #   # @param amount_due [Lithic::Models::FinancialAccounts::Statement::AmountDue]
        #   # @param available_credit [Integer]
        #   # @param created [Time]
        #   # @param credit_limit [Integer]
        #   # @param credit_product_token [String]
        #   # @param days_in_billing_cycle [Integer]
        #   # @param ending_balance [Integer]
        #   # @param financial_account_token [String]
        #   # @param payment_due_date [Date, nil]
        #   # @param period_totals [Lithic::Models::FinancialAccounts::Statement::PeriodTotals]
        #   # @param starting_balance [Integer]
        #   # @param statement_end_date [Date]
        #   # @param statement_start_date [Date]
        #   # @param statement_type [Symbol, Lithic::Models::FinancialAccounts::Statement::StatementType]
        #   # @param updated [Time]
        #   # @param ytd_totals [Lithic::Models::FinancialAccounts::Statement::YtdTotals]
        #   # @param interest_details [Lithic::Models::FinancialAccounts::Statement::InterestDetails, nil]
        #   # @param next_payment_due_date [Date]
        #   # @param next_statement_end_date [Date]
        #   #
        #   def initialize(
        #     token:,
        #     account_standing:,
        #     amount_due:,
        #     available_credit:,
        #     created:,
        #     credit_limit:,
        #     credit_product_token:,
        #     days_in_billing_cycle:,
        #     ending_balance:,
        #     financial_account_token:,
        #     payment_due_date:,
        #     period_totals:,
        #     starting_balance:,
        #     statement_end_date:,
        #     statement_start_date:,
        #     statement_type:,
        #     updated:,
        #     ytd_totals:,
        #     interest_details: nil,
        #     next_payment_due_date: nil,
        #     next_statement_end_date: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

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
                   -> { Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState }

          # @!attribute has_grace
          #   Whether the account currently has grace or not
          #
          #   @return [Boolean]
          required :has_grace, Lithic::Internal::Type::BooleanModel

          # @!attribute period_number
          #   Current overall period number
          #
          #   @return [Integer]
          required :period_number, Integer

          # @!attribute period_state
          #
          #   @return [Symbol, Lithic::Models::FinancialAccounts::Statement::AccountStanding::PeriodState]
          required :period_state,
                   enum: -> { Lithic::Models::FinancialAccounts::Statement::AccountStanding::PeriodState }

          # @!parse
          #   # @param consecutive_full_payments_made [Integer]
          #   # @param consecutive_minimum_payments_made [Integer]
          #   # @param consecutive_minimum_payments_missed [Integer]
          #   # @param days_past_due [Integer]
          #   # @param financial_account_state [Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState]
          #   # @param has_grace [Boolean]
          #   # @param period_number [Integer]
          #   # @param period_state [Symbol, Lithic::Models::FinancialAccounts::Statement::AccountStanding::PeriodState]
          #   #
          #   def initialize(
          #     consecutive_full_payments_made:,
          #     consecutive_minimum_payments_made:,
          #     consecutive_minimum_payments_missed:,
          #     days_past_due:,
          #     financial_account_state:,
          #     has_grace:,
          #     period_number:,
          #     period_state:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

          # @see Lithic::Models::FinancialAccounts::Statement::AccountStanding#financial_account_state
          class FinancialAccountState < Lithic::Internal::Type::BaseModel
            # @!attribute status
            #   Status of the financial account
            #
            #   @return [Symbol, Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status]
            required :status,
                     enum: -> { Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status }

            # @!attribute status_change_reason
            #   Reason for the financial account status change
            #
            #   @return [Symbol, Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::StatusChangeReason, nil]
            optional :status_change_reason,
                     enum: -> { Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::StatusChangeReason },
                     nil?: true

            # @!parse
            #   # Information about the financial account state
            #   #
            #   # @param status [Symbol, Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::Status]
            #   # @param status_change_reason [Symbol, Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState::StatusChangeReason, nil]
            #   #
            #   def initialize(status:, status_change_reason: nil, **) = super

            # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

            # Status of the financial account
            #
            # @see Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState#status
            module Status
              extend Lithic::Internal::Type::Enum

              OPEN = :OPEN
              CLOSED = :CLOSED
              SUSPENDED = :SUSPENDED
              PENDING = :PENDING

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            # Reason for the financial account status change
            #
            # @see Lithic::Models::FinancialAccounts::Statement::AccountStanding::FinancialAccountState#status_change_reason
            module StatusChangeReason
              extend Lithic::Internal::Type::Enum

              CHARGED_OFF_DELINQUENT = :CHARGED_OFF_DELINQUENT
              CHARGED_OFF_FRAUD = :CHARGED_OFF_FRAUD
              END_USER_REQUEST = :END_USER_REQUEST
              BANK_REQUEST = :BANK_REQUEST
              DELINQUENT = :DELINQUENT

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end
          end

          # @see Lithic::Models::FinancialAccounts::Statement::AccountStanding#period_state
          module PeriodState
            extend Lithic::Internal::Type::Enum

            STANDARD = :STANDARD
            PROMO = :PROMO
            PENALTY = :PENALTY

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Lithic::Models::FinancialAccounts::Statement#amount_due
        class AmountDue < Lithic::Internal::Type::BaseModel
          # @!attribute amount
          #   Payment due at the end of the billing period in cents. Negative amount indicates
          #     something is owed. If the amount owed is positive there was a net credit. If
          #     auto-collections are enabled this is the amount that will be requested on the
          #     payment due date
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute past_due
          #   Amount past due for statement in cents
          #
          #   @return [Integer]
          required :past_due, Integer

          # @!parse
          #   # @param amount [Integer]
          #   # @param past_due [Integer]
          #   #
          #   def initialize(amount:, past_due:, **) = super

          # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
        end

        # @see Lithic::Models::FinancialAccounts::Statement#period_totals
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
          #     cents
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

          # @!parse
          #   # @param balance_transfers [Integer]
          #   # @param cash_advances [Integer]
          #   # @param credits [Integer]
          #   # @param fees [Integer]
          #   # @param interest [Integer]
          #   # @param payments [Integer]
          #   # @param purchases [Integer]
          #   #
          #   def initialize(balance_transfers:, cash_advances:, credits:, fees:, interest:, payments:, purchases:, **) = super

          # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
        end

        # @see Lithic::Models::FinancialAccounts::Statement#statement_type
        module StatementType
          extend Lithic::Internal::Type::Enum

          INITIAL = :INITIAL
          PERIOD_END = :PERIOD_END
          FINAL = :FINAL

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # @see Lithic::Models::FinancialAccounts::Statement#ytd_totals
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
          #     cents
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

          # @!parse
          #   # @param balance_transfers [Integer]
          #   # @param cash_advances [Integer]
          #   # @param credits [Integer]
          #   # @param fees [Integer]
          #   # @param interest [Integer]
          #   # @param payments [Integer]
          #   # @param purchases [Integer]
          #   #
          #   def initialize(balance_transfers:, cash_advances:, credits:, fees:, interest:, payments:, purchases:, **) = super

          # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
        end

        # @see Lithic::Models::FinancialAccounts::Statement#interest_details
        class InterestDetails < Lithic::Internal::Type::BaseModel
          # @!attribute actual_interest_charged
          #
          #   @return [Integer, nil]
          required :actual_interest_charged, Integer, nil?: true

          # @!attribute daily_balance_amounts
          #
          #   @return [Lithic::Models::FinancialAccounts::Statement::InterestDetails::DailyBalanceAmounts]
          required :daily_balance_amounts,
                   -> { Lithic::Models::FinancialAccounts::Statement::InterestDetails::DailyBalanceAmounts }

          # @!attribute effective_apr
          #
          #   @return [Lithic::Models::FinancialAccounts::Statement::InterestDetails::EffectiveApr]
          required :effective_apr,
                   -> { Lithic::Models::FinancialAccounts::Statement::InterestDetails::EffectiveApr }

          # @!attribute interest_calculation_method
          #
          #   @return [Symbol, Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestCalculationMethod]
          required :interest_calculation_method,
                   enum: -> { Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestCalculationMethod }

          # @!attribute interest_for_period
          #
          #   @return [Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestForPeriod]
          required :interest_for_period,
                   -> { Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestForPeriod }

          # @!attribute prime_rate
          #
          #   @return [String, nil]
          required :prime_rate, String, nil?: true

          # @!attribute minimum_interest_charged
          #
          #   @return [Integer, nil]
          optional :minimum_interest_charged, Integer, nil?: true

          # @!parse
          #   # @param actual_interest_charged [Integer, nil]
          #   # @param daily_balance_amounts [Lithic::Models::FinancialAccounts::Statement::InterestDetails::DailyBalanceAmounts]
          #   # @param effective_apr [Lithic::Models::FinancialAccounts::Statement::InterestDetails::EffectiveApr]
          #   # @param interest_calculation_method [Symbol, Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestCalculationMethod]
          #   # @param interest_for_period [Lithic::Models::FinancialAccounts::Statement::InterestDetails::InterestForPeriod]
          #   # @param prime_rate [String, nil]
          #   # @param minimum_interest_charged [Integer, nil]
          #   #
          #   def initialize(
          #     actual_interest_charged:,
          #     daily_balance_amounts:,
          #     effective_apr:,
          #     interest_calculation_method:,
          #     interest_for_period:,
          #     prime_rate:,
          #     minimum_interest_charged: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

          # @see Lithic::Models::FinancialAccounts::Statement::InterestDetails#daily_balance_amounts
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

            # @!parse
            #   # @param balance_transfers [String]
            #   # @param cash_advances [String]
            #   # @param purchases [String]
            #   #
            #   def initialize(balance_transfers:, cash_advances:, purchases:, **) = super

            # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
          end

          # @see Lithic::Models::FinancialAccounts::Statement::InterestDetails#effective_apr
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

            # @!parse
            #   # @param balance_transfers [String]
            #   # @param cash_advances [String]
            #   # @param purchases [String]
            #   #
            #   def initialize(balance_transfers:, cash_advances:, purchases:, **) = super

            # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
          end

          # @see Lithic::Models::FinancialAccounts::Statement::InterestDetails#interest_calculation_method
          module InterestCalculationMethod
            extend Lithic::Internal::Type::Enum

            DAILY = :DAILY
            AVERAGE_DAILY = :AVERAGE_DAILY

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # @see Lithic::Models::FinancialAccounts::Statement::InterestDetails#interest_for_period
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

            # @!parse
            #   # @param balance_transfers [String]
            #   # @param cash_advances [String]
            #   # @param purchases [String]
            #   #
            #   def initialize(balance_transfers:, cash_advances:, purchases:, **) = super

            # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
          end
        end
      end
    end
  end
end
