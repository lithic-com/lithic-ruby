# typed: strong

module Lithic
  module Models
    # Type of instance financial account
    module InstanceFinancialAccountType
      extend Lithic::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Lithic::InstanceFinancialAccountType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ISSUING =
        T.let(:ISSUING, Lithic::InstanceFinancialAccountType::TaggedSymbol)
      RESERVE =
        T.let(:RESERVE, Lithic::InstanceFinancialAccountType::TaggedSymbol)
      OPERATING =
        T.let(:OPERATING, Lithic::InstanceFinancialAccountType::TaggedSymbol)
      CHARGED_OFF_FEES =
        T.let(
          :CHARGED_OFF_FEES,
          Lithic::InstanceFinancialAccountType::TaggedSymbol
        )
      CHARGED_OFF_INTEREST =
        T.let(
          :CHARGED_OFF_INTEREST,
          Lithic::InstanceFinancialAccountType::TaggedSymbol
        )
      CHARGED_OFF_PRINCIPAL =
        T.let(
          :CHARGED_OFF_PRINCIPAL,
          Lithic::InstanceFinancialAccountType::TaggedSymbol
        )
      SECURITY =
        T.let(:SECURITY, Lithic::InstanceFinancialAccountType::TaggedSymbol)
      PROGRAM_RECEIVABLES =
        T.let(
          :PROGRAM_RECEIVABLES,
          Lithic::InstanceFinancialAccountType::TaggedSymbol
        )
      COLLECTION =
        T.let(:COLLECTION, Lithic::InstanceFinancialAccountType::TaggedSymbol)
      PROGRAM_BANK_ACCOUNTS_PAYABLE =
        T.let(
          :PROGRAM_BANK_ACCOUNTS_PAYABLE,
          Lithic::InstanceFinancialAccountType::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[Lithic::InstanceFinancialAccountType::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
