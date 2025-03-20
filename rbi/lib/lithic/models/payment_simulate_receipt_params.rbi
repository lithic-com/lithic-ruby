# typed: strong

module Lithic
  module Models
    class PaymentSimulateReceiptParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Payment token
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # Amount
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # Financial Account Token
      sig { returns(String) }
      def financial_account_token
      end

      sig { params(_: String).returns(String) }
      def financial_account_token=(_)
      end

      # Receipt Type
      sig { returns(Lithic::Models::PaymentSimulateReceiptParams::ReceiptType::OrSymbol) }
      def receipt_type
      end

      sig do
        params(_: Lithic::Models::PaymentSimulateReceiptParams::ReceiptType::OrSymbol)
          .returns(Lithic::Models::PaymentSimulateReceiptParams::ReceiptType::OrSymbol)
      end
      def receipt_type=(_)
      end

      # Memo
      sig { returns(T.nilable(String)) }
      def memo
      end

      sig { params(_: String).returns(String) }
      def memo=(_)
      end

      sig do
        params(
          token: String,
          amount: Integer,
          financial_account_token: String,
          receipt_type: Lithic::Models::PaymentSimulateReceiptParams::ReceiptType::OrSymbol,
          memo: String,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(token:, amount:, financial_account_token:, receipt_type:, memo: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              token: String,
              amount: Integer,
              financial_account_token: String,
              receipt_type: Lithic::Models::PaymentSimulateReceiptParams::ReceiptType::OrSymbol,
              memo: String,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Receipt Type
      module ReceiptType
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::PaymentSimulateReceiptParams::ReceiptType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::PaymentSimulateReceiptParams::ReceiptType::TaggedSymbol) }

        RECEIPT_CREDIT =
          T.let(:RECEIPT_CREDIT, Lithic::Models::PaymentSimulateReceiptParams::ReceiptType::TaggedSymbol)
        RECEIPT_DEBIT =
          T.let(:RECEIPT_DEBIT, Lithic::Models::PaymentSimulateReceiptParams::ReceiptType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::PaymentSimulateReceiptParams::ReceiptType::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
