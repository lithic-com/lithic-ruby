# typed: strong

module Lithic
  module Models
    module ThreeDS
      # Whether the Cardholder has approved or declined the issued Challenge
      module ChallengeResult
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::ThreeDS::ChallengeResult) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVE =
          T.let(:APPROVE, Lithic::ThreeDS::ChallengeResult::TaggedSymbol)
        DECLINE_BY_CUSTOMER =
          T.let(
            :DECLINE_BY_CUSTOMER,
            Lithic::ThreeDS::ChallengeResult::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::ThreeDS::ChallengeResult::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
