# typed: strong

module Lithic
  module Models
    # Type of instance financial account
    module InstanceFinancialAccountType
      extend Lithic::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::InstanceFinancialAccountType) }
      OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::InstanceFinancialAccountType::TaggedSymbol) }

      ISSUING = T.let(:ISSUING, Lithic::Models::InstanceFinancialAccountType::TaggedSymbol)
      RESERVE = T.let(:RESERVE, Lithic::Models::InstanceFinancialAccountType::TaggedSymbol)
      OPERATING = T.let(:OPERATING, Lithic::Models::InstanceFinancialAccountType::TaggedSymbol)

      sig { override.returns(T::Array[Lithic::Models::InstanceFinancialAccountType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
