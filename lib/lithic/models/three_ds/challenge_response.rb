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
        required :challenge_response, enum: -> { Lithic::Models::ThreeDS::ChallengeResult }

        # @!parse
        #   # @param token [String]
        #   # @param challenge_response [Symbol, Lithic::Models::ThreeDS::ChallengeResult]
        #   #
        #   def initialize(token:, challenge_response:, **) = super

        # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
      end
    end
  end
end
