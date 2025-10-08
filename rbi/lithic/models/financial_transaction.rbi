# typed: strong

module Lithic
  module Models
    class FinancialTransaction < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::FinancialTransaction, Lithic::Internal::AnyHash)
        end

      # Globally unique identifier.
      sig { returns(String) }
      attr_accessor :token

      # Status types:
      #
      # - `CARD` - Issuing card transaction.
      # - `ACH` - Transaction over ACH.
      # - `INTERNAL` - Transaction for internal adjustment.
      # - `TRANSFER` - Internal transfer of funds between financial accounts in your
      #   program.
      sig { returns(Lithic::FinancialTransaction::Category::TaggedSymbol) }
      attr_accessor :category

      # Date and time when the financial transaction first occurred. UTC time zone.
      sig { returns(Time) }
      attr_accessor :created

      # 3-character alphabetic ISO 4217 code for the settling currency of the
      # transaction.
      sig { returns(String) }
      attr_accessor :currency

      # A string that provides a description of the financial transaction; may be useful
      # to display to users.
      sig { returns(String) }
      attr_accessor :descriptor

      # A list of all financial events that have modified this financial transaction.
      sig { returns(T::Array[Lithic::FinancialTransaction::Event]) }
      attr_accessor :events

      # Pending amount of the transaction in the currency's smallest unit (e.g., cents),
      # including any acquirer fees. The value of this field will go to zero over time
      # once the financial transaction is settled.
      sig { returns(Integer) }
      attr_accessor :pending_amount

      # APPROVED transactions were successful while DECLINED transactions were declined
      # by user, Lithic, or the network.
      sig { returns(Lithic::FinancialTransaction::Result::TaggedSymbol) }
      attr_accessor :result

      # Amount of the transaction that has been settled in the currency's smallest unit
      # (e.g., cents), including any acquirer fees. This may change over time.
      sig { returns(Integer) }
      attr_accessor :settled_amount

      # Status types:
      #
      # - `DECLINED` - The transaction was declined.
      # - `EXPIRED` - The authorization as it has passed its expiration time. Card
      #   transaction only.
      # - `PENDING` - The transaction is expected to settle.
      # - `RETURNED` - The transaction has been returned.
      # - `SETTLED` - The transaction is completed.
      # - `VOIDED` - The transaction was voided. Card transaction only.
      sig { returns(Lithic::FinancialTransaction::Status::TaggedSymbol) }
      attr_accessor :status

      # Date and time when the financial transaction was last updated. UTC time zone.
      sig { returns(Time) }
      attr_accessor :updated

      sig do
        params(
          token: String,
          category: Lithic::FinancialTransaction::Category::OrSymbol,
          created: Time,
          currency: String,
          descriptor: String,
          events: T::Array[Lithic::FinancialTransaction::Event::OrHash],
          pending_amount: Integer,
          result: Lithic::FinancialTransaction::Result::OrSymbol,
          settled_amount: Integer,
          status: Lithic::FinancialTransaction::Status::OrSymbol,
          updated: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Globally unique identifier.
        token:,
        # Status types:
        #
        # - `CARD` - Issuing card transaction.
        # - `ACH` - Transaction over ACH.
        # - `INTERNAL` - Transaction for internal adjustment.
        # - `TRANSFER` - Internal transfer of funds between financial accounts in your
        #   program.
        category:,
        # Date and time when the financial transaction first occurred. UTC time zone.
        created:,
        # 3-character alphabetic ISO 4217 code for the settling currency of the
        # transaction.
        currency:,
        # A string that provides a description of the financial transaction; may be useful
        # to display to users.
        descriptor:,
        # A list of all financial events that have modified this financial transaction.
        events:,
        # Pending amount of the transaction in the currency's smallest unit (e.g., cents),
        # including any acquirer fees. The value of this field will go to zero over time
        # once the financial transaction is settled.
        pending_amount:,
        # APPROVED transactions were successful while DECLINED transactions were declined
        # by user, Lithic, or the network.
        result:,
        # Amount of the transaction that has been settled in the currency's smallest unit
        # (e.g., cents), including any acquirer fees. This may change over time.
        settled_amount:,
        # Status types:
        #
        # - `DECLINED` - The transaction was declined.
        # - `EXPIRED` - The authorization as it has passed its expiration time. Card
        #   transaction only.
        # - `PENDING` - The transaction is expected to settle.
        # - `RETURNED` - The transaction has been returned.
        # - `SETTLED` - The transaction is completed.
        # - `VOIDED` - The transaction was voided. Card transaction only.
        status:,
        # Date and time when the financial transaction was last updated. UTC time zone.
        updated:
      )
      end

      sig do
        override.returns(
          {
            token: String,
            category: Lithic::FinancialTransaction::Category::TaggedSymbol,
            created: Time,
            currency: String,
            descriptor: String,
            events: T::Array[Lithic::FinancialTransaction::Event],
            pending_amount: Integer,
            result: Lithic::FinancialTransaction::Result::TaggedSymbol,
            settled_amount: Integer,
            status: Lithic::FinancialTransaction::Status::TaggedSymbol,
            updated: Time
          }
        )
      end
      def to_hash
      end

      # Status types:
      #
      # - `CARD` - Issuing card transaction.
      # - `ACH` - Transaction over ACH.
      # - `INTERNAL` - Transaction for internal adjustment.
      # - `TRANSFER` - Internal transfer of funds between financial accounts in your
      #   program.
      module Category
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::FinancialTransaction::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH = T.let(:ACH, Lithic::FinancialTransaction::Category::TaggedSymbol)
        CARD =
          T.let(:CARD, Lithic::FinancialTransaction::Category::TaggedSymbol)
        INTERNAL =
          T.let(:INTERNAL, Lithic::FinancialTransaction::Category::TaggedSymbol)
        TRANSFER =
          T.let(:TRANSFER, Lithic::FinancialTransaction::Category::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::FinancialTransaction::Category::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Event < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::FinancialTransaction::Event,
              Lithic::Internal::AnyHash
            )
          end

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
        sig do
          returns(
            T.nilable(Lithic::FinancialTransaction::Event::Result::TaggedSymbol)
          )
        end
        attr_reader :result

        sig do
          params(
            result: Lithic::FinancialTransaction::Event::Result::OrSymbol
          ).void
        end
        attr_writer :result

        sig do
          returns(
            T.nilable(Lithic::FinancialTransaction::Event::Type::TaggedSymbol)
          )
        end
        attr_reader :type

        sig do
          params(type: Lithic::FinancialTransaction::Event::Type::OrSymbol).void
        end
        attr_writer :type

        # Financial Event
        sig do
          params(
            token: String,
            amount: Integer,
            created: Time,
            result: Lithic::FinancialTransaction::Event::Result::OrSymbol,
            type: Lithic::FinancialTransaction::Event::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier.
          token: nil,
          # Amount of the financial event that has been settled in the currency's smallest
          # unit (e.g., cents).
          amount: nil,
          # Date and time when the financial event occurred. UTC time zone.
          created: nil,
          # APPROVED financial events were successful while DECLINED financial events were
          # declined by user, Lithic, or the network.
          result: nil,
          type: nil
        )
        end

        sig do
          override.returns(
            {
              token: String,
              amount: Integer,
              created: Time,
              result: Lithic::FinancialTransaction::Event::Result::TaggedSymbol,
              type: Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # APPROVED financial events were successful while DECLINED financial events were
        # declined by user, Lithic, or the network.
        module Result
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::FinancialTransaction::Event::Result)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(
              :APPROVED,
              Lithic::FinancialTransaction::Event::Result::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::FinancialTransaction::Event::Result::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::FinancialTransaction::Event::Result::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::FinancialTransaction::Event::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH_ORIGINATION_CANCELLED =
            T.let(
              :ACH_ORIGINATION_CANCELLED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          ACH_ORIGINATION_INITIATED =
            T.let(
              :ACH_ORIGINATION_INITIATED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          ACH_ORIGINATION_PROCESSED =
            T.let(
              :ACH_ORIGINATION_PROCESSED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          ACH_ORIGINATION_RELEASED =
            T.let(
              :ACH_ORIGINATION_RELEASED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          ACH_ORIGINATION_REJECTED =
            T.let(
              :ACH_ORIGINATION_REJECTED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          ACH_ORIGINATION_REVIEWED =
            T.let(
              :ACH_ORIGINATION_REVIEWED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          ACH_ORIGINATION_SETTLED =
            T.let(
              :ACH_ORIGINATION_SETTLED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          ACH_RECEIPT_PROCESSED =
            T.let(
              :ACH_RECEIPT_PROCESSED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          ACH_RECEIPT_SETTLED =
            T.let(
              :ACH_RECEIPT_SETTLED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          ACH_RETURN_INITIATED =
            T.let(
              :ACH_RETURN_INITIATED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          ACH_RETURN_PROCESSED =
            T.let(
              :ACH_RETURN_PROCESSED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          ACH_RETURN_REJECTED =
            T.let(
              :ACH_RETURN_REJECTED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          ACH_RETURN_SETTLED =
            T.let(
              :ACH_RETURN_SETTLED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          AUTHORIZATION =
            T.let(
              :AUTHORIZATION,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          AUTHORIZATION_ADVICE =
            T.let(
              :AUTHORIZATION_ADVICE,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          AUTHORIZATION_EXPIRY =
            T.let(
              :AUTHORIZATION_EXPIRY,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          AUTHORIZATION_REVERSAL =
            T.let(
              :AUTHORIZATION_REVERSAL,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          BALANCE_INQUIRY =
            T.let(
              :BALANCE_INQUIRY,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          BILLING_ERROR =
            T.let(
              :BILLING_ERROR,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          BILLING_ERROR_REVERSAL =
            T.let(
              :BILLING_ERROR_REVERSAL,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          CARD_TO_CARD =
            T.let(
              :CARD_TO_CARD,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          CASH_BACK =
            T.let(
              :CASH_BACK,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          CASH_BACK_REVERSAL =
            T.let(
              :CASH_BACK_REVERSAL,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          CLEARING =
            T.let(
              :CLEARING,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          COLLECTION =
            T.let(
              :COLLECTION,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          CORRECTION_CREDIT =
            T.let(
              :CORRECTION_CREDIT,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          CORRECTION_DEBIT =
            T.let(
              :CORRECTION_DEBIT,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          CREDIT_AUTHORIZATION =
            T.let(
              :CREDIT_AUTHORIZATION,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          CREDIT_AUTHORIZATION_ADVICE =
            T.let(
              :CREDIT_AUTHORIZATION_ADVICE,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          CURRENCY_CONVERSION =
            T.let(
              :CURRENCY_CONVERSION,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          CURRENCY_CONVERSION_REVERSAL =
            T.let(
              :CURRENCY_CONVERSION_REVERSAL,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          DISPUTE_WON =
            T.let(
              :DISPUTE_WON,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          EXTERNAL_ACH_CANCELED =
            T.let(
              :EXTERNAL_ACH_CANCELED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          EXTERNAL_ACH_INITIATED =
            T.let(
              :EXTERNAL_ACH_INITIATED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          EXTERNAL_ACH_RELEASED =
            T.let(
              :EXTERNAL_ACH_RELEASED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          EXTERNAL_ACH_REVERSED =
            T.let(
              :EXTERNAL_ACH_REVERSED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          EXTERNAL_ACH_SETTLED =
            T.let(
              :EXTERNAL_ACH_SETTLED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          EXTERNAL_CHECK_CANCELED =
            T.let(
              :EXTERNAL_CHECK_CANCELED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          EXTERNAL_CHECK_INITIATED =
            T.let(
              :EXTERNAL_CHECK_INITIATED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          EXTERNAL_CHECK_RELEASED =
            T.let(
              :EXTERNAL_CHECK_RELEASED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          EXTERNAL_CHECK_REVERSED =
            T.let(
              :EXTERNAL_CHECK_REVERSED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          EXTERNAL_CHECK_SETTLED =
            T.let(
              :EXTERNAL_CHECK_SETTLED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          EXTERNAL_TRANSFER_CANCELED =
            T.let(
              :EXTERNAL_TRANSFER_CANCELED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          EXTERNAL_TRANSFER_INITIATED =
            T.let(
              :EXTERNAL_TRANSFER_INITIATED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          EXTERNAL_TRANSFER_RELEASED =
            T.let(
              :EXTERNAL_TRANSFER_RELEASED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          EXTERNAL_TRANSFER_REVERSED =
            T.let(
              :EXTERNAL_TRANSFER_REVERSED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          EXTERNAL_TRANSFER_SETTLED =
            T.let(
              :EXTERNAL_TRANSFER_SETTLED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          EXTERNAL_WIRE_CANCELED =
            T.let(
              :EXTERNAL_WIRE_CANCELED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          EXTERNAL_WIRE_INITIATED =
            T.let(
              :EXTERNAL_WIRE_INITIATED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          EXTERNAL_WIRE_RELEASED =
            T.let(
              :EXTERNAL_WIRE_RELEASED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          EXTERNAL_WIRE_REVERSED =
            T.let(
              :EXTERNAL_WIRE_REVERSED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          EXTERNAL_WIRE_SETTLED =
            T.let(
              :EXTERNAL_WIRE_SETTLED,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          FINANCIAL_AUTHORIZATION =
            T.let(
              :FINANCIAL_AUTHORIZATION,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          FINANCIAL_CREDIT_AUTHORIZATION =
            T.let(
              :FINANCIAL_CREDIT_AUTHORIZATION,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          INTEREST =
            T.let(
              :INTEREST,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          INTEREST_REVERSAL =
            T.let(
              :INTEREST_REVERSAL,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          INTERNAL_ADJUSTMENT =
            T.let(
              :INTERNAL_ADJUSTMENT,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          LATE_PAYMENT =
            T.let(
              :LATE_PAYMENT,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          LATE_PAYMENT_REVERSAL =
            T.let(
              :LATE_PAYMENT_REVERSAL,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          LOSS_WRITE_OFF =
            T.let(
              :LOSS_WRITE_OFF,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          PROVISIONAL_CREDIT =
            T.let(
              :PROVISIONAL_CREDIT,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          PROVISIONAL_CREDIT_REVERSAL =
            T.let(
              :PROVISIONAL_CREDIT_REVERSAL,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          SERVICE =
            T.let(
              :SERVICE,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          RETURN =
            T.let(
              :RETURN,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          RETURN_REVERSAL =
            T.let(
              :RETURN_REVERSAL,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          TRANSFER =
            T.let(
              :TRANSFER,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          TRANSFER_INSUFFICIENT_FUNDS =
            T.let(
              :TRANSFER_INSUFFICIENT_FUNDS,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          RETURNED_PAYMENT =
            T.let(
              :RETURNED_PAYMENT,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          RETURNED_PAYMENT_REVERSAL =
            T.let(
              :RETURNED_PAYMENT_REVERSAL,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )
          LITHIC_NETWORK_PAYMENT =
            T.let(
              :LITHIC_NETWORK_PAYMENT,
              Lithic::FinancialTransaction::Event::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::FinancialTransaction::Event::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      # APPROVED transactions were successful while DECLINED transactions were declined
      # by user, Lithic, or the network.
      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::FinancialTransaction::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(:APPROVED, Lithic::FinancialTransaction::Result::TaggedSymbol)
        DECLINED =
          T.let(:DECLINED, Lithic::FinancialTransaction::Result::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::FinancialTransaction::Result::TaggedSymbol]
          )
        end
        def self.values
        end
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
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::FinancialTransaction::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DECLINED =
          T.let(:DECLINED, Lithic::FinancialTransaction::Status::TaggedSymbol)
        EXPIRED =
          T.let(:EXPIRED, Lithic::FinancialTransaction::Status::TaggedSymbol)
        PENDING =
          T.let(:PENDING, Lithic::FinancialTransaction::Status::TaggedSymbol)
        RETURNED =
          T.let(:RETURNED, Lithic::FinancialTransaction::Status::TaggedSymbol)
        SETTLED =
          T.let(:SETTLED, Lithic::FinancialTransaction::Status::TaggedSymbol)
        VOIDED =
          T.let(:VOIDED, Lithic::FinancialTransaction::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::FinancialTransaction::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
