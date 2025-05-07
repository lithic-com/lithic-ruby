# typed: strong

module Lithic
  module Models
    class PaymentCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(String) }
      attr_accessor :external_bank_account_token

      sig { returns(String) }
      attr_accessor :financial_account_token

      sig { returns(Lithic::PaymentCreateParams::Method::OrSymbol) }
      attr_accessor :method_

      sig { returns(Lithic::PaymentCreateParams::MethodAttributes) }
      attr_reader :method_attributes

      sig do
        params(
          method_attributes:
            Lithic::PaymentCreateParams::MethodAttributes::OrHash
        ).void
      end
      attr_writer :method_attributes

      sig { returns(Lithic::PaymentCreateParams::Type::OrSymbol) }
      attr_accessor :type

      # Customer-provided token that will serve as an idempotency token. This token will
      # become the transaction token.
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
          method_: Lithic::PaymentCreateParams::Method::OrSymbol,
          method_attributes:
            Lithic::PaymentCreateParams::MethodAttributes::OrHash,
          type: Lithic::PaymentCreateParams::Type::OrSymbol,
          token: String,
          memo: String,
          user_defined_id: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        amount:,
        external_bank_account_token:,
        financial_account_token:,
        method_:,
        method_attributes:,
        type:,
        # Customer-provided token that will serve as an idempotency token. This token will
        # become the transaction token.
        token: nil,
        memo: nil,
        user_defined_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount: Integer,
            external_bank_account_token: String,
            financial_account_token: String,
            method_: Lithic::PaymentCreateParams::Method::OrSymbol,
            method_attributes: Lithic::PaymentCreateParams::MethodAttributes,
            type: Lithic::PaymentCreateParams::Type::OrSymbol,
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

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::PaymentCreateParams::Method) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH_NEXT_DAY =
          T.let(
            :ACH_NEXT_DAY,
            Lithic::PaymentCreateParams::Method::TaggedSymbol
          )
        ACH_SAME_DAY =
          T.let(
            :ACH_SAME_DAY,
            Lithic::PaymentCreateParams::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::PaymentCreateParams::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class MethodAttributes < Lithic::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

        sig do
          returns(
            Lithic::PaymentCreateParams::MethodAttributes::SecCode::OrSymbol
          )
        end
        attr_accessor :sec_code

        sig do
          params(
            sec_code:
              Lithic::PaymentCreateParams::MethodAttributes::SecCode::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(sec_code:)
        end

        sig do
          override.returns(
            {
              sec_code:
                Lithic::PaymentCreateParams::MethodAttributes::SecCode::OrSymbol
            }
          )
        end
        def to_hash
        end

        module SecCode
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::PaymentCreateParams::MethodAttributes::SecCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CCD =
            T.let(
              :CCD,
              Lithic::PaymentCreateParams::MethodAttributes::SecCode::TaggedSymbol
            )
          PPD =
            T.let(
              :PPD,
              Lithic::PaymentCreateParams::MethodAttributes::SecCode::TaggedSymbol
            )
          WEB =
            T.let(
              :WEB,
              Lithic::PaymentCreateParams::MethodAttributes::SecCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::PaymentCreateParams::MethodAttributes::SecCode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      module Type
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::PaymentCreateParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COLLECTION =
          T.let(:COLLECTION, Lithic::PaymentCreateParams::Type::TaggedSymbol)
        PAYMENT =
          T.let(:PAYMENT, Lithic::PaymentCreateParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::PaymentCreateParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
