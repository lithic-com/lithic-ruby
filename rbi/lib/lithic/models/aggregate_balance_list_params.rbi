# typed: strong

module Lithic
  module Models
    class AggregateBalanceListParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Get the aggregate balance for a given Financial Account type.
      sig { returns(T.nilable(Symbol)) }
      def financial_account_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def financial_account_type=(_)
      end

      sig do
        params(
          financial_account_type: Symbol,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(financial_account_type: nil, request_options: {})
      end

      sig { override.returns({financial_account_type: Symbol, request_options: Lithic::RequestOptions}) }
      def to_hash
      end

      # Get the aggregate balance for a given Financial Account type.
      class FinancialAccountType < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ISSUING = :ISSUING
        OPERATING = :OPERATING
        RESERVE = :RESERVE
      end
    end
  end
end
