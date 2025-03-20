# frozen_string_literal: true

module Lithic
  module Models
    class FinancialTransaction < Lithic::BaseModel
      # @!attribute token
      #   Globally unique identifier.
      #
      #   @return [String]
      required :token, String

      # @!attribute category
      #   Status types:
      #
      #     - `CARD` - Issuing card transaction.
      #     - `ACH` - Transaction over ACH.
      #     - `INTERNAL` - Transaction for internal adjustment.
      #     - `TRANSFER` - Internal transfer of funds between financial accounts in your
      #       program.
      #
      #   @return [Symbol, Lithic::Models::FinancialTransaction::Category]
      required :category, enum: -> { Lithic::Models::FinancialTransaction::Category }

      # @!attribute created
      #   Date and time when the financial transaction first occurred. UTC time zone.
      #
      #   @return [Time]
      required :created, Time

      # @!attribute currency
      #   3-character alphabetic ISO 4217 code for the settling currency of the
      #     transaction.
      #
      #   @return [String]
      required :currency, String

      # @!attribute descriptor
      #   A string that provides a description of the financial transaction; may be useful
      #     to display to users.
      #
      #   @return [String]
      required :descriptor, String

      # @!attribute events
      #   A list of all financial events that have modified this financial transaction.
      #
      #   @return [Array<Lithic::Models::FinancialTransaction::Event>]
      required :events, -> { Lithic::ArrayOf[Lithic::Models::FinancialTransaction::Event] }

      # @!attribute pending_amount
      #   Pending amount of the transaction in the currency's smallest unit (e.g., cents),
      #     including any acquirer fees. The value of this field will go to zero over time
      #     once the financial transaction is settled.
      #
      #   @return [Integer]
      required :pending_amount, Integer

      # @!attribute result
      #   APPROVED transactions were successful while DECLINED transactions were declined
      #     by user, Lithic, or the network.
      #
      #   @return [Symbol, Lithic::Models::FinancialTransaction::Result]
      required :result, enum: -> { Lithic::Models::FinancialTransaction::Result }

      # @!attribute settled_amount
      #   Amount of the transaction that has been settled in the currency's smallest unit
      #     (e.g., cents), including any acquirer fees. This may change over time.
      #
      #   @return [Integer]
      required :settled_amount, Integer

      # @!attribute status
      #   Status types:
      #
      #     - `DECLINED` - The transaction was declined.
      #     - `EXPIRED` - The authorization as it has passed its expiration time. Card
      #       transaction only.
      #     - `PENDING` - The transaction is expected to settle.
      #     - `RETURNED` - The transaction has been returned.
      #     - `SETTLED` - The transaction is completed.
      #     - `VOIDED` - The transaction was voided. Card transaction only.
      #
      #   @return [Symbol, Lithic::Models::FinancialTransaction::Status]
      required :status, enum: -> { Lithic::Models::FinancialTransaction::Status }

      # @!attribute updated
      #   Date and time when the financial transaction was last updated. UTC time zone.
      #
      #   @return [Time]
      required :updated, Time

      # @!parse
      #   # @param token [String]
      #   # @param category [Symbol, Lithic::Models::FinancialTransaction::Category]
      #   # @param created [Time]
      #   # @param currency [String]
      #   # @param descriptor [String]
      #   # @param events [Array<Lithic::Models::FinancialTransaction::Event>]
      #   # @param pending_amount [Integer]
      #   # @param result [Symbol, Lithic::Models::FinancialTransaction::Result]
      #   # @param settled_amount [Integer]
      #   # @param status [Symbol, Lithic::Models::FinancialTransaction::Status]
      #   # @param updated [Time]
      #   #
      #   def initialize(
      #     token:,
      #     category:,
      #     created:,
      #     currency:,
      #     descriptor:,
      #     events:,
      #     pending_amount:,
      #     result:,
      #     settled_amount:,
      #     status:,
      #     updated:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # Status types:
      #
      #   - `CARD` - Issuing card transaction.
      #   - `ACH` - Transaction over ACH.
      #   - `INTERNAL` - Transaction for internal adjustment.
      #   - `TRANSFER` - Internal transfer of funds between financial accounts in your
      #     program.
      module Category
        extend Lithic::Enum

        ACH = :ACH
        CARD = :CARD
        INTERNAL = :INTERNAL
        TRANSFER = :TRANSFER

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end

      class Event < Lithic::BaseModel
        # @!attribute [r] token
        #   Globally unique identifier.
        #
        #   @return [String, nil]
        optional :token, String

        # @!parse
        #   # @return [String]
        #   attr_writer :token

        # @!attribute [r] amount
        #   Amount of the financial event that has been settled in the currency's smallest
        #     unit (e.g., cents).
        #
        #   @return [Integer, nil]
        optional :amount, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :amount

        # @!attribute [r] created
        #   Date and time when the financial event occurred. UTC time zone.
        #
        #   @return [Time, nil]
        optional :created, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :created

        # @!attribute [r] result
        #   APPROVED financial events were successful while DECLINED financial events were
        #     declined by user, Lithic, or the network.
        #
        #   @return [Symbol, Lithic::Models::FinancialTransaction::Event::Result, nil]
        optional :result, enum: -> { Lithic::Models::FinancialTransaction::Event::Result }

        # @!parse
        #   # @return [Symbol, Lithic::Models::FinancialTransaction::Event::Result]
        #   attr_writer :result

        # @!attribute [r] type
        #
        #   @return [Symbol, Lithic::Models::FinancialTransaction::Event::Type, nil]
        optional :type, enum: -> { Lithic::Models::FinancialTransaction::Event::Type }

        # @!parse
        #   # @return [Symbol, Lithic::Models::FinancialTransaction::Event::Type]
        #   attr_writer :type

        # @!parse
        #   # @param token [String]
        #   # @param amount [Integer]
        #   # @param created [Time]
        #   # @param result [Symbol, Lithic::Models::FinancialTransaction::Event::Result]
        #   # @param type [Symbol, Lithic::Models::FinancialTransaction::Event::Type]
        #   #
        #   def initialize(token: nil, amount: nil, created: nil, result: nil, type: nil, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void

        # APPROVED financial events were successful while DECLINED financial events were
        #   declined by user, Lithic, or the network.
        module Result
          extend Lithic::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          finalize!

          class << self
            # @!parse
            #   # @return [Array<Symbol>]
            #   def values; end
          end
        end

        module Type
          extend Lithic::Enum

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
          PROVISIONAL_CREDIT = :PROVISIONAL_CREDIT
          PROVISIONAL_CREDIT_REVERSAL = :PROVISIONAL_CREDIT_REVERSAL
          RETURN = :RETURN
          RETURN_REVERSAL = :RETURN_REVERSAL
          TRANSFER = :TRANSFER
          TRANSFER_INSUFFICIENT_FUNDS = :TRANSFER_INSUFFICIENT_FUNDS
          RETURNED_PAYMENT = :RETURNED_PAYMENT
          RETURNED_PAYMENT_REVERSAL = :RETURNED_PAYMENT_REVERSAL

          finalize!

          class << self
            # @!parse
            #   # @return [Array<Symbol>]
            #   def values; end
          end
        end
      end

      # APPROVED transactions were successful while DECLINED transactions were declined
      #   by user, Lithic, or the network.
      module Result
        extend Lithic::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end

      # Status types:
      #
      #   - `DECLINED` - The transaction was declined.
      #   - `EXPIRED` - The authorization as it has passed its expiration time. Card
      #     transaction only.
      #   - `PENDING` - The transaction is expected to settle.
      #   - `RETURNED` - The transaction has been returned.
      #   - `SETTLED` - The transaction is completed.
      #   - `VOIDED` - The transaction was voided. Card transaction only.
      module Status
        extend Lithic::Enum

        DECLINED = :DECLINED
        EXPIRED = :EXPIRED
        PENDING = :PENDING
        RETURNED = :RETURNED
        SETTLED = :SETTLED
        VOIDED = :VOIDED

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end
    end
  end
end
