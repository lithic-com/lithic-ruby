# typed: strong

module Lithic
  module Models
    module ThreeDS
      class ChallengeResponse < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::ThreeDS::ChallengeResponse, Lithic::Internal::AnyHash)
          end

        # Globally unique identifier for 3DS Authentication that resulted in
        # PENDING_CHALLENGE authentication result.
        sig { returns(String) }
        attr_accessor :token

        # Whether the Cardholder has approved or declined the issued Challenge
        sig { returns(Lithic::ThreeDS::ChallengeResult::OrSymbol) }
        attr_accessor :challenge_response

        # Response from Card Program to a 3DS Authentication challenge
        sig do
          params(
            token: String,
            challenge_response: Lithic::ThreeDS::ChallengeResult::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier for 3DS Authentication that resulted in
          # PENDING_CHALLENGE authentication result.
          token:,
          # Whether the Cardholder has approved or declined the issued Challenge
          challenge_response:
        )
        end

        sig do
          override.returns(
            {
              token: String,
              challenge_response: Lithic::ThreeDS::ChallengeResult::OrSymbol
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
