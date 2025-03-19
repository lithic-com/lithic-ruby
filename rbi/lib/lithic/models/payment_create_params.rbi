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

      sig { returns(Symbol) }
      def method_
      end

      sig { params(_: Symbol).returns(Symbol) }
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

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
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
          method_: Symbol,
          method_attributes: Lithic::Models::PaymentCreateParams::MethodAttributes,
          type: Symbol,
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
              method_: Symbol,
              method_attributes: Lithic::Models::PaymentCreateParams::MethodAttributes,
              type: Symbol,
              token: String,
              memo: String,
              user_defined_id: String,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Method < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ACH_NEXT_DAY = :ACH_NEXT_DAY
        ACH_SAME_DAY = :ACH_SAME_DAY
      end

      class MethodAttributes < Lithic::BaseModel
        sig { returns(Symbol) }
        def sec_code
        end

        sig { params(_: Symbol).returns(Symbol) }
        def sec_code=(_)
        end

        sig { params(sec_code: Symbol).returns(T.attached_class) }
        def self.new(sec_code:)
        end

        sig { override.returns({sec_code: Symbol}) }
        def to_hash
        end

        class SecCode < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          CCD = :CCD
          PPD = :PPD
          WEB = :WEB
        end
      end

      class Type < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        COLLECTION = :COLLECTION
        PAYMENT = :PAYMENT
      end
    end
  end
end
