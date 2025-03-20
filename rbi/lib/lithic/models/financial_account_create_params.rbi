# typed: strong

module Lithic
  module Models
    class FinancialAccountCreateParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      sig { returns(String) }
      def nickname
      end

      sig { params(_: String).returns(String) }
      def nickname=(_)
      end

      sig { returns(Lithic::Models::FinancialAccountCreateParams::Type::OrSymbol) }
      def type
      end

      sig do
        params(_: Lithic::Models::FinancialAccountCreateParams::Type::OrSymbol)
          .returns(Lithic::Models::FinancialAccountCreateParams::Type::OrSymbol)
      end
      def type=(_)
      end

      sig { returns(T.nilable(String)) }
      def account_token
      end

      sig { params(_: String).returns(String) }
      def account_token=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def is_for_benefit_of
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def is_for_benefit_of=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: String).returns(String) }
      def idempotency_key=(_)
      end

      sig do
        params(
          nickname: String,
          type: Lithic::Models::FinancialAccountCreateParams::Type::OrSymbol,
          account_token: String,
          is_for_benefit_of: T::Boolean,
          idempotency_key: String,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(nickname:, type:, account_token: nil, is_for_benefit_of: nil, idempotency_key: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              nickname: String,
              type: Lithic::Models::FinancialAccountCreateParams::Type::OrSymbol,
              account_token: String,
              is_for_benefit_of: T::Boolean,
              idempotency_key: String,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      module Type
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccountCreateParams::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::FinancialAccountCreateParams::Type::TaggedSymbol) }

        OPERATING = T.let(:OPERATING, Lithic::Models::FinancialAccountCreateParams::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::FinancialAccountCreateParams::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
