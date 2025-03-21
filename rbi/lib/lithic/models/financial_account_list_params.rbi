# typed: strong

module Lithic
  module Models
    class FinancialAccountListParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # List financial accounts for a given account_token or business_account_token
      sig { returns(T.nilable(String)) }
      def account_token
      end

      sig { params(_: String).returns(String) }
      def account_token=(_)
      end

      # List financial accounts for a given business_account_token
      sig { returns(T.nilable(String)) }
      def business_account_token
      end

      sig { params(_: String).returns(String) }
      def business_account_token=(_)
      end

      # List financial accounts of a given type
      sig { returns(T.nilable(Lithic::Models::FinancialAccountListParams::Type::OrSymbol)) }
      def type
      end

      sig do
        params(_: Lithic::Models::FinancialAccountListParams::Type::OrSymbol)
          .returns(Lithic::Models::FinancialAccountListParams::Type::OrSymbol)
      end
      def type=(_)
      end

      sig do
        params(
          account_token: String,
          business_account_token: String,
          type: Lithic::Models::FinancialAccountListParams::Type::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(account_token: nil, business_account_token: nil, type: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              account_token: String,
              business_account_token: String,
              type: Lithic::Models::FinancialAccountListParams::Type::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # List financial accounts of a given type
      module Type
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccountListParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::FinancialAccountListParams::Type::TaggedSymbol) }

        ISSUING = T.let(:ISSUING, Lithic::Models::FinancialAccountListParams::Type::TaggedSymbol)
        OPERATING = T.let(:OPERATING, Lithic::Models::FinancialAccountListParams::Type::TaggedSymbol)
        RESERVE = T.let(:RESERVE, Lithic::Models::FinancialAccountListParams::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::FinancialAccountListParams::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
