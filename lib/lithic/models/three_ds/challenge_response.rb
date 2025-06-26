# frozen_string_literal: true

module Lithic
  module Models
    module ThreeDS
      class ChallengeResponse < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Globally unique identifier for 3DS Authentication that resulted in
        #   PENDING_CHALLENGE authentication result.
        #
        #   @return [String]
        required :token, String

        # @!attribute challenge_response
        #   Whether the Cardholder has approved or declined the issued Challenge
        #
        #   @return [Symbol, Lithic::Models::ThreeDS::ChallengeResult]
        required :challenge_response, enum: -> { Lithic::ThreeDS::ChallengeResult }

        # @!method initialize(token:, challenge_response:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::ThreeDS::ChallengeResponse} for more details.
        #
        #   Response from Card Program to a 3DS Authentication challenge
        #
        #   @param token [String] Globally unique identifier for 3DS Authentication that resulted in PENDING_CHALL
        #
        #   @param challenge_response [Symbol, Lithic::Models::ThreeDS::ChallengeResult] Whether the Cardholder has approved or declined the issued Challenge
      end
    end
  end
end
