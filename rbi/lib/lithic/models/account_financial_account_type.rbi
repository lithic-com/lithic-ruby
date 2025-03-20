# typed: strong

module Lithic
  module Models
    # Type of account financial account
    module AccountFinancialAccountType
      extend Lithic::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AccountFinancialAccountType) }
      OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::AccountFinancialAccountType::TaggedSymbol) }

      ISSUING = T.let(:ISSUING, Lithic::Models::AccountFinancialAccountType::OrSymbol)
      OPERATING = T.let(:OPERATING, Lithic::Models::AccountFinancialAccountType::OrSymbol)
    end
  end
end
