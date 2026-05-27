# frozen_string_literal: true

module Lithic
  module Models
    class CardAuthorizationChallengeWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute authorization
      #   The authorization that triggered the challenge
      #
      #   @return [Lithic::Models::CardAuthorization]
      required :authorization, -> { Lithic::CardAuthorization }

      # @!attribute challenge
      #   Details of the Authorization Challenge issued during card authorization
      #
      #   @return [Lithic::Models::CardAuthorizationChallengeWebhookEvent::Challenge]
      required :challenge, -> { Lithic::CardAuthorizationChallengeWebhookEvent::Challenge }

      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"card_authorization.challenge"]
      required :event_type, const: :"card_authorization.challenge"

      # @!method initialize(authorization:, challenge:, event_type: :"card_authorization.challenge")
      #   @param authorization [Lithic::Models::CardAuthorization] The authorization that triggered the challenge
      #
      #   @param challenge [Lithic::Models::CardAuthorizationChallengeWebhookEvent::Challenge] Details of the Authorization Challenge issued during card authorization
      #
      #   @param event_type [Symbol, :"card_authorization.challenge"] The type of event that occurred.

      # @see Lithic::Models::CardAuthorizationChallengeWebhookEvent#challenge
      class Challenge < Lithic::Internal::Type::BaseModel
        # @!attribute event_token
        #   Globally unique identifier for the event that triggered the challenge. Use this
        #   token when calling the challenge response endpoint
        #
        #   @return [String]
        required :event_token, String

        # @!attribute expiry_time
        #   ISO-8601 time at which the challenge expires
        #
        #   @return [Time]
        required :expiry_time, Time

        # @!attribute start_time
        #   ISO-8601 time at which the challenge was issued
        #
        #   @return [Time]
        required :start_time, Time

        # @!method initialize(event_token:, expiry_time:, start_time:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::CardAuthorizationChallengeWebhookEvent::Challenge} for more
        #   details.
        #
        #   Details of the Authorization Challenge issued during card authorization
        #
        #   @param event_token [String] Globally unique identifier for the event that triggered the challenge. Use this
        #
        #   @param expiry_time [Time] ISO-8601 time at which the challenge expires
        #
        #   @param start_time [Time] ISO-8601 time at which the challenge was issued
      end
    end
  end
end
