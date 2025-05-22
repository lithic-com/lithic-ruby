# frozen_string_literal: true

module Lithic
  module Models
    module ThreeDS
      class ChallengeResponse < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Globally unique identifier for the 3DS authentication. This token is sent as
        #   part of the initial 3DS Decisioning Request and as part of the 3DS Challenge
        #   Event in the [ThreeDSAuthentication](#/components/schemas/ThreeDSAuthentication)
        #   object
        #
        #   @return [String]
        required :token, String

        # @!attribute challenge_response
        #   Whether the Cardholder has Approved or Declined the issued Challenge
        #
        #   @return [Symbol, Lithic::Models::ThreeDS::ChallengeResult]
        required :challenge_response, enum: -> { Lithic::ThreeDS::ChallengeResult }

        # @!method initialize(token:, challenge_response:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::ThreeDS::ChallengeResponse} for more details.
        #
        #   @param token [String] Globally unique identifier for the 3DS authentication. This token is sent as par
        #
        #   @param challenge_response [Symbol, Lithic::Models::ThreeDS::ChallengeResult] Whether the Cardholder has Approved or Declined the issued Challenge
      end
    end
  end
end
