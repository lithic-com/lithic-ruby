# typed: strong

module Lithic
  module Models
    class PaymentCreateParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(String) }
      def external_bank_account_token
      end

      sig { params(_: String).returns(String) }
      def external_bank_account_token=(_)
      end

      sig { returns(String) }
      def financial_account_token
      end

      sig { params(_: String).returns(String) }
      def financial_account_token=(_)
      end

      sig { returns(Lithic::Models::PaymentCreateParams::Method::OrSymbol) }
      def method_
      end

      sig do
        params(_: Lithic::Models::PaymentCreateParams::Method::OrSymbol)
          .returns(Lithic::Models::PaymentCreateParams::Method::OrSymbol)
      end
      def method_=(_)
      end

      sig { returns(Lithic::Models::PaymentCreateParams::MethodAttributes) }
      def method_attributes
      end

      sig do
        params(_: Lithic::Models::PaymentCreateParams::MethodAttributes)
          .returns(Lithic::Models::PaymentCreateParams::MethodAttributes)
      end
      def method_attributes=(_)
      end

      sig { returns(Lithic::Models::PaymentCreateParams::Type::OrSymbol) }
      def type
      end

      sig do
        params(_: Lithic::Models::PaymentCreateParams::Type::OrSymbol)
          .returns(Lithic::Models::PaymentCreateParams::Type::OrSymbol)
      end
      def type=(_)
      end

      # Customer-provided token that will serve as an idempotency token. This token will
      #   become the transaction token.
      sig { returns(T.nilable(String)) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      sig { returns(T.nilable(String)) }
      def memo
      end

      sig { params(_: String).returns(String) }
      def memo=(_)
      end

      sig { returns(T.nilable(String)) }
      def user_defined_id
      end

      sig { params(_: String).returns(String) }
      def user_defined_id=(_)
      end

      sig do
        params(
          amount: Integer,
          external_bank_account_token: String,
          financial_account_token: String,
          method_: Lithic::Models::PaymentCreateParams::Method::OrSymbol,
          method_attributes: Lithic::Models::PaymentCreateParams::MethodAttributes,
          type: Lithic::Models::PaymentCreateParams::Type::OrSymbol,
          token: String,
          memo: String,
          user_defined_id: String,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
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
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::PaymentCreateParams::Method) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::PaymentCreateParams::Method::TaggedSymbol) }

        ACH_NEXT_DAY = T.let(:ACH_NEXT_DAY, Lithic::Models::PaymentCreateParams::Method::OrSymbol)
        ACH_SAME_DAY = T.let(:ACH_SAME_DAY, Lithic::Models::PaymentCreateParams::Method::OrSymbol)
      end

      class MethodAttributes < Lithic::BaseModel
        sig { returns(Lithic::Models::PaymentCreateParams::MethodAttributes::SecCode::OrSymbol) }
        def sec_code
        end

        sig do
          params(_: Lithic::Models::PaymentCreateParams::MethodAttributes::SecCode::OrSymbol)
            .returns(Lithic::Models::PaymentCreateParams::MethodAttributes::SecCode::OrSymbol)
        end
        def sec_code=(_)
        end

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
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::PaymentCreateParams::MethodAttributes::SecCode) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::PaymentCreateParams::MethodAttributes::SecCode::TaggedSymbol) }

          CCD = T.let(:CCD, Lithic::Models::PaymentCreateParams::MethodAttributes::SecCode::OrSymbol)
          PPD = T.let(:PPD, Lithic::Models::PaymentCreateParams::MethodAttributes::SecCode::OrSymbol)
          WEB = T.let(:WEB, Lithic::Models::PaymentCreateParams::MethodAttributes::SecCode::OrSymbol)
        end
      end

      module Type
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::PaymentCreateParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::PaymentCreateParams::Type::TaggedSymbol) }

        COLLECTION = T.let(:COLLECTION, Lithic::Models::PaymentCreateParams::Type::OrSymbol)
        PAYMENT = T.let(:PAYMENT, Lithic::Models::PaymentCreateParams::Type::OrSymbol)
      end
    end
  end
end
