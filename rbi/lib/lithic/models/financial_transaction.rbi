# typed: strong

module Lithic
  module Models
    class FinancialTransaction < Lithic::BaseModel
      # Globally unique identifier.
      sig { returns(String) }
      attr_accessor :token

      # Status types:
      #
      #   - `CARD` - Issuing card transaction.
      #   - `ACH` - Transaction over ACH.
      #   - `INTERNAL` - Transaction for internal adjustment.
      #   - `TRANSFER` - Internal transfer of funds between financial accounts in your
      #     program.
      sig { returns(Lithic::Models::FinancialTransaction::Category::TaggedSymbol) }
      attr_accessor :category

      # Date and time when the financial transaction first occurred. UTC time zone.
      sig { returns(Time) }
      attr_accessor :created

      # 3-character alphabetic ISO 4217 code for the settling currency of the
      #   transaction.
      sig { returns(String) }
      attr_accessor :currency

      # A string that provides a description of the financial transaction; may be useful
      #   to display to users.
      sig { returns(String) }
      attr_accessor :descriptor

      # A list of all financial events that have modified this financial transaction.
      sig { returns(T::Array[Lithic::Models::FinancialTransaction::Event]) }
      attr_accessor :events

      # Pending amount of the transaction in the currency's smallest unit (e.g., cents),
      #   including any acquirer fees. The value of this field will go to zero over time
      #   once the financial transaction is settled.
      sig { returns(Integer) }
      attr_accessor :pending_amount

      # APPROVED transactions were successful while DECLINED transactions were declined
      #   by user, Lithic, or the network.
      sig { returns(Lithic::Models::FinancialTransaction::Result::TaggedSymbol) }
      attr_accessor :result

      # Amount of the transaction that has been settled in the currency's smallest unit
      #   (e.g., cents), including any acquirer fees. This may change over time.
      sig { returns(Integer) }
      attr_accessor :settled_amount

      # Status types:
      #
      #   - `DECLINED` - The transaction was declined.
      #   - `EXPIRED` - The authorization as it has passed its expiration time. Card
      #     transaction only.
      #   - `PENDING` - The transaction is expected to settle.
      #   - `RETURNED` - The transaction has been returned.
      #   - `SETTLED` - The transaction is completed.
      #   - `VOIDED` - The transaction was voided. Card transaction only.
      sig { returns(Lithic::Models::FinancialTransaction::Status::TaggedSymbol) }
      attr_accessor :status

      # Date and time when the financial transaction was last updated. UTC time zone.
      sig { returns(Time) }
      attr_accessor :updated

      sig do
        params(
          token: String,
          category: Lithic::Models::FinancialTransaction::Category::OrSymbol,
          created: Time,
          currency: String,
          descriptor: String,
          events: T::Array[T.any(Lithic::Models::FinancialTransaction::Event, Lithic::Util::AnyHash)],
          pending_amount: Integer,
          result: Lithic::Models::FinancialTransaction::Result::OrSymbol,
          settled_amount: Integer,
          status: Lithic::Models::FinancialTransaction::Status::OrSymbol,
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
              category: Lithic::Models::FinancialTransaction::Category::TaggedSymbol,
              created: Time,
              currency: String,
              descriptor: String,
              events: T::Array[Lithic::Models::FinancialTransaction::Event],
              pending_amount: Integer,
              result: Lithic::Models::FinancialTransaction::Result::TaggedSymbol,
              settled_amount: Integer,
              status: Lithic::Models::FinancialTransaction::Status::TaggedSymbol,
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
      module Category
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::FinancialTransaction::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::FinancialTransaction::Category::TaggedSymbol) }

        ACH = T.let(:ACH, Lithic::Models::FinancialTransaction::Category::TaggedSymbol)
        CARD = T.let(:CARD, Lithic::Models::FinancialTransaction::Category::TaggedSymbol)
        INTERNAL = T.let(:INTERNAL, Lithic::Models::FinancialTransaction::Category::TaggedSymbol)
        TRANSFER = T.let(:TRANSFER, Lithic::Models::FinancialTransaction::Category::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::FinancialTransaction::Category::TaggedSymbol]) }
          def values
          end
        end
      end

      class Event < Lithic::BaseModel
        # Globally unique identifier.
        sig { returns(T.nilable(String)) }
        attr_reader :token

        sig { params(token: String).void }
        attr_writer :token

        # Amount of the financial event that has been settled in the currency's smallest
        #   unit (e.g., cents).
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
        #   declined by user, Lithic, or the network.
        sig { returns(T.nilable(Lithic::Models::FinancialTransaction::Event::Result::TaggedSymbol)) }
        attr_reader :result

        sig { params(result: Lithic::Models::FinancialTransaction::Event::Result::OrSymbol).void }
        attr_writer :result

        sig { returns(T.nilable(Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)) }
        attr_reader :type

        sig { params(type: Lithic::Models::FinancialTransaction::Event::Type::OrSymbol).void }
        attr_writer :type

        sig do
          params(
            token: String,
            amount: Integer,
            created: Time,
            result: Lithic::Models::FinancialTransaction::Event::Result::OrSymbol,
            type: Lithic::Models::FinancialTransaction::Event::Type::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(token: nil, amount: nil, created: nil, result: nil, type: nil)
        end

        sig do
          override
            .returns(
              {
                token: String,
                amount: Integer,
                created: Time,
                result: Lithic::Models::FinancialTransaction::Event::Result::TaggedSymbol,
                type: Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol
              }
            )
        end
        def to_hash
        end

        # APPROVED financial events were successful while DECLINED financial events were
        #   declined by user, Lithic, or the network.
        module Result
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::FinancialTransaction::Event::Result) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::FinancialTransaction::Event::Result::TaggedSymbol) }

          APPROVED = T.let(:APPROVED, Lithic::Models::FinancialTransaction::Event::Result::TaggedSymbol)
          DECLINED = T.let(:DECLINED, Lithic::Models::FinancialTransaction::Event::Result::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Lithic::Models::FinancialTransaction::Event::Result::TaggedSymbol]) }
            def values
            end
          end
        end

        module Type
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::FinancialTransaction::Event::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol) }

          ACH_ORIGINATION_CANCELLED =
            T.let(:ACH_ORIGINATION_CANCELLED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          ACH_ORIGINATION_INITIATED =
            T.let(:ACH_ORIGINATION_INITIATED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          ACH_ORIGINATION_PROCESSED =
            T.let(:ACH_ORIGINATION_PROCESSED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          ACH_ORIGINATION_RELEASED =
            T.let(:ACH_ORIGINATION_RELEASED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          ACH_ORIGINATION_REVIEWED =
            T.let(:ACH_ORIGINATION_REVIEWED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          ACH_ORIGINATION_SETTLED =
            T.let(:ACH_ORIGINATION_SETTLED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          ACH_RECEIPT_PROCESSED =
            T.let(:ACH_RECEIPT_PROCESSED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          ACH_RECEIPT_SETTLED =
            T.let(:ACH_RECEIPT_SETTLED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          ACH_RETURN_INITIATED =
            T.let(:ACH_RETURN_INITIATED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          ACH_RETURN_PROCESSED =
            T.let(:ACH_RETURN_PROCESSED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          ACH_RETURN_SETTLED =
            T.let(:ACH_RETURN_SETTLED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          AUTHORIZATION = T.let(:AUTHORIZATION, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          AUTHORIZATION_ADVICE =
            T.let(:AUTHORIZATION_ADVICE, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          AUTHORIZATION_EXPIRY =
            T.let(:AUTHORIZATION_EXPIRY, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          AUTHORIZATION_REVERSAL =
            T.let(:AUTHORIZATION_REVERSAL, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          BALANCE_INQUIRY =
            T.let(:BALANCE_INQUIRY, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          BILLING_ERROR = T.let(:BILLING_ERROR, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          BILLING_ERROR_REVERSAL =
            T.let(:BILLING_ERROR_REVERSAL, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          CARD_TO_CARD = T.let(:CARD_TO_CARD, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          CASH_BACK = T.let(:CASH_BACK, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          CASH_BACK_REVERSAL =
            T.let(:CASH_BACK_REVERSAL, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          CLEARING = T.let(:CLEARING, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          CORRECTION_CREDIT =
            T.let(:CORRECTION_CREDIT, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          CORRECTION_DEBIT =
            T.let(:CORRECTION_DEBIT, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          CREDIT_AUTHORIZATION =
            T.let(:CREDIT_AUTHORIZATION, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          CREDIT_AUTHORIZATION_ADVICE =
            T.let(:CREDIT_AUTHORIZATION_ADVICE, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          CURRENCY_CONVERSION =
            T.let(:CURRENCY_CONVERSION, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          CURRENCY_CONVERSION_REVERSAL =
            T.let(:CURRENCY_CONVERSION_REVERSAL, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          DISPUTE_WON = T.let(:DISPUTE_WON, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          EXTERNAL_ACH_CANCELED =
            T.let(:EXTERNAL_ACH_CANCELED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          EXTERNAL_ACH_INITIATED =
            T.let(:EXTERNAL_ACH_INITIATED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          EXTERNAL_ACH_RELEASED =
            T.let(:EXTERNAL_ACH_RELEASED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          EXTERNAL_ACH_REVERSED =
            T.let(:EXTERNAL_ACH_REVERSED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          EXTERNAL_ACH_SETTLED =
            T.let(:EXTERNAL_ACH_SETTLED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          EXTERNAL_CHECK_CANCELED =
            T.let(:EXTERNAL_CHECK_CANCELED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          EXTERNAL_CHECK_INITIATED =
            T.let(:EXTERNAL_CHECK_INITIATED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          EXTERNAL_CHECK_RELEASED =
            T.let(:EXTERNAL_CHECK_RELEASED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          EXTERNAL_CHECK_REVERSED =
            T.let(:EXTERNAL_CHECK_REVERSED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          EXTERNAL_CHECK_SETTLED =
            T.let(:EXTERNAL_CHECK_SETTLED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          EXTERNAL_TRANSFER_CANCELED =
            T.let(:EXTERNAL_TRANSFER_CANCELED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          EXTERNAL_TRANSFER_INITIATED =
            T.let(:EXTERNAL_TRANSFER_INITIATED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          EXTERNAL_TRANSFER_RELEASED =
            T.let(:EXTERNAL_TRANSFER_RELEASED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          EXTERNAL_TRANSFER_REVERSED =
            T.let(:EXTERNAL_TRANSFER_REVERSED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          EXTERNAL_TRANSFER_SETTLED =
            T.let(:EXTERNAL_TRANSFER_SETTLED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          EXTERNAL_WIRE_CANCELED =
            T.let(:EXTERNAL_WIRE_CANCELED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          EXTERNAL_WIRE_INITIATED =
            T.let(:EXTERNAL_WIRE_INITIATED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          EXTERNAL_WIRE_RELEASED =
            T.let(:EXTERNAL_WIRE_RELEASED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          EXTERNAL_WIRE_REVERSED =
            T.let(:EXTERNAL_WIRE_REVERSED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          EXTERNAL_WIRE_SETTLED =
            T.let(:EXTERNAL_WIRE_SETTLED, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          FINANCIAL_AUTHORIZATION =
            T.let(:FINANCIAL_AUTHORIZATION, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          FINANCIAL_CREDIT_AUTHORIZATION =
            T.let(:FINANCIAL_CREDIT_AUTHORIZATION, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          INTEREST = T.let(:INTEREST, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          INTEREST_REVERSAL =
            T.let(:INTEREST_REVERSAL, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          INTERNAL_ADJUSTMENT =
            T.let(:INTERNAL_ADJUSTMENT, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          LATE_PAYMENT = T.let(:LATE_PAYMENT, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          LATE_PAYMENT_REVERSAL =
            T.let(:LATE_PAYMENT_REVERSAL, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          PROVISIONAL_CREDIT =
            T.let(:PROVISIONAL_CREDIT, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          PROVISIONAL_CREDIT_REVERSAL =
            T.let(:PROVISIONAL_CREDIT_REVERSAL, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          RETURN = T.let(:RETURN, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          RETURN_REVERSAL =
            T.let(:RETURN_REVERSAL, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          TRANSFER = T.let(:TRANSFER, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          TRANSFER_INSUFFICIENT_FUNDS =
            T.let(:TRANSFER_INSUFFICIENT_FUNDS, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          RETURNED_PAYMENT =
            T.let(:RETURNED_PAYMENT, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)
          RETURNED_PAYMENT_REVERSAL =
            T.let(:RETURNED_PAYMENT_REVERSAL, Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Lithic::Models::FinancialTransaction::Event::Type::TaggedSymbol]) }
            def values
            end
          end
        end
      end

      # APPROVED transactions were successful while DECLINED transactions were declined
      #   by user, Lithic, or the network.
      module Result
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::FinancialTransaction::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::FinancialTransaction::Result::TaggedSymbol) }

        APPROVED = T.let(:APPROVED, Lithic::Models::FinancialTransaction::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::FinancialTransaction::Result::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::FinancialTransaction::Result::TaggedSymbol]) }
          def values
          end
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

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::FinancialTransaction::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::FinancialTransaction::Status::TaggedSymbol) }

        DECLINED = T.let(:DECLINED, Lithic::Models::FinancialTransaction::Status::TaggedSymbol)
        EXPIRED = T.let(:EXPIRED, Lithic::Models::FinancialTransaction::Status::TaggedSymbol)
        PENDING = T.let(:PENDING, Lithic::Models::FinancialTransaction::Status::TaggedSymbol)
        RETURNED = T.let(:RETURNED, Lithic::Models::FinancialTransaction::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Models::FinancialTransaction::Status::TaggedSymbol)
        VOIDED = T.let(:VOIDED, Lithic::Models::FinancialTransaction::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::FinancialTransaction::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
