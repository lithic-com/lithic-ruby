# typed: strong

module Lithic
  module Models
    class FinancialAccountListParams < Lithic::BaseModel
      extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

      # List financial accounts for a given account_token or business_account_token
      sig { returns(T.nilable(String)) }
      attr_reader :account_token

      sig { params(account_token: String).void }
      attr_writer :account_token

      # List financial accounts for a given business_account_token
      sig { returns(T.nilable(String)) }
      attr_reader :business_account_token

      sig { params(business_account_token: String).void }
      attr_writer :business_account_token

      # List financial accounts of a given type
      sig { returns(T.nilable(Lithic::Models::FinancialAccountListParams::Type::OrSymbol)) }
      attr_reader :type

      sig { params(type: Lithic::Models::FinancialAccountListParams::Type::OrSymbol).void }
      attr_writer :type

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
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::FinancialAccountListParams::Type::TaggedSymbol) }

        ISSUING = T.let(:ISSUING, Lithic::Models::FinancialAccountListParams::Type::TaggedSymbol)
        OPERATING = T.let(:OPERATING, Lithic::Models::FinancialAccountListParams::Type::TaggedSymbol)
        RESERVE = T.let(:RESERVE, Lithic::Models::FinancialAccountListParams::Type::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::FinancialAccountListParams::Type::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
