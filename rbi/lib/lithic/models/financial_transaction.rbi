# typed: strong

module Lithic
  module Models
    class FinancialTransaction < Lithic::BaseModel
      # Globally unique identifier.
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # Status types:
      #
      #   - `CARD` - Issuing card transaction.
      #   - `ACH` - Transaction over ACH.
      #   - `INTERNAL` - Transaction for internal adjustment.
      #   - `TRANSFER` - Internal transfer of funds between financial accounts in your
      #     program.
      sig { returns(Symbol) }
      def category
      end

      sig { params(_: Symbol).returns(Symbol) }
      def category=(_)
      end

      # Date and time when the financial transaction first occurred. UTC time zone.
      sig { returns(Time) }
      def created
      end

      sig { params(_: Time).returns(Time) }
      def created=(_)
      end

      # 3-character alphabetic ISO 4217 code for the settling currency of the
      #   transaction.
      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      # A string that provides a description of the financial transaction; may be useful
      #   to display to users.
      sig { returns(String) }
      def descriptor
      end

      sig { params(_: String).returns(String) }
      def descriptor=(_)
      end

      # A list of all financial events that have modified this financial transaction.
      sig { returns(T::Array[Lithic::Models::FinancialTransaction::Event]) }
      def events
      end

      sig do
        params(_: T::Array[Lithic::Models::FinancialTransaction::Event])
          .returns(T::Array[Lithic::Models::FinancialTransaction::Event])
      end
      def events=(_)
      end

      # Pending amount of the transaction in the currency's smallest unit (e.g., cents),
      #   including any acquirer fees. The value of this field will go to zero over time
      #   once the financial transaction is settled.
      sig { returns(Integer) }
      def pending_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def pending_amount=(_)
      end

      # APPROVED transactions were successful while DECLINED transactions were declined
      #   by user, Lithic, or the network.
      sig { returns(Symbol) }
      def result
      end

      sig { params(_: Symbol).returns(Symbol) }
      def result=(_)
      end

      # Amount of the transaction that has been settled in the currency's smallest unit
      #   (e.g., cents), including any acquirer fees. This may change over time.
      sig { returns(Integer) }
      def settled_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def settled_amount=(_)
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
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # Date and time when the financial transaction was last updated. UTC time zone.
      sig { returns(Time) }
      def updated
      end

      sig { params(_: Time).returns(Time) }
      def updated=(_)
      end

      sig do
        params(
          token: String,
          category: Symbol,
          created: Time,
          currency: String,
          descriptor: String,
          events: T::Array[Lithic::Models::FinancialTransaction::Event],
          pending_amount: Integer,
          result: Symbol,
          settled_amount: Integer,
          status: Symbol,
          updated: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
        token:,
        category:,
        created:,
        currency:,
        descriptor:,
        events:,
        pending_amount:,
        result:,
        settled_amount:,
        status:,
        updated:
      )
      end

      sig do
        override
          .returns(
            {
              token: String,
              category: Symbol,
              created: Time,
              currency: String,
              descriptor: String,
              events: T::Array[Lithic::Models::FinancialTransaction::Event],
              pending_amount: Integer,
              result: Symbol,
              settled_amount: Integer,
              status: Symbol,
              updated: Time
            }
          )
      end
      def to_hash
      end

      # Status types:
      #
      #   - `CARD` - Issuing card transaction.
      #   - `ACH` - Transaction over ACH.
      #   - `INTERNAL` - Transaction for internal adjustment.
      #   - `TRANSFER` - Internal transfer of funds between financial accounts in your
      #     program.
      class Category < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ACH = :ACH
        CARD = :CARD
        INTERNAL = :INTERNAL
        TRANSFER = :TRANSFER
      end

      class Event < Lithic::BaseModel
        # Globally unique identifier.
        sig { returns(T.nilable(String)) }
        def token
        end

        sig { params(_: String).returns(String) }
        def token=(_)
        end

        # Amount of the financial event that has been settled in the currency's smallest
        #   unit (e.g., cents).
        sig { returns(T.nilable(Integer)) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        # Date and time when the financial event occurred. UTC time zone.
        sig { returns(T.nilable(Time)) }
        def created
        end

        sig { params(_: Time).returns(Time) }
        def created=(_)
        end

        # APPROVED financial events were successful while DECLINED financial events were
        #   declined by user, Lithic, or the network.
        sig { returns(T.nilable(Symbol)) }
        def result
        end

        sig { params(_: Symbol).returns(Symbol) }
        def result=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig do
          params(token: String, amount: Integer, created: Time, result: Symbol, type: Symbol)
            .returns(T.attached_class)
        end
        def self.new(token: nil, amount: nil, created: nil, result: nil, type: nil)
        end

        sig do
          override.returns({token: String, amount: Integer, created: Time, result: Symbol, type: Symbol})
        end
        def to_hash
        end

        # APPROVED financial events were successful while DECLINED financial events were
        #   declined by user, Lithic, or the network.
        class Result < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          APPROVED = :APPROVED
          DECLINED = :DECLINED
        end

        class Type < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

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
        end
      end

      # APPROVED transactions were successful while DECLINED transactions were declined
      #   by user, Lithic, or the network.
      class Result < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        APPROVED = :APPROVED
        DECLINED = :DECLINED
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
      class Status < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        DECLINED = :DECLINED
        EXPIRED = :EXPIRED
        PENDING = :PENDING
        RETURNED = :RETURNED
        SETTLED = :SETTLED
        VOIDED = :VOIDED
      end
    end
  end
end
