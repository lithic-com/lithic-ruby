# typed: strong

module Lithic
  module Models
    # Type of account financial account
    module AccountFinancialAccountType
      extend Lithic::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AccountFinancialAccountType) }
      OrSymbol =
        T.type_alias { T.any(Symbol, String, Lithic::Models::AccountFinancialAccountType::TaggedSymbol) }

      ISSUING = T.let(:ISSUING, Lithic::Models::AccountFinancialAccountType::TaggedSymbol)
      OPERATING = T.let(:OPERATING, Lithic::Models::AccountFinancialAccountType::TaggedSymbol)

      sig { override.returns(T::Array[Lithic::Models::AccountFinancialAccountType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
