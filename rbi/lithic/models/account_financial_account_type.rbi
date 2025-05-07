# typed: strong

module Lithic
  module Models
    # Type of account financial account
    module AccountFinancialAccountType
      extend Lithic::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Lithic::AccountFinancialAccountType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ISSUING =
        T.let(:ISSUING, Lithic::AccountFinancialAccountType::TaggedSymbol)
      OPERATING =
        T.let(:OPERATING, Lithic::AccountFinancialAccountType::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Lithic::AccountFinancialAccountType::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
