# frozen_string_literal: true

module Lithic
  module Models
    class CardAuthorizationChallengeResponseWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute card_token
      #   The token of the card associated with the challenge
      #
      #   @return [String, nil]
      required :card_token, String, nil?: true

      # @!attribute challenge_method
      #   The method used to deliver the challenge to the cardholder
      #
      #   @return [Symbol, Lithic::Models::CardAuthorizationChallengeResponseWebhookEvent::ChallengeMethod]
      required :challenge_method,
               enum: -> { Lithic::CardAuthorizationChallengeResponseWebhookEvent::ChallengeMethod }

      # @!attribute completed
      #   The timestamp of when the challenge was completed
      #
      #   @return [Time, nil]
      required :completed, Time, nil?: true

      # @!attribute created
      #   The timestamp of when the challenge was created
      #
      #   @return [Time]
      required :created, Time

      # @!attribute event_token
      #   Globally unique identifier for the event
      #
      #   @return [String]
      required :event_token, String

      # @!attribute event_type
      #   Event type
      #
      #   @return [Symbol, :"card_authorization.challenge_response"]
      required :event_type, const: :"card_authorization.challenge_response"

      # @!attribute response
      #   The cardholder's response to the challenge
      #
      #   @return [Symbol, Lithic::Models::CardAuthorizationChallengeResponseWebhookEvent::Response]
      required :response, enum: -> { Lithic::CardAuthorizationChallengeResponseWebhookEvent::Response }

      # @!attribute transaction_token
      #   The token of the transaction associated with the authorization event being
      #   challenged
      #
      #   @return [String, nil]
      required :transaction_token, String, nil?: true

      # @!method initialize(card_token:, challenge_method:, completed:, created:, event_token:, response:, transaction_token:, event_type: :"card_authorization.challenge_response")
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::CardAuthorizationChallengeResponseWebhookEvent} for more
      #   details.
      #
      #   @param card_token [String, nil] The token of the card associated with the challenge
      #
      #   @param challenge_method [Symbol, Lithic::Models::CardAuthorizationChallengeResponseWebhookEvent::ChallengeMethod] The method used to deliver the challenge to the cardholder
      #
      #   @param completed [Time, nil] The timestamp of when the challenge was completed
      #
      #   @param created [Time] The timestamp of when the challenge was created
      #
      #   @param event_token [String] Globally unique identifier for the event
      #
      #   @param response [Symbol, Lithic::Models::CardAuthorizationChallengeResponseWebhookEvent::Response] The cardholder's response to the challenge
      #
      #   @param transaction_token [String, nil] The token of the transaction associated with the authorization event being chall
      #
      #   @param event_type [Symbol, :"card_authorization.challenge_response"] Event type

      # The method used to deliver the challenge to the cardholder
      #
      # @see Lithic::Models::CardAuthorizationChallengeResponseWebhookEvent#challenge_method
      module ChallengeMethod
        extend Lithic::Internal::Type::Enum

        SMS = :SMS

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The cardholder's response to the challenge
      #
      # @see Lithic::Models::CardAuthorizationChallengeResponseWebhookEvent#response
      module Response
        extend Lithic::Internal::Type::Enum

        APPROVE = :APPROVE
        DECLINE = :DECLINE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
