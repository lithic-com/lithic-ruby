# typed: strong

module Lithic
  module Models
    class AggregateBalanceListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # Get the aggregate balance for a given Financial Account type.
      sig { returns(T.nilable(Lithic::Models::AggregateBalanceListParams::FinancialAccountType::OrSymbol)) }
      attr_reader :financial_account_type

      sig do
        params(financial_account_type: Lithic::Models::AggregateBalanceListParams::FinancialAccountType::OrSymbol)
          .void
      end
      attr_writer :financial_account_type

      sig do
        params(
          financial_account_type: Lithic::Models::AggregateBalanceListParams::FinancialAccountType::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(financial_account_type: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              financial_account_type: Lithic::Models::AggregateBalanceListParams::FinancialAccountType::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash; end

      # Get the aggregate balance for a given Financial Account type.
      module FinancialAccountType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::AggregateBalanceListParams::FinancialAccountType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::AggregateBalanceListParams::FinancialAccountType::TaggedSymbol) }

        ISSUING = T.let(:ISSUING, Lithic::Models::AggregateBalanceListParams::FinancialAccountType::TaggedSymbol)
        OPERATING =
          T.let(:OPERATING, Lithic::Models::AggregateBalanceListParams::FinancialAccountType::TaggedSymbol)
        RESERVE = T.let(:RESERVE, Lithic::Models::AggregateBalanceListParams::FinancialAccountType::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::AggregateBalanceListParams::FinancialAccountType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
