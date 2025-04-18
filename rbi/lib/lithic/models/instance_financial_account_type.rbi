# typed: strong

module Lithic
  module Models
    # Type of instance financial account
    module InstanceFinancialAccountType
      extend Lithic::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::InstanceFinancialAccountType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ISSUING = T.let(:ISSUING, Lithic::Models::InstanceFinancialAccountType::TaggedSymbol)
      RESERVE = T.let(:RESERVE, Lithic::Models::InstanceFinancialAccountType::TaggedSymbol)
      OPERATING = T.let(:OPERATING, Lithic::Models::InstanceFinancialAccountType::TaggedSymbol)
      CHARGED_OFF_FEES = T.let(:CHARGED_OFF_FEES, Lithic::Models::InstanceFinancialAccountType::TaggedSymbol)
      CHARGED_OFF_INTEREST =
        T.let(:CHARGED_OFF_INTEREST, Lithic::Models::InstanceFinancialAccountType::TaggedSymbol)
      CHARGED_OFF_PRINCIPAL =
        T.let(:CHARGED_OFF_PRINCIPAL, Lithic::Models::InstanceFinancialAccountType::TaggedSymbol)
      SECURITY = T.let(:SECURITY, Lithic::Models::InstanceFinancialAccountType::TaggedSymbol)
      PROGRAM_RECEIVABLES =
        T.let(:PROGRAM_RECEIVABLES, Lithic::Models::InstanceFinancialAccountType::TaggedSymbol)

      sig { override.returns(T::Array[Lithic::Models::InstanceFinancialAccountType::TaggedSymbol]) }
      def self.values; end
    end
  end
end
