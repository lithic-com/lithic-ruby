# typed: strong

module Lithic
  module Models
    class FinancialAccountCreateParams < Lithic::BaseModel
      extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

      sig { returns(String) }
      attr_accessor :nickname

      sig { returns(Lithic::Models::FinancialAccountCreateParams::Type::OrSymbol) }
      attr_accessor :type

      sig { returns(T.nilable(String)) }
      attr_reader :account_token

      sig { params(account_token: String).void }
      attr_writer :account_token

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_for_benefit_of

      sig { params(is_for_benefit_of: T::Boolean).void }
      attr_writer :is_for_benefit_of

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig do
        params(
          nickname: String,
          type: Lithic::Models::FinancialAccountCreateParams::Type::OrSymbol,
          account_token: String,
          is_for_benefit_of: T::Boolean,
          idempotency_key: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
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

        sig { override.returns(T::Array[Lithic::Models::FinancialAccountCreateParams::Type::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
