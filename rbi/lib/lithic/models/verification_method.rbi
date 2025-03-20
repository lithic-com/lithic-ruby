# typed: strong

module Lithic
  module Models
    module VerificationMethod
      extend Lithic::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::VerificationMethod) }
      OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::VerificationMethod::TaggedSymbol) }

      MANUAL = T.let(:MANUAL, Lithic::Models::VerificationMethod::OrSymbol)
      MICRO_DEPOSIT = T.let(:MICRO_DEPOSIT, Lithic::Models::VerificationMethod::OrSymbol)
      PLAID = T.let(:PLAID, Lithic::Models::VerificationMethod::OrSymbol)
      PRENOTE = T.let(:PRENOTE, Lithic::Models::VerificationMethod::OrSymbol)
      EXTERNALLY_VERIFIED = T.let(:EXTERNALLY_VERIFIED, Lithic::Models::VerificationMethod::OrSymbol)
    end
  end
end
