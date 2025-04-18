# typed: strong

module Lithic
  module Models
    class Transfer < Lithic::Internal::Type::BaseModel
      # Globally unique identifier for the transfer event.
      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      # Status types:
      #
      # - `TRANSFER` - Internal transfer of funds between financial accounts in your
      #   program.
      sig { returns(T.nilable(Lithic::Models::Transfer::Category::TaggedSymbol)) }
      attr_reader :category

      sig { params(category: Lithic::Models::Transfer::Category::OrSymbol).void }
      attr_writer :category

      # Date and time when the transfer occurred. UTC time zone.
      sig { returns(T.nilable(Time)) }
      attr_reader :created

      sig { params(created: Time).void }
      attr_writer :created

      # 3-character alphabetic ISO 4217 code for the settling currency of the
      # transaction.
      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      # A string that provides a description of the transfer; may be useful to display
      # to users.
      sig { returns(T.nilable(String)) }
      attr_reader :descriptor

      sig { params(descriptor: String).void }
      attr_writer :descriptor

      # A list of all financial events that have modified this trasnfer.
      sig { returns(T.nilable(T::Array[Lithic::Models::Transfer::Event])) }
      attr_reader :events

      sig { params(events: T::Array[T.any(Lithic::Models::Transfer::Event, Lithic::Internal::AnyHash)]).void }
      attr_writer :events

      # The updated balance of the sending financial account.
      sig { returns(T.nilable(T::Array[Lithic::Models::Balance])) }
      attr_reader :from_balance

      sig { params(from_balance: T::Array[T.any(Lithic::Models::Balance, Lithic::Internal::AnyHash)]).void }
      attr_writer :from_balance

      # Pending amount of the transaction in the currency's smallest unit (e.g., cents),
      # including any acquirer fees. The value of this field will go to zero over time
      # once the financial transaction is settled.
      sig { returns(T.nilable(Integer)) }
      attr_reader :pending_amount

      sig { params(pending_amount: Integer).void }
      attr_writer :pending_amount

      # APPROVED transactions were successful while DECLINED transactions were declined
      # by user, Lithic, or the network.
      sig { returns(T.nilable(Lithic::Models::Transfer::Result::TaggedSymbol)) }
      attr_reader :result

      sig { params(result: Lithic::Models::Transfer::Result::OrSymbol).void }
      attr_writer :result

      # Amount of the transaction that has been settled in the currency's smallest unit
      # (e.g., cents).
      sig { returns(T.nilable(Integer)) }
      attr_reader :settled_amount

      sig { params(settled_amount: Integer).void }
      attr_writer :settled_amount

      # Status types:
      #
      # - `DECLINED` - The transfer was declined.
      # - `EXPIRED` - The transfer was held in pending for too long and expired.
      # - `PENDING` - The transfer is pending release from a hold.
      # - `SETTLED` - The transfer is completed.
      # - `VOIDED` - The transfer was reversed before it settled.
      sig { returns(T.nilable(Lithic::Models::Transfer::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Lithic::Models::Transfer::Status::OrSymbol).void }
      attr_writer :status

      # The updated balance of the receiving financial account.
      sig { returns(T.nilable(T::Array[Lithic::Models::Balance])) }
      attr_reader :to_balance

      sig { params(to_balance: T::Array[T.any(Lithic::Models::Balance, Lithic::Internal::AnyHash)]).void }
      attr_writer :to_balance

      # Date and time when the financial transaction was last updated. UTC time zone.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated

      sig { params(updated: Time).void }
      attr_writer :updated

      sig do
        params(
          token: String,
          category: Lithic::Models::Transfer::Category::OrSymbol,
          created: Time,
          currency: String,
          descriptor: String,
          events: T::Array[T.any(Lithic::Models::Transfer::Event, Lithic::Internal::AnyHash)],
          from_balance: T::Array[T.any(Lithic::Models::Balance, Lithic::Internal::AnyHash)],
          pending_amount: Integer,
          result: Lithic::Models::Transfer::Result::OrSymbol,
          settled_amount: Integer,
          status: Lithic::Models::Transfer::Status::OrSymbol,
          to_balance: T::Array[T.any(Lithic::Models::Balance, Lithic::Internal::AnyHash)],
          updated: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
        token: nil,
        category: nil,
        created: nil,
        currency: nil,
        descriptor: nil,
        events: nil,
        from_balance: nil,
        pending_amount: nil,
        result: nil,
        settled_amount: nil,
        status: nil,
        to_balance: nil,
        updated: nil
      ); end
      sig do
        override
          .returns(
            {
              token: String,
              category: Lithic::Models::Transfer::Category::TaggedSymbol,
              created: Time,
              currency: String,
              descriptor: String,
              events: T::Array[Lithic::Models::Transfer::Event],
              from_balance: T::Array[Lithic::Models::Balance],
              pending_amount: Integer,
              result: Lithic::Models::Transfer::Result::TaggedSymbol,
              settled_amount: Integer,
              status: Lithic::Models::Transfer::Status::TaggedSymbol,
              to_balance: T::Array[Lithic::Models::Balance],
              updated: Time
            }
          )
      end
      def to_hash; end

      # Status types:
      #
      # - `TRANSFER` - Internal transfer of funds between financial accounts in your
      #   program.
      module Category
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transfer::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSFER = T.let(:TRANSFER, Lithic::Models::Transfer::Category::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::Transfer::Category::TaggedSymbol]) }
        def self.values; end
      end

      class Event < Lithic::Internal::Type::BaseModel
        # Globally unique identifier.
        sig { returns(T.nilable(String)) }
        attr_reader :token

        sig { params(token: String).void }
        attr_writer :token

        # Amount of the financial event that has been settled in the currency's smallest
        # unit (e.g., cents).
        sig { returns(T.nilable(Integer)) }
        attr_reader :amount

        sig { params(amount: Integer).void }
        attr_writer :amount

        # Date and time when the financial event occurred. UTC time zone.
        sig { returns(T.nilable(Time)) }
        attr_reader :created

        sig { params(created: Time).void }
        attr_writer :created

        # APPROVED financial events were successful while DECLINED financial events were
        # declined by user, Lithic, or the network.
        sig { returns(T.nilable(Lithic::Models::Transfer::Event::Result::TaggedSymbol)) }
        attr_reader :result

        sig { params(result: Lithic::Models::Transfer::Event::Result::OrSymbol).void }
        attr_writer :result

        sig { returns(T.nilable(Lithic::Models::Transfer::Event::Type::TaggedSymbol)) }
        attr_reader :type

        sig { params(type: Lithic::Models::Transfer::Event::Type::OrSymbol).void }
        attr_writer :type

        sig do
          params(
            token: String,
            amount: Integer,
            created: Time,
            result: Lithic::Models::Transfer::Event::Result::OrSymbol,
            type: Lithic::Models::Transfer::Event::Type::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(token: nil, amount: nil, created: nil, result: nil, type: nil); end

        sig do
          override
            .returns(
              {
                token: String,
                amount: Integer,
                created: Time,
                result: Lithic::Models::Transfer::Event::Result::TaggedSymbol,
                type: Lithic::Models::Transfer::Event::Type::TaggedSymbol
              }
            )
        end
        def to_hash; end

        # APPROVED financial events were successful while DECLINED financial events were
        # declined by user, Lithic, or the network.
        module Result
          extend Lithic::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transfer::Event::Result) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED = T.let(:APPROVED, Lithic::Models::Transfer::Event::Result::TaggedSymbol)
          DECLINED = T.let(:DECLINED, Lithic::Models::Transfer::Event::Result::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::Transfer::Event::Result::TaggedSymbol]) }
          def self.values; end
        end

        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transfer::Event::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH_ORIGINATION_CANCELLED =
            T.let(:ACH_ORIGINATION_CANCELLED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          ACH_ORIGINATION_INITIATED =
            T.let(:ACH_ORIGINATION_INITIATED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          ACH_ORIGINATION_PROCESSED =
            T.let(:ACH_ORIGINATION_PROCESSED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          ACH_ORIGINATION_RELEASED =
            T.let(:ACH_ORIGINATION_RELEASED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          ACH_ORIGINATION_REVIEWED =
            T.let(:ACH_ORIGINATION_REVIEWED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          ACH_ORIGINATION_SETTLED =
            T.let(:ACH_ORIGINATION_SETTLED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          ACH_RECEIPT_PROCESSED =
            T.let(:ACH_RECEIPT_PROCESSED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          ACH_RECEIPT_SETTLED = T.let(:ACH_RECEIPT_SETTLED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          ACH_RETURN_INITIATED = T.let(:ACH_RETURN_INITIATED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          ACH_RETURN_PROCESSED = T.let(:ACH_RETURN_PROCESSED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          ACH_RETURN_SETTLED = T.let(:ACH_RETURN_SETTLED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          AUTHORIZATION = T.let(:AUTHORIZATION, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          AUTHORIZATION_ADVICE = T.let(:AUTHORIZATION_ADVICE, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          AUTHORIZATION_EXPIRY = T.let(:AUTHORIZATION_EXPIRY, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          AUTHORIZATION_REVERSAL =
            T.let(:AUTHORIZATION_REVERSAL, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          BALANCE_INQUIRY = T.let(:BALANCE_INQUIRY, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          BILLING_ERROR = T.let(:BILLING_ERROR, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          BILLING_ERROR_REVERSAL =
            T.let(:BILLING_ERROR_REVERSAL, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          CARD_TO_CARD = T.let(:CARD_TO_CARD, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          CASH_BACK = T.let(:CASH_BACK, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          CASH_BACK_REVERSAL = T.let(:CASH_BACK_REVERSAL, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          CLEARING = T.let(:CLEARING, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          CORRECTION_CREDIT = T.let(:CORRECTION_CREDIT, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          CORRECTION_DEBIT = T.let(:CORRECTION_DEBIT, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          CREDIT_AUTHORIZATION = T.let(:CREDIT_AUTHORIZATION, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          CREDIT_AUTHORIZATION_ADVICE =
            T.let(:CREDIT_AUTHORIZATION_ADVICE, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          CURRENCY_CONVERSION = T.let(:CURRENCY_CONVERSION, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          CURRENCY_CONVERSION_REVERSAL =
            T.let(:CURRENCY_CONVERSION_REVERSAL, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          DISPUTE_WON = T.let(:DISPUTE_WON, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          EXTERNAL_ACH_CANCELED =
            T.let(:EXTERNAL_ACH_CANCELED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          EXTERNAL_ACH_INITIATED =
            T.let(:EXTERNAL_ACH_INITIATED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          EXTERNAL_ACH_RELEASED =
            T.let(:EXTERNAL_ACH_RELEASED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          EXTERNAL_ACH_REVERSED =
            T.let(:EXTERNAL_ACH_REVERSED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          EXTERNAL_ACH_SETTLED = T.let(:EXTERNAL_ACH_SETTLED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          EXTERNAL_CHECK_CANCELED =
            T.let(:EXTERNAL_CHECK_CANCELED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          EXTERNAL_CHECK_INITIATED =
            T.let(:EXTERNAL_CHECK_INITIATED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          EXTERNAL_CHECK_RELEASED =
            T.let(:EXTERNAL_CHECK_RELEASED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          EXTERNAL_CHECK_REVERSED =
            T.let(:EXTERNAL_CHECK_REVERSED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          EXTERNAL_CHECK_SETTLED =
            T.let(:EXTERNAL_CHECK_SETTLED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          EXTERNAL_TRANSFER_CANCELED =
            T.let(:EXTERNAL_TRANSFER_CANCELED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          EXTERNAL_TRANSFER_INITIATED =
            T.let(:EXTERNAL_TRANSFER_INITIATED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          EXTERNAL_TRANSFER_RELEASED =
            T.let(:EXTERNAL_TRANSFER_RELEASED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          EXTERNAL_TRANSFER_REVERSED =
            T.let(:EXTERNAL_TRANSFER_REVERSED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          EXTERNAL_TRANSFER_SETTLED =
            T.let(:EXTERNAL_TRANSFER_SETTLED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          EXTERNAL_WIRE_CANCELED =
            T.let(:EXTERNAL_WIRE_CANCELED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          EXTERNAL_WIRE_INITIATED =
            T.let(:EXTERNAL_WIRE_INITIATED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          EXTERNAL_WIRE_RELEASED =
            T.let(:EXTERNAL_WIRE_RELEASED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          EXTERNAL_WIRE_REVERSED =
            T.let(:EXTERNAL_WIRE_REVERSED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          EXTERNAL_WIRE_SETTLED =
            T.let(:EXTERNAL_WIRE_SETTLED, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          FINANCIAL_AUTHORIZATION =
            T.let(:FINANCIAL_AUTHORIZATION, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          FINANCIAL_CREDIT_AUTHORIZATION =
            T.let(:FINANCIAL_CREDIT_AUTHORIZATION, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          INTEREST = T.let(:INTEREST, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          INTEREST_REVERSAL = T.let(:INTEREST_REVERSAL, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          INTERNAL_ADJUSTMENT = T.let(:INTERNAL_ADJUSTMENT, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          LATE_PAYMENT = T.let(:LATE_PAYMENT, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          LATE_PAYMENT_REVERSAL =
            T.let(:LATE_PAYMENT_REVERSAL, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          LOSS_WRITE_OFF = T.let(:LOSS_WRITE_OFF, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          PROVISIONAL_CREDIT = T.let(:PROVISIONAL_CREDIT, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          PROVISIONAL_CREDIT_REVERSAL =
            T.let(:PROVISIONAL_CREDIT_REVERSAL, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          RETURN = T.let(:RETURN, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          RETURN_REVERSAL = T.let(:RETURN_REVERSAL, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          TRANSFER = T.let(:TRANSFER, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          TRANSFER_INSUFFICIENT_FUNDS =
            T.let(:TRANSFER_INSUFFICIENT_FUNDS, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          RETURNED_PAYMENT = T.let(:RETURNED_PAYMENT, Lithic::Models::Transfer::Event::Type::TaggedSymbol)
          RETURNED_PAYMENT_REVERSAL =
            T.let(:RETURNED_PAYMENT_REVERSAL, Lithic::Models::Transfer::Event::Type::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::Transfer::Event::Type::TaggedSymbol]) }
          def self.values; end
        end
      end

      # APPROVED transactions were successful while DECLINED transactions were declined
      # by user, Lithic, or the network.
      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transfer::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED = T.let(:APPROVED, Lithic::Models::Transfer::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::Transfer::Result::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::Transfer::Result::TaggedSymbol]) }
        def self.values; end
      end

      # Status types:
      #
      # - `DECLINED` - The transfer was declined.
      # - `EXPIRED` - The transfer was held in pending for too long and expired.
      # - `PENDING` - The transfer is pending release from a hold.
      # - `SETTLED` - The transfer is completed.
      # - `VOIDED` - The transfer was reversed before it settled.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Transfer::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DECLINED = T.let(:DECLINED, Lithic::Models::Transfer::Status::TaggedSymbol)
        EXPIRED = T.let(:EXPIRED, Lithic::Models::Transfer::Status::TaggedSymbol)
        PENDING = T.let(:PENDING, Lithic::Models::Transfer::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Models::Transfer::Status::TaggedSymbol)
        VOIDED = T.let(:VOIDED, Lithic::Models::Transfer::Status::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::Transfer::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
