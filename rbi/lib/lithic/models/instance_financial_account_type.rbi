# typed: strong

module Lithic
  module Models
    # Type of instance financial account
    module InstanceFinancialAccountType
      extend Lithic::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::InstanceFinancialAccountType) }
      OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::InstanceFinancialAccountType::TaggedSymbol) }

      ISSUING = T.let(:ISSUING, Lithic::Models::InstanceFinancialAccountType::OrSymbol)
      RESERVE = T.let(:RESERVE, Lithic::Models::InstanceFinancialAccountType::OrSymbol)
      OPERATING = T.let(:OPERATING, Lithic::Models::InstanceFinancialAccountType::OrSymbol)
      CHARGED_OFF_FEES = T.let(:CHARGED_OFF_FEES, Lithic::Models::InstanceFinancialAccountType::OrSymbol)
      CHARGED_OFF_INTEREST =
        T.let(:CHARGED_OFF_INTEREST, Lithic::Models::InstanceFinancialAccountType::OrSymbol)
      CHARGED_OFF_PRINCIPAL =
        T.let(:CHARGED_OFF_PRINCIPAL, Lithic::Models::InstanceFinancialAccountType::OrSymbol)
    end
  end
end
