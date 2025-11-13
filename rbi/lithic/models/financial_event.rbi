# typed: strong

module Lithic
  module Models
    class FinancialEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::FinancialEvent, Lithic::Internal::AnyHash)
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
      sig { returns(T.nilable(Lithic::FinancialEvent::Result::TaggedSymbol)) }
      attr_reader :result

      sig { params(result: Lithic::FinancialEvent::Result::OrSymbol).void }
      attr_writer :result

      sig { returns(T.nilable(Lithic::FinancialEvent::Type::TaggedSymbol)) }
      attr_reader :type

      sig { params(type: Lithic::FinancialEvent::Type::OrSymbol).void }
      attr_writer :type

      # Financial Event
      sig do
        params(
          token: String,
          amount: Integer,
          created: Time,
          result: Lithic::FinancialEvent::Result::OrSymbol,
          type: Lithic::FinancialEvent::Type::OrSymbol
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
            result: Lithic::FinancialEvent::Result::TaggedSymbol,
            type: Lithic::FinancialEvent::Type::TaggedSymbol
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
          T.type_alias { T.all(Symbol, Lithic::FinancialEvent::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(:APPROVED, Lithic::FinancialEvent::Result::TaggedSymbol)
        DECLINED =
          T.let(:DECLINED, Lithic::FinancialEvent::Result::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::FinancialEvent::Result::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Type
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::FinancialEvent::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH_ORIGINATION_CANCELLED =
          T.let(
            :ACH_ORIGINATION_CANCELLED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        ACH_ORIGINATION_INITIATED =
          T.let(
            :ACH_ORIGINATION_INITIATED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        ACH_ORIGINATION_PROCESSED =
          T.let(
            :ACH_ORIGINATION_PROCESSED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        ACH_ORIGINATION_RELEASED =
          T.let(
            :ACH_ORIGINATION_RELEASED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        ACH_ORIGINATION_REJECTED =
          T.let(
            :ACH_ORIGINATION_REJECTED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        ACH_ORIGINATION_REVIEWED =
          T.let(
            :ACH_ORIGINATION_REVIEWED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        ACH_ORIGINATION_SETTLED =
          T.let(
            :ACH_ORIGINATION_SETTLED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        ACH_RECEIPT_PROCESSED =
          T.let(
            :ACH_RECEIPT_PROCESSED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        ACH_RECEIPT_RELEASED =
          T.let(
            :ACH_RECEIPT_RELEASED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        ACH_RECEIPT_SETTLED =
          T.let(
            :ACH_RECEIPT_SETTLED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        ACH_RETURN_INITIATED =
          T.let(
            :ACH_RETURN_INITIATED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        ACH_RETURN_PROCESSED =
          T.let(
            :ACH_RETURN_PROCESSED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        ACH_RETURN_REJECTED =
          T.let(
            :ACH_RETURN_REJECTED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        ACH_RETURN_SETTLED =
          T.let(:ACH_RETURN_SETTLED, Lithic::FinancialEvent::Type::TaggedSymbol)
        AUTHORIZATION =
          T.let(:AUTHORIZATION, Lithic::FinancialEvent::Type::TaggedSymbol)
        AUTHORIZATION_ADVICE =
          T.let(
            :AUTHORIZATION_ADVICE,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        AUTHORIZATION_EXPIRY =
          T.let(
            :AUTHORIZATION_EXPIRY,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        AUTHORIZATION_REVERSAL =
          T.let(
            :AUTHORIZATION_REVERSAL,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        BALANCE_INQUIRY =
          T.let(:BALANCE_INQUIRY, Lithic::FinancialEvent::Type::TaggedSymbol)
        BILLING_ERROR =
          T.let(:BILLING_ERROR, Lithic::FinancialEvent::Type::TaggedSymbol)
        BILLING_ERROR_REVERSAL =
          T.let(
            :BILLING_ERROR_REVERSAL,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        CARD_TO_CARD =
          T.let(:CARD_TO_CARD, Lithic::FinancialEvent::Type::TaggedSymbol)
        CASH_BACK =
          T.let(:CASH_BACK, Lithic::FinancialEvent::Type::TaggedSymbol)
        CASH_BACK_REVERSAL =
          T.let(:CASH_BACK_REVERSAL, Lithic::FinancialEvent::Type::TaggedSymbol)
        CLEARING = T.let(:CLEARING, Lithic::FinancialEvent::Type::TaggedSymbol)
        COLLECTION =
          T.let(:COLLECTION, Lithic::FinancialEvent::Type::TaggedSymbol)
        CORRECTION_CREDIT =
          T.let(:CORRECTION_CREDIT, Lithic::FinancialEvent::Type::TaggedSymbol)
        CORRECTION_DEBIT =
          T.let(:CORRECTION_DEBIT, Lithic::FinancialEvent::Type::TaggedSymbol)
        CREDIT_AUTHORIZATION =
          T.let(
            :CREDIT_AUTHORIZATION,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        CREDIT_AUTHORIZATION_ADVICE =
          T.let(
            :CREDIT_AUTHORIZATION_ADVICE,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        CURRENCY_CONVERSION =
          T.let(
            :CURRENCY_CONVERSION,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        CURRENCY_CONVERSION_REVERSAL =
          T.let(
            :CURRENCY_CONVERSION_REVERSAL,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        DISPUTE_WON =
          T.let(:DISPUTE_WON, Lithic::FinancialEvent::Type::TaggedSymbol)
        EXTERNAL_ACH_CANCELED =
          T.let(
            :EXTERNAL_ACH_CANCELED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        EXTERNAL_ACH_INITIATED =
          T.let(
            :EXTERNAL_ACH_INITIATED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        EXTERNAL_ACH_RELEASED =
          T.let(
            :EXTERNAL_ACH_RELEASED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        EXTERNAL_ACH_REVERSED =
          T.let(
            :EXTERNAL_ACH_REVERSED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        EXTERNAL_ACH_SETTLED =
          T.let(
            :EXTERNAL_ACH_SETTLED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        EXTERNAL_CHECK_CANCELED =
          T.let(
            :EXTERNAL_CHECK_CANCELED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        EXTERNAL_CHECK_INITIATED =
          T.let(
            :EXTERNAL_CHECK_INITIATED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        EXTERNAL_CHECK_RELEASED =
          T.let(
            :EXTERNAL_CHECK_RELEASED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        EXTERNAL_CHECK_REVERSED =
          T.let(
            :EXTERNAL_CHECK_REVERSED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        EXTERNAL_CHECK_SETTLED =
          T.let(
            :EXTERNAL_CHECK_SETTLED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        EXTERNAL_TRANSFER_CANCELED =
          T.let(
            :EXTERNAL_TRANSFER_CANCELED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        EXTERNAL_TRANSFER_INITIATED =
          T.let(
            :EXTERNAL_TRANSFER_INITIATED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        EXTERNAL_TRANSFER_RELEASED =
          T.let(
            :EXTERNAL_TRANSFER_RELEASED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        EXTERNAL_TRANSFER_REVERSED =
          T.let(
            :EXTERNAL_TRANSFER_REVERSED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        EXTERNAL_TRANSFER_SETTLED =
          T.let(
            :EXTERNAL_TRANSFER_SETTLED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        EXTERNAL_WIRE_CANCELED =
          T.let(
            :EXTERNAL_WIRE_CANCELED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        EXTERNAL_WIRE_INITIATED =
          T.let(
            :EXTERNAL_WIRE_INITIATED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        EXTERNAL_WIRE_RELEASED =
          T.let(
            :EXTERNAL_WIRE_RELEASED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        EXTERNAL_WIRE_REVERSED =
          T.let(
            :EXTERNAL_WIRE_REVERSED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        EXTERNAL_WIRE_SETTLED =
          T.let(
            :EXTERNAL_WIRE_SETTLED,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        FINANCIAL_AUTHORIZATION =
          T.let(
            :FINANCIAL_AUTHORIZATION,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        FINANCIAL_CREDIT_AUTHORIZATION =
          T.let(
            :FINANCIAL_CREDIT_AUTHORIZATION,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        INTEREST = T.let(:INTEREST, Lithic::FinancialEvent::Type::TaggedSymbol)
        INTEREST_REVERSAL =
          T.let(:INTEREST_REVERSAL, Lithic::FinancialEvent::Type::TaggedSymbol)
        INTERNAL_ADJUSTMENT =
          T.let(
            :INTERNAL_ADJUSTMENT,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        LATE_PAYMENT =
          T.let(:LATE_PAYMENT, Lithic::FinancialEvent::Type::TaggedSymbol)
        LATE_PAYMENT_REVERSAL =
          T.let(
            :LATE_PAYMENT_REVERSAL,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        LOSS_WRITE_OFF =
          T.let(:LOSS_WRITE_OFF, Lithic::FinancialEvent::Type::TaggedSymbol)
        PROVISIONAL_CREDIT =
          T.let(:PROVISIONAL_CREDIT, Lithic::FinancialEvent::Type::TaggedSymbol)
        PROVISIONAL_CREDIT_REVERSAL =
          T.let(
            :PROVISIONAL_CREDIT_REVERSAL,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        SERVICE = T.let(:SERVICE, Lithic::FinancialEvent::Type::TaggedSymbol)
        RETURN = T.let(:RETURN, Lithic::FinancialEvent::Type::TaggedSymbol)
        RETURN_REVERSAL =
          T.let(:RETURN_REVERSAL, Lithic::FinancialEvent::Type::TaggedSymbol)
        TRANSFER = T.let(:TRANSFER, Lithic::FinancialEvent::Type::TaggedSymbol)
        TRANSFER_INSUFFICIENT_FUNDS =
          T.let(
            :TRANSFER_INSUFFICIENT_FUNDS,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        RETURNED_PAYMENT =
          T.let(:RETURNED_PAYMENT, Lithic::FinancialEvent::Type::TaggedSymbol)
        RETURNED_PAYMENT_REVERSAL =
          T.let(
            :RETURNED_PAYMENT_REVERSAL,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )
        LITHIC_NETWORK_PAYMENT =
          T.let(
            :LITHIC_NETWORK_PAYMENT,
            Lithic::FinancialEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(T::Array[Lithic::FinancialEvent::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
