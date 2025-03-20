# typed: strong

module Lithic
  module Models
    class AggregateBalanceListParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Get the aggregate balance for a given Financial Account type.
      sig { returns(T.nilable(Lithic::Models::AggregateBalanceListParams::FinancialAccountType::OrSymbol)) }
      def financial_account_type
      end

      sig do
        params(_: Lithic::Models::AggregateBalanceListParams::FinancialAccountType::OrSymbol)
          .returns(Lithic::Models::AggregateBalanceListParams::FinancialAccountType::OrSymbol)
      end
      def financial_account_type=(_)
      end

      sig do
        params(
          financial_account_type: Lithic::Models::AggregateBalanceListParams::FinancialAccountType::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(financial_account_type: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              financial_account_type: Lithic::Models::AggregateBalanceListParams::FinancialAccountType::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Get the aggregate balance for a given Financial Account type.
      module FinancialAccountType
        extend Lithic::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::AggregateBalanceListParams::FinancialAccountType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::AggregateBalanceListParams::FinancialAccountType::TaggedSymbol) }

        ISSUING = T.let(:ISSUING, Lithic::Models::AggregateBalanceListParams::FinancialAccountType::TaggedSymbol)
        OPERATING =
          T.let(:OPERATING, Lithic::Models::AggregateBalanceListParams::FinancialAccountType::TaggedSymbol)
        RESERVE = T.let(:RESERVE, Lithic::Models::AggregateBalanceListParams::FinancialAccountType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::AggregateBalanceListParams::FinancialAccountType::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
