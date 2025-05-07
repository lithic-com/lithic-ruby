# frozen_string_literal: true

module Lithic
  module Models
    class FinancialTransaction < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Globally unique identifier.
      #
      #   @return [String]
      required :token, String

      # @!attribute category
      #   Status types:
      #
      #   - `CARD` - Issuing card transaction.
      #   - `ACH` - Transaction over ACH.
      #   - `INTERNAL` - Transaction for internal adjustment.
      #   - `TRANSFER` - Internal transfer of funds between financial accounts in your
      #     program.
      #
      #   @return [Symbol, Lithic::FinancialTransaction::Category]
      required :category, enum: -> { Lithic::FinancialTransaction::Category }

      # @!attribute created
      #   Date and time when the financial transaction first occurred. UTC time zone.
      #
      #   @return [Time]
      required :created, Time

      # @!attribute currency
      #   3-character alphabetic ISO 4217 code for the settling currency of the
      #   transaction.
      #
      #   @return [String]
      required :currency, String

      # @!attribute descriptor
      #   A string that provides a description of the financial transaction; may be useful
      #   to display to users.
      #
      #   @return [String]
      required :descriptor, String

      # @!attribute events
      #   A list of all financial events that have modified this financial transaction.
      #
      #   @return [Array<Lithic::FinancialTransaction::Event>]
      required :events, -> { Lithic::Internal::Type::ArrayOf[Lithic::FinancialTransaction::Event] }

      # @!attribute pending_amount
      #   Pending amount of the transaction in the currency's smallest unit (e.g., cents),
      #   including any acquirer fees. The value of this field will go to zero over time
      #   once the financial transaction is settled.
      #
      #   @return [Integer]
      required :pending_amount, Integer

      # @!attribute result
      #   APPROVED transactions were successful while DECLINED transactions were declined
      #   by user, Lithic, or the network.
      #
      #   @return [Symbol, Lithic::FinancialTransaction::Result]
      required :result, enum: -> { Lithic::FinancialTransaction::Result }

      # @!attribute settled_amount
      #   Amount of the transaction that has been settled in the currency's smallest unit
      #   (e.g., cents), including any acquirer fees. This may change over time.
      #
      #   @return [Integer]
      required :settled_amount, Integer

      # @!attribute status
      #   Status types:
      #
      #   - `DECLINED` - The transaction was declined.
      #   - `EXPIRED` - The authorization as it has passed its expiration time. Card
      #     transaction only.
      #   - `PENDING` - The transaction is expected to settle.
      #   - `RETURNED` - The transaction has been returned.
      #   - `SETTLED` - The transaction is completed.
      #   - `VOIDED` - The transaction was voided. Card transaction only.
      #
      #   @return [Symbol, Lithic::FinancialTransaction::Status]
      required :status, enum: -> { Lithic::FinancialTransaction::Status }

      # @!attribute updated
      #   Date and time when the financial transaction was last updated. UTC time zone.
      #
      #   @return [Time]
      required :updated, Time

      # @!method initialize(token:, category:, created:, currency:, descriptor:, events:, pending_amount:, result:, settled_amount:, status:, updated:)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::FinancialTransaction} for more details.
      #
      #   @param token [String] Globally unique identifier.
      #
      #   @param category [Symbol, Lithic::FinancialTransaction::Category] Status types:
      #
      #   @param created [Time] Date and time when the financial transaction first occurred. UTC time zone.
      #
      #   @param currency [String] 3-character alphabetic ISO 4217 code for the settling currency of the transactio
      #
      #   @param descriptor [String] A string that provides a description of the financial transaction; may be useful
      #
      #   @param events [Array<Lithic::FinancialTransaction::Event>] A list of all financial events that have modified this financial transaction.
      #
      #   @param pending_amount [Integer] Pending amount of the transaction in the currency's smallest unit (e.g., cents),
      #
      #   @param result [Symbol, Lithic::FinancialTransaction::Result] APPROVED transactions were successful while DECLINED transactions were declined
      #
      #   @param settled_amount [Integer] Amount of the transaction that has been settled in the currency's smallest unit
      #
      #   @param status [Symbol, Lithic::FinancialTransaction::Status] Status types:
      #
      #   @param updated [Time] Date and time when the financial transaction was last updated. UTC time zone.

      # Status types:
      #
      # - `CARD` - Issuing card transaction.
      # - `ACH` - Transaction over ACH.
      # - `INTERNAL` - Transaction for internal adjustment.
      # - `TRANSFER` - Internal transfer of funds between financial accounts in your
      #   program.
      #
      # @see Lithic::FinancialTransaction#category
      module Category
        extend Lithic::Internal::Type::Enum

        ACH = :ACH
        CARD = :CARD
        INTERNAL = :INTERNAL
        TRANSFER = :TRANSFER

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Event < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Globally unique identifier.
        #
        #   @return [String, nil]
        optional :token, String

        # @!attribute amount
        #   Amount of the financial event that has been settled in the currency's smallest
        #   unit (e.g., cents).
        #
        #   @return [Integer, nil]
        optional :amount, Integer

        # @!attribute created
        #   Date and time when the financial event occurred. UTC time zone.
        #
        #   @return [Time, nil]
        optional :created, Time

        # @!attribute result
        #   APPROVED financial events were successful while DECLINED financial events were
        #   declined by user, Lithic, or the network.
        #
        #   @return [Symbol, Lithic::FinancialTransaction::Event::Result, nil]
        optional :result, enum: -> { Lithic::FinancialTransaction::Event::Result }

        # @!attribute type
        #
        #   @return [Symbol, Lithic::FinancialTransaction::Event::Type, nil]
        optional :type, enum: -> { Lithic::FinancialTransaction::Event::Type }

        # @!method initialize(token: nil, amount: nil, created: nil, result: nil, type: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::FinancialTransaction::Event} for more details.
        #
        #   @param token [String] Globally unique identifier.
        #
        #   @param amount [Integer] Amount of the financial event that has been settled in the currency's smallest u
        #
        #   @param created [Time] Date and time when the financial event occurred. UTC time zone.
        #
        #   @param result [Symbol, Lithic::FinancialTransaction::Event::Result] APPROVED financial events were successful while DECLINED financial events were d
        #
        #   @param type [Symbol, Lithic::FinancialTransaction::Event::Type]

        # APPROVED financial events were successful while DECLINED financial events were
        # declined by user, Lithic, or the network.
        #
        # @see Lithic::FinancialTransaction::Event#result
        module Result
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::FinancialTransaction::Event#type
        module Type
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

      # APPROVED transactions were successful while DECLINED transactions were declined
      # by user, Lithic, or the network.
      #
      # @see Lithic::FinancialTransaction#result
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status types:
      #
      # - `DECLINED` - The transaction was declined.
      # - `EXPIRED` - The authorization as it has passed its expiration time. Card
      #   transaction only.
      # - `PENDING` - The transaction is expected to settle.
      # - `RETURNED` - The transaction has been returned.
      # - `SETTLED` - The transaction is completed.
      # - `VOIDED` - The transaction was voided. Card transaction only.
      #
      # @see Lithic::FinancialTransaction#status
      module Status
        extend Lithic::Internal::Type::Enum

        DECLINED = :DECLINED
        EXPIRED = :EXPIRED
        PENDING = :PENDING
        RETURNED = :RETURNED
        SETTLED = :SETTLED
        VOIDED = :VOIDED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
