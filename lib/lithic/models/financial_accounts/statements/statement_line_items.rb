# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      module Statements
        class StatementLineItems < Lithic::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Lithic::FinancialAccounts::Statements::StatementLineItems::Data>]
          required :data,
                   -> {
                     Lithic::Internal::Type::ArrayOf[Lithic::FinancialAccounts::Statements::StatementLineItems::Data]
                   }

          # @!attribute has_more
          #
          #   @return [Boolean]
          required :has_more, Lithic::Internal::Type::Boolean

          # @!method initialize(data:, has_more:)
          #   @param data [Array<Lithic::FinancialAccounts::Statements::StatementLineItems::Data>]
          #   @param has_more [Boolean]

          class Data < Lithic::Internal::Type::BaseModel
            # @!attribute token
            #   Globally unique identifier for a Statement Line Item
            #
            #   @return [String]
            required :token, String

            # @!attribute amount
            #   Transaction amount in cents
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute category
            #
            #   @return [Symbol, Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category]
            required :category,
                     enum: -> {
                       Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category
                     }

            # @!attribute created
            #   Timestamp of when the line item was generated
            #
            #   @return [Time]
            required :created, Time

            # @!attribute currency
            #   3-character alphabetic ISO 4217 code for the settling currency of the
            #   transaction
            #
            #   @return [String]
            required :currency, String

            # @!attribute effective_date
            #   Date that the transaction effected the account balance
            #
            #   @return [Date]
            required :effective_date, Date

            # @!attribute event_type
            #
            #   @return [Symbol, Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType]
            required :event_type,
                     enum: -> { Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType }

            # @!attribute financial_account_token
            #   Globally unique identifier for a financial account
            #
            #   @return [String]
            required :financial_account_token, String

            # @!attribute financial_transaction_event_token
            #   Globally unique identifier for a financial transaction event
            #
            #   @return [String]
            required :financial_transaction_event_token, String

            # @!attribute financial_transaction_token
            #   Globally unique identifier for a financial transaction
            #
            #   @return [String]
            required :financial_transaction_token, String

            # @!attribute card_token
            #   Globally unique identifier for a card
            #
            #   @return [String, nil]
            optional :card_token, String

            # @!attribute descriptor
            #
            #   @return [String, nil]
            optional :descriptor, String

            # @!method initialize(token:, amount:, category:, created:, currency:, effective_date:, event_type:, financial_account_token:, financial_transaction_event_token:, financial_transaction_token:, card_token: nil, descriptor: nil)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::FinancialAccounts::Statements::StatementLineItems::Data} for more
            #   details.
            #
            #   @param token [String] Globally unique identifier for a Statement Line Item
            #
            #   @param amount [Integer] Transaction amount in cents
            #
            #   @param category [Symbol, Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category]
            #
            #   @param created [Time] Timestamp of when the line item was generated
            #
            #   @param currency [String] 3-character alphabetic ISO 4217 code for the settling currency of the transactio
            #
            #   @param effective_date [Date] Date that the transaction effected the account balance
            #
            #   @param event_type [Symbol, Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType]
            #
            #   @param financial_account_token [String] Globally unique identifier for a financial account
            #
            #   @param financial_transaction_event_token [String] Globally unique identifier for a financial transaction event
            #
            #   @param financial_transaction_token [String] Globally unique identifier for a financial transaction
            #
            #   @param card_token [String] Globally unique identifier for a card
            #
            #   @param descriptor [String]

            # @see Lithic::FinancialAccounts::Statements::StatementLineItems::Data#category
            module Category
              extend Lithic::Internal::Type::Enum

              ACH = :ACH
              BALANCE_OR_FUNDING = :BALANCE_OR_FUNDING
              CARD = :CARD
              EXTERNAL_ACH = :EXTERNAL_ACH
              EXTERNAL_CHECK = :EXTERNAL_CHECK
              EXTERNAL_TRANSFER = :EXTERNAL_TRANSFER
              EXTERNAL_WIRE = :EXTERNAL_WIRE
              MANAGEMENT_ADJUSTMENT = :MANAGEMENT_ADJUSTMENT
              MANAGEMENT_DISPUTE = :MANAGEMENT_DISPUTE
              MANAGEMENT_FEE = :MANAGEMENT_FEE
              MANAGEMENT_REWARD = :MANAGEMENT_REWARD
              MANAGEMENT_DISBURSEMENT = :MANAGEMENT_DISBURSEMENT

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Lithic::FinancialAccounts::Statements::StatementLineItems::Data#event_type
            module EventType
              extend Lithic::Internal::Type::Enum

              ACH_ORIGINATION_CANCELLED = :ACH_ORIGINATION_CANCELLED
              ACH_ORIGINATION_INITIATED = :ACH_ORIGINATION_INITIATED
              ACH_ORIGINATION_PROCESSED = :ACH_ORIGINATION_PROCESSED
              ACH_ORIGINATION_RELEASED = :ACH_ORIGINATION_RELEASED
              ACH_ORIGINATION_REVIEWED = :ACH_ORIGINATION_REVIEWED
              ACH_ORIGINATION_SETTLED = :ACH_ORIGINATION_SETTLED
              ACH_RECEIPT_PROCESSED = :ACH_RECEIPT_PROCESSED
              ACH_RECEIPT_SETTLED = :ACH_RECEIPT_SETTLED
              ACH_RETURN_INITIATED = :ACH_RETURN_INITIATED
              ACH_RETURN_PROCESSED = :ACH_RETURN_PROCESSED
              ACH_RETURN_SETTLED = :ACH_RETURN_SETTLED
              AUTHORIZATION = :AUTHORIZATION
              AUTHORIZATION_ADVICE = :AUTHORIZATION_ADVICE
              AUTHORIZATION_EXPIRY = :AUTHORIZATION_EXPIRY
              AUTHORIZATION_REVERSAL = :AUTHORIZATION_REVERSAL
              BALANCE_INQUIRY = :BALANCE_INQUIRY
              BILLING_ERROR = :BILLING_ERROR
              BILLING_ERROR_REVERSAL = :BILLING_ERROR_REVERSAL
              CARD_TO_CARD = :CARD_TO_CARD
              CASH_BACK = :CASH_BACK
              CASH_BACK_REVERSAL = :CASH_BACK_REVERSAL
              CLEARING = :CLEARING
              CORRECTION_CREDIT = :CORRECTION_CREDIT
              CORRECTION_DEBIT = :CORRECTION_DEBIT
              CREDIT_AUTHORIZATION = :CREDIT_AUTHORIZATION
              CREDIT_AUTHORIZATION_ADVICE = :CREDIT_AUTHORIZATION_ADVICE
              CURRENCY_CONVERSION = :CURRENCY_CONVERSION
              CURRENCY_CONVERSION_REVERSAL = :CURRENCY_CONVERSION_REVERSAL
              DISPUTE_WON = :DISPUTE_WON
              EXTERNAL_ACH_CANCELED = :EXTERNAL_ACH_CANCELED
              EXTERNAL_ACH_INITIATED = :EXTERNAL_ACH_INITIATED
              EXTERNAL_ACH_RELEASED = :EXTERNAL_ACH_RELEASED
              EXTERNAL_ACH_REVERSED = :EXTERNAL_ACH_REVERSED
              EXTERNAL_ACH_SETTLED = :EXTERNAL_ACH_SETTLED
              EXTERNAL_CHECK_CANCELED = :EXTERNAL_CHECK_CANCELED
              EXTERNAL_CHECK_INITIATED = :EXTERNAL_CHECK_INITIATED
              EXTERNAL_CHECK_RELEASED = :EXTERNAL_CHECK_RELEASED
              EXTERNAL_CHECK_REVERSED = :EXTERNAL_CHECK_REVERSED
              EXTERNAL_CHECK_SETTLED = :EXTERNAL_CHECK_SETTLED
              EXTERNAL_TRANSFER_CANCELED = :EXTERNAL_TRANSFER_CANCELED
              EXTERNAL_TRANSFER_INITIATED = :EXTERNAL_TRANSFER_INITIATED
              EXTERNAL_TRANSFER_RELEASED = :EXTERNAL_TRANSFER_RELEASED
              EXTERNAL_TRANSFER_REVERSED = :EXTERNAL_TRANSFER_REVERSED
              EXTERNAL_TRANSFER_SETTLED = :EXTERNAL_TRANSFER_SETTLED
              EXTERNAL_WIRE_CANCELED = :EXTERNAL_WIRE_CANCELED
              EXTERNAL_WIRE_INITIATED = :EXTERNAL_WIRE_INITIATED
              EXTERNAL_WIRE_RELEASED = :EXTERNAL_WIRE_RELEASED
              EXTERNAL_WIRE_REVERSED = :EXTERNAL_WIRE_REVERSED
              EXTERNAL_WIRE_SETTLED = :EXTERNAL_WIRE_SETTLED
              FINANCIAL_AUTHORIZATION = :FINANCIAL_AUTHORIZATION
              FINANCIAL_CREDIT_AUTHORIZATION = :FINANCIAL_CREDIT_AUTHORIZATION
              INTEREST = :INTEREST
              INTEREST_REVERSAL = :INTEREST_REVERSAL
              INTERNAL_ADJUSTMENT = :INTERNAL_ADJUSTMENT
              LATE_PAYMENT = :LATE_PAYMENT
              LATE_PAYMENT_REVERSAL = :LATE_PAYMENT_REVERSAL
              LOSS_WRITE_OFF = :LOSS_WRITE_OFF
              PROVISIONAL_CREDIT = :PROVISIONAL_CREDIT
              PROVISIONAL_CREDIT_REVERSAL = :PROVISIONAL_CREDIT_REVERSAL
              SERVICE = :SERVICE
              RETURN = :RETURN
              RETURN_REVERSAL = :RETURN_REVERSAL
              TRANSFER = :TRANSFER
              TRANSFER_INSUFFICIENT_FUNDS = :TRANSFER_INSUFFICIENT_FUNDS
              RETURNED_PAYMENT = :RETURNED_PAYMENT
              RETURNED_PAYMENT_REVERSAL = :RETURNED_PAYMENT_REVERSAL
              LITHIC_NETWORK_PAYMENT = :LITHIC_NETWORK_PAYMENT

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end

      StatementLineItems = Statements::StatementLineItems
    end
  end
end
