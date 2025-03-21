# typed: strong

module Lithic
  module Models
    class PaymentSimulateReceiptParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Payment token
      sig { returns(String) }
      attr_accessor :token

      # Amount
      sig { returns(Integer) }
      attr_accessor :amount

      # Financial Account Token
      sig { returns(String) }
      attr_accessor :financial_account_token

      # Receipt Type
      sig { returns(Lithic::Models::PaymentSimulateReceiptParams::ReceiptType::OrSymbol) }
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
          receipt_type: Lithic::Models::PaymentSimulateReceiptParams::ReceiptType::OrSymbol,
          memo: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
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
