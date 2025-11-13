# frozen_string_literal: true

module Lithic
  module Models
    class FinancialEvent < Lithic::Internal::Type::BaseModel
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
      #   @return [Symbol, Lithic::Models::FinancialEvent::Result, nil]
      optional :result, enum: -> { Lithic::FinancialEvent::Result }

      # @!attribute type
      #
      #   @return [Symbol, Lithic::Models::FinancialEvent::Type, nil]
      optional :type, enum: -> { Lithic::FinancialEvent::Type }

      # @!method initialize(token: nil, amount: nil, created: nil, result: nil, type: nil)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::FinancialEvent} for more details.
      #
      #   Financial Event
      #
      #   @param token [String] Globally unique identifier.
      #
      #   @param amount [Integer] Amount of the financial event that has been settled in the currency's smallest u
      #
      #   @param created [Time] Date and time when the financial event occurred. UTC time zone.
      #
      #   @param result [Symbol, Lithic::Models::FinancialEvent::Result] APPROVED financial events were successful while DECLINED financial events were d
      #
      #   @param type [Symbol, Lithic::Models::FinancialEvent::Type]

      # APPROVED financial events were successful while DECLINED financial events were
      # declined by user, Lithic, or the network.
      #
      # @see Lithic::Models::FinancialEvent#result
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::Models::FinancialEvent#type
      module Type
        extend Lithic::Internal::Type::Enum

        ACH_ORIGINATION_CANCELLED = :ACH_ORIGINATION_CANCELLED
        ACH_ORIGINATION_INITIATED = :ACH_ORIGINATION_INITIATED
        ACH_ORIGINATION_PROCESSED = :ACH_ORIGINATION_PROCESSED
        ACH_ORIGINATION_RELEASED = :ACH_ORIGINATION_RELEASED
        ACH_ORIGINATION_REJECTED = :ACH_ORIGINATION_REJECTED
        ACH_ORIGINATION_REVIEWED = :ACH_ORIGINATION_REVIEWED
        ACH_ORIGINATION_SETTLED = :ACH_ORIGINATION_SETTLED
        ACH_RECEIPT_PROCESSED = :ACH_RECEIPT_PROCESSED
        ACH_RECEIPT_RELEASED = :ACH_RECEIPT_RELEASED
        ACH_RECEIPT_SETTLED = :ACH_RECEIPT_SETTLED
        ACH_RETURN_INITIATED = :ACH_RETURN_INITIATED
        ACH_RETURN_PROCESSED = :ACH_RETURN_PROCESSED
        ACH_RETURN_REJECTED = :ACH_RETURN_REJECTED
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
        COLLECTION = :COLLECTION
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
