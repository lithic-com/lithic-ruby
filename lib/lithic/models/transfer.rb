# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Transfers#create
    class Transfer < Lithic::Internal::Type::BaseModel
      # @!attribute [r] token
      #   Globally unique identifier for the transfer event.
      #
      #   @return [String, nil]
      optional :token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :token

      # @!attribute [r] category
      #   Status types:
      #
      #     - `TRANSFER` - Internal transfer of funds between financial accounts in your
      #       program.
      #
      #   @return [Symbol, Lithic::Models::Transfer::Category, nil]
      optional :category, enum: -> { Lithic::Models::Transfer::Category }

      # @!parse
      #   # @return [Symbol, Lithic::Models::Transfer::Category]
      #   attr_writer :category

      # @!attribute [r] created
      #   Date and time when the transfer occurred. UTC time zone.
      #
      #   @return [Time, nil]
      optional :created, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :created

      # @!attribute [r] currency
      #   3-character alphabetic ISO 4217 code for the settling currency of the
      #     transaction.
      #
      #   @return [String, nil]
      optional :currency, String

      # @!parse
      #   # @return [String]
      #   attr_writer :currency

      # @!attribute [r] descriptor
      #   A string that provides a description of the transfer; may be useful to display
      #     to users.
      #
      #   @return [String, nil]
      optional :descriptor, String

      # @!parse
      #   # @return [String]
      #   attr_writer :descriptor

      # @!attribute [r] events
      #   A list of all financial events that have modified this trasnfer.
      #
      #   @return [Array<Lithic::Models::Transfer::Event>, nil]
      optional :events, -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::Transfer::Event] }

      # @!parse
      #   # @return [Array<Lithic::Models::Transfer::Event>]
      #   attr_writer :events

      # @!attribute [r] from_balance
      #   The updated balance of the sending financial account.
      #
      #   @return [Array<Lithic::Models::Balance>, nil]
      optional :from_balance, -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::Balance] }

      # @!parse
      #   # @return [Array<Lithic::Models::Balance>]
      #   attr_writer :from_balance

      # @!attribute [r] pending_amount
      #   Pending amount of the transaction in the currency's smallest unit (e.g., cents),
      #     including any acquirer fees. The value of this field will go to zero over time
      #     once the financial transaction is settled.
      #
      #   @return [Integer, nil]
      optional :pending_amount, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :pending_amount

      # @!attribute [r] result
      #   APPROVED transactions were successful while DECLINED transactions were declined
      #     by user, Lithic, or the network.
      #
      #   @return [Symbol, Lithic::Models::Transfer::Result, nil]
      optional :result, enum: -> { Lithic::Models::Transfer::Result }

      # @!parse
      #   # @return [Symbol, Lithic::Models::Transfer::Result]
      #   attr_writer :result

      # @!attribute [r] settled_amount
      #   Amount of the transaction that has been settled in the currency's smallest unit
      #     (e.g., cents).
      #
      #   @return [Integer, nil]
      optional :settled_amount, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :settled_amount

      # @!attribute [r] status
      #   Status types:
      #
      #     - `DECLINED` - The transfer was declined.
      #     - `EXPIRED` - The transfer was held in pending for too long and expired.
      #     - `PENDING` - The transfer is pending release from a hold.
      #     - `SETTLED` - The transfer is completed.
      #     - `VOIDED` - The transfer was reversed before it settled.
      #
      #   @return [Symbol, Lithic::Models::Transfer::Status, nil]
      optional :status, enum: -> { Lithic::Models::Transfer::Status }

      # @!parse
      #   # @return [Symbol, Lithic::Models::Transfer::Status]
      #   attr_writer :status

      # @!attribute [r] to_balance
      #   The updated balance of the receiving financial account.
      #
      #   @return [Array<Lithic::Models::Balance>, nil]
      optional :to_balance, -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::Balance] }

      # @!parse
      #   # @return [Array<Lithic::Models::Balance>]
      #   attr_writer :to_balance

      # @!attribute [r] updated
      #   Date and time when the financial transaction was last updated. UTC time zone.
      #
      #   @return [Time, nil]
      optional :updated, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :updated

      # @!parse
      #   # @param token [String]
      #   # @param category [Symbol, Lithic::Models::Transfer::Category]
      #   # @param created [Time]
      #   # @param currency [String]
      #   # @param descriptor [String]
      #   # @param events [Array<Lithic::Models::Transfer::Event>]
      #   # @param from_balance [Array<Lithic::Models::Balance>]
      #   # @param pending_amount [Integer]
      #   # @param result [Symbol, Lithic::Models::Transfer::Result]
      #   # @param settled_amount [Integer]
      #   # @param status [Symbol, Lithic::Models::Transfer::Status]
      #   # @param to_balance [Array<Lithic::Models::Balance>]
      #   # @param updated [Time]
      #   #
      #   def initialize(
      #     token: nil,
      #     category: nil,
      #     created: nil,
      #     currency: nil,
      #     descriptor: nil,
      #     events: nil,
      #     from_balance: nil,
      #     pending_amount: nil,
      #     result: nil,
      #     settled_amount: nil,
      #     status: nil,
      #     to_balance: nil,
      #     updated: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

      # Status types:
      #
      #   - `TRANSFER` - Internal transfer of funds between financial accounts in your
      #     program.
      #
      # @see Lithic::Models::Transfer#category
      module Category
        extend Lithic::Internal::Type::Enum

        TRANSFER = :TRANSFER

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      class Event < Lithic::Internal::Type::BaseModel
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
        #   @return [Symbol, Lithic::Models::Transfer::Event::Result, nil]
        optional :result, enum: -> { Lithic::Models::Transfer::Event::Result }

        # @!parse
        #   # @return [Symbol, Lithic::Models::Transfer::Event::Result]
        #   attr_writer :result

        # @!attribute [r] type
        #
        #   @return [Symbol, Lithic::Models::Transfer::Event::Type, nil]
        optional :type, enum: -> { Lithic::Models::Transfer::Event::Type }

        # @!parse
        #   # @return [Symbol, Lithic::Models::Transfer::Event::Type]
        #   attr_writer :type

        # @!parse
        #   # @param token [String]
        #   # @param amount [Integer]
        #   # @param created [Time]
        #   # @param result [Symbol, Lithic::Models::Transfer::Event::Result]
        #   # @param type [Symbol, Lithic::Models::Transfer::Event::Type]
        #   #
        #   def initialize(token: nil, amount: nil, created: nil, result: nil, type: nil, **) = super

        # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

        # APPROVED financial events were successful while DECLINED financial events were
        #   declined by user, Lithic, or the network.
        #
        # @see Lithic::Models::Transfer::Event#result
        module Result
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # @see Lithic::Models::Transfer::Event#type
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
          PROVISIONAL_CREDIT = :PROVISIONAL_CREDIT
          PROVISIONAL_CREDIT_REVERSAL = :PROVISIONAL_CREDIT_REVERSAL
          RETURN = :RETURN
          RETURN_REVERSAL = :RETURN_REVERSAL
          TRANSFER = :TRANSFER
          TRANSFER_INSUFFICIENT_FUNDS = :TRANSFER_INSUFFICIENT_FUNDS
          RETURNED_PAYMENT = :RETURNED_PAYMENT
          RETURNED_PAYMENT_REVERSAL = :RETURNED_PAYMENT_REVERSAL

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # APPROVED transactions were successful while DECLINED transactions were declined
      #   by user, Lithic, or the network.
      #
      # @see Lithic::Models::Transfer#result
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # Status types:
      #
      #   - `DECLINED` - The transfer was declined.
      #   - `EXPIRED` - The transfer was held in pending for too long and expired.
      #   - `PENDING` - The transfer is pending release from a hold.
      #   - `SETTLED` - The transfer is completed.
      #   - `VOIDED` - The transfer was reversed before it settled.
      #
      # @see Lithic::Models::Transfer#status
      module Status
        extend Lithic::Internal::Type::Enum

        DECLINED = :DECLINED
        EXPIRED = :EXPIRED
        PENDING = :PENDING
        SETTLED = :SETTLED
        VOIDED = :VOIDED

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
