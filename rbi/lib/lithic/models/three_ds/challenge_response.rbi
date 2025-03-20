# typed: strong

module Lithic
  module Models
    module ThreeDS
      class ChallengeResponse < Lithic::BaseModel
        # Globally unique identifier for the 3DS authentication. This token is sent as
        #   part of the initial 3DS Decisioning Request and as part of the 3DS Challenge
        #   Event in the [ThreeDSAuthentication](#/components/schemas/ThreeDSAuthentication)
        #   object
        sig { returns(String) }
        def token
        end

        sig { params(_: String).returns(String) }
        def token=(_)
        end

        # Whether the Cardholder has Approved or Declined the issued Challenge
        sig { returns(Lithic::Models::ThreeDS::ChallengeResult::OrSymbol) }
        def challenge_response
        end

        sig do
          params(_: Lithic::Models::ThreeDS::ChallengeResult::OrSymbol)
            .returns(Lithic::Models::ThreeDS::ChallengeResult::OrSymbol)
        end
        def challenge_response=(_)
        end

        sig do
          params(token: String, challenge_response: Lithic::Models::ThreeDS::ChallengeResult::OrSymbol)
            .returns(T.attached_class)
        end
        def self.new(token:, challenge_response:)
        end

        sig { override.returns({token: String, challenge_response: Lithic::Models::ThreeDS::ChallengeResult::OrSymbol}) }
        def to_hash
        end
      end
    end
  end
end
