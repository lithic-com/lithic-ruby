# typed: strong

module Lithic
  module Models
    module VerificationMethod
      extend Lithic::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::VerificationMethod) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      MANUAL = T.let(:MANUAL, Lithic::Models::VerificationMethod::TaggedSymbol)
      MICRO_DEPOSIT = T.let(:MICRO_DEPOSIT, Lithic::Models::VerificationMethod::TaggedSymbol)
      PLAID = T.let(:PLAID, Lithic::Models::VerificationMethod::TaggedSymbol)
      PRENOTE = T.let(:PRENOTE, Lithic::Models::VerificationMethod::TaggedSymbol)
      EXTERNALLY_VERIFIED = T.let(:EXTERNALLY_VERIFIED, Lithic::Models::VerificationMethod::TaggedSymbol)

      sig { override.returns(T::Array[Lithic::Models::VerificationMethod::TaggedSymbol]) }
      def self.values; end
    end
  end
end
