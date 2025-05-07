# typed: strong

module Lithic
  module Models
    module ThreeDS
      class ChallengeResponse < Lithic::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

        # Globally unique identifier for the 3DS authentication. This token is sent as
        # part of the initial 3DS Decisioning Request and as part of the 3DS Challenge
        # Event in the [ThreeDSAuthentication](#/components/schemas/ThreeDSAuthentication)
        # object
        sig { returns(String) }
        attr_accessor :token

        # Whether the Cardholder has Approved or Declined the issued Challenge
        sig { returns(Lithic::ThreeDS::ChallengeResult::OrSymbol) }
        attr_accessor :challenge_response

        sig do
          params(
            token: String,
            challenge_response: Lithic::ThreeDS::ChallengeResult::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier for the 3DS authentication. This token is sent as
          # part of the initial 3DS Decisioning Request and as part of the 3DS Challenge
          # Event in the [ThreeDSAuthentication](#/components/schemas/ThreeDSAuthentication)
          # object
          token:,
          # Whether the Cardholder has Approved or Declined the issued Challenge
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
