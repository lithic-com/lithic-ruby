# typed: strong

module Lithic
  module Models
    class PaymentCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(String) }
      attr_accessor :external_bank_account_token

      sig { returns(String) }
      attr_accessor :financial_account_token

      sig { returns(Lithic::Models::PaymentCreateParams::Method::OrSymbol) }
      attr_accessor :method_

      sig { returns(Lithic::Models::PaymentCreateParams::MethodAttributes) }
      attr_reader :method_attributes

      sig do
        params(
          method_attributes: T.any(Lithic::Models::PaymentCreateParams::MethodAttributes, Lithic::Internal::AnyHash)
        )
          .void
      end
      attr_writer :method_attributes

      sig { returns(Lithic::Models::PaymentCreateParams::Type::OrSymbol) }
      attr_accessor :type

      # Customer-provided token that will serve as an idempotency token. This token will
      #   become the transaction token.
      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      sig { returns(T.nilable(String)) }
      attr_reader :memo

      sig { params(memo: String).void }
      attr_writer :memo

      sig { returns(T.nilable(String)) }
      attr_reader :user_defined_id

      sig { params(user_defined_id: String).void }
      attr_writer :user_defined_id

      sig do
        params(
          amount: Integer,
          external_bank_account_token: String,
          financial_account_token: String,
          method_: Lithic::Models::PaymentCreateParams::Method::OrSymbol,
          method_attributes: T.any(Lithic::Models::PaymentCreateParams::MethodAttributes, Lithic::Internal::AnyHash),
          type: Lithic::Models::PaymentCreateParams::Type::OrSymbol,
          token: String,
          memo: String,
          user_defined_id: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        amount:,
        external_bank_account_token:,
        financial_account_token:,
        method_:,
        method_attributes:,
        type:,
        token: nil,
        memo: nil,
        user_defined_id: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              amount: Integer,
              external_bank_account_token: String,
              financial_account_token: String,
              method_: Lithic::Models::PaymentCreateParams::Method::OrSymbol,
              method_attributes: Lithic::Models::PaymentCreateParams::MethodAttributes,
              type: Lithic::Models::PaymentCreateParams::Type::OrSymbol,
              token: String,
              memo: String,
              user_defined_id: String,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      module Method
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::PaymentCreateParams::Method) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::PaymentCreateParams::Method::TaggedSymbol) }

        ACH_NEXT_DAY = T.let(:ACH_NEXT_DAY, Lithic::Models::PaymentCreateParams::Method::TaggedSymbol)
        ACH_SAME_DAY = T.let(:ACH_SAME_DAY, Lithic::Models::PaymentCreateParams::Method::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::PaymentCreateParams::Method::TaggedSymbol]) }
        def self.values
        end
      end

      class MethodAttributes < Lithic::Internal::Type::BaseModel
        sig { returns(Lithic::Models::PaymentCreateParams::MethodAttributes::SecCode::OrSymbol) }
        attr_accessor :sec_code

        sig do
          params(sec_code: Lithic::Models::PaymentCreateParams::MethodAttributes::SecCode::OrSymbol)
            .returns(T.attached_class)
        end
        def self.new(sec_code:)
        end

        sig { override.returns({sec_code: Lithic::Models::PaymentCreateParams::MethodAttributes::SecCode::OrSymbol}) }
        def to_hash
        end

        module SecCode
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::PaymentCreateParams::MethodAttributes::SecCode) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Lithic::Models::PaymentCreateParams::MethodAttributes::SecCode::TaggedSymbol) }

          CCD = T.let(:CCD, Lithic::Models::PaymentCreateParams::MethodAttributes::SecCode::TaggedSymbol)
          PPD = T.let(:PPD, Lithic::Models::PaymentCreateParams::MethodAttributes::SecCode::TaggedSymbol)
          WEB = T.let(:WEB, Lithic::Models::PaymentCreateParams::MethodAttributes::SecCode::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::PaymentCreateParams::MethodAttributes::SecCode::TaggedSymbol]) }
          def self.values
          end
        end
      end

      module Type
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::PaymentCreateParams::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::PaymentCreateParams::Type::TaggedSymbol) }

        COLLECTION = T.let(:COLLECTION, Lithic::Models::PaymentCreateParams::Type::TaggedSymbol)
        PAYMENT = T.let(:PAYMENT, Lithic::Models::PaymentCreateParams::Type::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::PaymentCreateParams::Type::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
