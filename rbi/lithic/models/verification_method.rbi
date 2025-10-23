# typed: strong

module Lithic
  module Models
    module VerificationMethod
      extend Lithic::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::VerificationMethod) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      MANUAL = T.let(:MANUAL, Lithic::VerificationMethod::TaggedSymbol)
      MICRO_DEPOSIT =
        T.let(:MICRO_DEPOSIT, Lithic::VerificationMethod::TaggedSymbol)
      PRENOTE = T.let(:PRENOTE, Lithic::VerificationMethod::TaggedSymbol)
      EXTERNALLY_VERIFIED =
        T.let(:EXTERNALLY_VERIFIED, Lithic::VerificationMethod::TaggedSymbol)
      UNVERIFIED = T.let(:UNVERIFIED, Lithic::VerificationMethod::TaggedSymbol)

      sig do
        override.returns(T::Array[Lithic::VerificationMethod::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
