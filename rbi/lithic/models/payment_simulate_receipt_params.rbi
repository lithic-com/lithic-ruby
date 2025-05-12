# typed: strong

module Lithic
  module Models
    class PaymentSimulateReceiptParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::PaymentSimulateReceiptParams, Lithic::Internal::AnyHash)
        end

      # Customer-generated payment token used to uniquely identify the simulated payment
      sig { returns(String) }
      attr_accessor :token

      # Amount
      sig { returns(Integer) }
      attr_accessor :amount

      # Financial Account Token
      sig { returns(String) }
      attr_accessor :financial_account_token

      # Receipt Type
      sig do
        returns(Lithic::PaymentSimulateReceiptParams::ReceiptType::OrSymbol)
      end
      attr_accessor :receipt_type

      # Memo
      sig { returns(T.nilable(String)) }
      attr_reader :memo

      sig { params(memo: String).void }
      attr_writer :memo

      sig do
        params(
          token: String,
          amount: Integer,
          financial_account_token: String,
          receipt_type:
            Lithic::PaymentSimulateReceiptParams::ReceiptType::OrSymbol,
          memo: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Customer-generated payment token used to uniquely identify the simulated payment
        token:,
        # Amount
        amount:,
        # Financial Account Token
        financial_account_token:,
        # Receipt Type
        receipt_type:,
        # Memo
        memo: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            token: String,
            amount: Integer,
            financial_account_token: String,
            receipt_type:
              Lithic::PaymentSimulateReceiptParams::ReceiptType::OrSymbol,
            memo: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Receipt Type
      module ReceiptType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::PaymentSimulateReceiptParams::ReceiptType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RECEIPT_CREDIT =
          T.let(
            :RECEIPT_CREDIT,
            Lithic::PaymentSimulateReceiptParams::ReceiptType::TaggedSymbol
          )
        RECEIPT_DEBIT =
          T.let(
            :RECEIPT_DEBIT,
            Lithic::PaymentSimulateReceiptParams::ReceiptType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::PaymentSimulateReceiptParams::ReceiptType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
