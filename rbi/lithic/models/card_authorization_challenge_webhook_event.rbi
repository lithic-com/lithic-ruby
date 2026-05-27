# typed: strong

module Lithic
  module Models
    class CardAuthorizationChallengeWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::CardAuthorizationChallengeWebhookEvent,
            Lithic::Internal::AnyHash
          )
        end

      # The authorization that triggered the challenge
      sig { returns(Lithic::CardAuthorization) }
      attr_reader :authorization

      sig { params(authorization: Lithic::CardAuthorization::OrHash).void }
      attr_writer :authorization

      # Details of the Authorization Challenge issued during card authorization
      sig { returns(Lithic::CardAuthorizationChallengeWebhookEvent::Challenge) }
      attr_reader :challenge

      sig do
        params(
          challenge:
            Lithic::CardAuthorizationChallengeWebhookEvent::Challenge::OrHash
        ).void
      end
      attr_writer :challenge

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      sig do
        params(
          authorization: Lithic::CardAuthorization::OrHash,
          challenge:
            Lithic::CardAuthorizationChallengeWebhookEvent::Challenge::OrHash,
          event_type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The authorization that triggered the challenge
        authorization:,
        # Details of the Authorization Challenge issued during card authorization
        challenge:,
        # The type of event that occurred.
        event_type: :"card_authorization.challenge"
      )
      end

      sig do
        override.returns(
          {
            authorization: Lithic::CardAuthorization,
            challenge:
              Lithic::CardAuthorizationChallengeWebhookEvent::Challenge,
            event_type: Symbol
          }
        )
      end
      def to_hash
      end

      class Challenge < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::CardAuthorizationChallengeWebhookEvent::Challenge,
              Lithic::Internal::AnyHash
            )
          end

        # Globally unique identifier for the event that triggered the challenge. Use this
        # token when calling the challenge response endpoint
        sig { returns(String) }
        attr_accessor :event_token

        # ISO-8601 time at which the challenge expires
        sig { returns(Time) }
        attr_accessor :expiry_time

        # ISO-8601 time at which the challenge was issued
        sig { returns(Time) }
        attr_accessor :start_time

        # Details of the Authorization Challenge issued during card authorization
        sig do
          params(
            event_token: String,
            expiry_time: Time,
            start_time: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier for the event that triggered the challenge. Use this
          # token when calling the challenge response endpoint
          event_token:,
          # ISO-8601 time at which the challenge expires
          expiry_time:,
          # ISO-8601 time at which the challenge was issued
          start_time:
        )
        end

        sig do
          override.returns(
            { event_token: String, expiry_time: Time, start_time: Time }
          )
        end
        def to_hash
        end
      end
    end
  end
end
