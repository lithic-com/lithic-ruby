# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Transfers#create
    class Transfer < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Globally unique identifier for the transfer event.
      #
      #   @return [String, nil]
      optional :token, String

      # @!attribute category
      #   Status types:
      #
      #   - `TRANSFER` - Internal transfer of funds between financial accounts in your
      #     program.
      #
      #   @return [Symbol, Lithic::Models::Transfer::Category, nil]
      optional :category, enum: -> { Lithic::Models::Transfer::Category }

      # @!attribute created
      #   Date and time when the transfer occurred. UTC time zone.
      #
      #   @return [Time, nil]
      optional :created, Time

      # @!attribute currency
      #   3-character alphabetic ISO 4217 code for the settling currency of the
      #   transaction.
      #
      #   @return [String, nil]
      optional :currency, String

      # @!attribute descriptor
      #   A string that provides a description of the transfer; may be useful to display
      #   to users.
      #
      #   @return [String, nil]
      optional :descriptor, String

      # @!attribute events
      #   A list of all financial events that have modified this trasnfer.
      #
      #   @return [Array<Lithic::Models::Transfer::Event>, nil]
      optional :events, -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::Transfer::Event] }

      # @!attribute from_balance
      #   The updated balance of the sending financial account.
      #
      #   @return [Array<Lithic::Models::Balance>, nil]
      optional :from_balance, -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::Balance] }

      # @!attribute pending_amount
      #   Pending amount of the transaction in the currency's smallest unit (e.g., cents),
      #   including any acquirer fees. The value of this field will go to zero over time
      #   once the financial transaction is settled.
      #
      #   @return [Integer, nil]
      optional :pending_amount, Integer

      # @!attribute result
      #   APPROVED transactions were successful while DECLINED transactions were declined
      #   by user, Lithic, or the network.
      #
      #   @return [Symbol, Lithic::Models::Transfer::Result, nil]
      optional :result, enum: -> { Lithic::Models::Transfer::Result }

      # @!attribute settled_amount
      #   Amount of the transaction that has been settled in the currency's smallest unit
      #   (e.g., cents).
      #
      #   @return [Integer, nil]
      optional :settled_amount, Integer

      # @!attribute status
      #   Status types:
      #
      #   - `DECLINED` - The transfer was declined.
      #   - `EXPIRED` - The transfer was held in pending for too long and expired.
      #   - `PENDING` - The transfer is pending release from a hold.
      #   - `SETTLED` - The transfer is completed.
      #   - `VOIDED` - The transfer was reversed before it settled.
      #
      #   @return [Symbol, Lithic::Models::Transfer::Status, nil]
      optional :status, enum: -> { Lithic::Models::Transfer::Status }

      # @!attribute to_balance
      #   The updated balance of the receiving financial account.
      #
      #   @return [Array<Lithic::Models::Balance>, nil]
      optional :to_balance, -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::Balance] }

      # @!attribute updated
      #   Date and time when the financial transaction was last updated. UTC time zone.
      #
      #   @return [Time, nil]
      optional :updated, Time

      # @!method initialize(token: nil, category: nil, created: nil, currency: nil, descriptor: nil, events: nil, from_balance: nil, pending_amount: nil, result: nil, settled_amount: nil, status: nil, to_balance: nil, updated: nil)
      #   Some parameter documentations has been truncated, see {Lithic::Models::Transfer}
      #   for more details.
      #
      #   @param token [String] Globally unique identifier for the transfer event.
      #
      #   @param category [Symbol, Lithic::Models::Transfer::Category] Status types: ...
      #
      #   @param created [Time] Date and time when the transfer occurred. UTC time zone.
      #
      #   @param currency [String] 3-character alphabetic ISO 4217 code for the settling currency of the transactio
      #   ...
      #
      #   @param descriptor [String] A string that provides a description of the transfer; may be useful to display t
      #   ...
      #
      #   @param events [Array<Lithic::Models::Transfer::Event>] A list of all financial events that have modified this trasnfer.
      #
      #   @param from_balance [Array<Lithic::Models::Balance>] The updated balance of the sending financial account.
      #
      #   @param pending_amount [Integer] Pending amount of the transaction in the currency's smallest unit (e.g., cents),
      #   ...
      #
      #   @param result [Symbol, Lithic::Models::Transfer::Result] APPROVED transactions were successful while DECLINED transactions were declined
      #   ...
      #
      #   @param settled_amount [Integer] Amount of the transaction that has been settled in the currency's smallest unit
      #   ...
      #
      #   @param status [Symbol, Lithic::Models::Transfer::Status] Status types: ...
      #
      #   @param to_balance [Array<Lithic::Models::Balance>] The updated balance of the receiving financial account.
      #
      #   @param updated [Time] Date and time when the financial transaction was last updated. UTC time zone.

      # Status types:
      #
      # - `TRANSFER` - Internal transfer of funds between financial accounts in your
      #   program.
      #
      # @see Lithic::Models::Transfer#category
      module Category
        extend Lithic::Internal::Type::Enum

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
        #   @return [Symbol, Lithic::Models::Transfer::Event::Result, nil]
        optional :result, enum: -> { Lithic::Models::Transfer::Event::Result }

        # @!attribute type
        #
        #   @return [Symbol, Lithic::Models::Transfer::Event::Type, nil]
        optional :type, enum: -> { Lithic::Models::Transfer::Event::Type }

        # @!method initialize(token: nil, amount: nil, created: nil, result: nil, type: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::Transfer::Event} for more details.
        #
        #   @param token [String] Globally unique identifier.
        #
        #   @param amount [Integer] Amount of the financial event that has been settled in the currency's smallest u
        #   ...
        #
        #   @param created [Time] Date and time when the financial event occurred. UTC time zone.
        #
        #   @param result [Symbol, Lithic::Models::Transfer::Event::Result] APPROVED financial events were successful while DECLINED financial events were d
        #   ...
        #
        #   @param type [Symbol, Lithic::Models::Transfer::Event::Type]

        # APPROVED financial events were successful while DECLINED financial events were
        # declined by user, Lithic, or the network.
        #
        # @see Lithic::Models::Transfer::Event#result
        module Result
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          # @!method self.values
          #   @return [Array<Symbol>]
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
      # @see Lithic::Models::Transfer#result
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status types:
      #
      # - `DECLINED` - The transfer was declined.
      # - `EXPIRED` - The transfer was held in pending for too long and expired.
      # - `PENDING` - The transfer is pending release from a hold.
      # - `SETTLED` - The transfer is completed.
      # - `VOIDED` - The transfer was reversed before it settled.
      #
      # @see Lithic::Models::Transfer#status
      module Status
        extend Lithic::Internal::Type::Enum

        DECLINED = :DECLINED
        EXPIRED = :EXPIRED
        PENDING = :PENDING
        SETTLED = :SETTLED
        VOIDED = :VOIDED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
