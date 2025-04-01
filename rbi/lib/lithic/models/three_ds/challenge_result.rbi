# typed: strong

module Lithic
  module Models
    module ThreeDS
      # Whether the Cardholder has Approved or Declined the issued Challenge
      module ChallengeResult
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ThreeDS::ChallengeResult) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Lithic::Models::ThreeDS::ChallengeResult::TaggedSymbol) }

        APPROVE = T.let(:APPROVE, Lithic::Models::ThreeDS::ChallengeResult::TaggedSymbol)
        DECLINE_BY_CUSTOMER = T.let(:DECLINE_BY_CUSTOMER, Lithic::Models::ThreeDS::ChallengeResult::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::ThreeDS::ChallengeResult::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
