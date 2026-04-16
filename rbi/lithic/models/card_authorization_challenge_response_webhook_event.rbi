# typed: strong

module Lithic
  module Models
    class CardAuthorizationChallengeResponseWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::CardAuthorizationChallengeResponseWebhookEvent,
            Lithic::Internal::AnyHash
          )
        end

      # The token of the card associated with the challenge
      sig { returns(T.nilable(String)) }
      attr_accessor :card_token

      # The method used to deliver the challenge to the cardholder
      sig do
        returns(
          Lithic::CardAuthorizationChallengeResponseWebhookEvent::ChallengeMethod::TaggedSymbol
        )
      end
      attr_accessor :challenge_method

      # The timestamp of when the challenge was completed
      sig { returns(T.nilable(Time)) }
      attr_accessor :completed

      # The timestamp of when the challenge was created
      sig { returns(Time) }
      attr_accessor :created

      # Globally unique identifier for the event
      sig { returns(String) }
      attr_accessor :event_token

      # Event type
      sig { returns(Symbol) }
      attr_accessor :event_type

      # The cardholder's response to the challenge
      sig do
        returns(
          Lithic::CardAuthorizationChallengeResponseWebhookEvent::Response::TaggedSymbol
        )
      end
      attr_accessor :response

      # The token of the transaction associated with the authorization event being
      # challenged
      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_token

      sig do
        params(
          card_token: T.nilable(String),
          challenge_method:
            Lithic::CardAuthorizationChallengeResponseWebhookEvent::ChallengeMethod::OrSymbol,
          completed: T.nilable(Time),
          created: Time,
          event_token: String,
          response:
            Lithic::CardAuthorizationChallengeResponseWebhookEvent::Response::OrSymbol,
          transaction_token: T.nilable(String),
          event_type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The token of the card associated with the challenge
        card_token:,
        # The method used to deliver the challenge to the cardholder
        challenge_method:,
        # The timestamp of when the challenge was completed
        completed:,
        # The timestamp of when the challenge was created
        created:,
        # Globally unique identifier for the event
        event_token:,
        # The cardholder's response to the challenge
        response:,
        # The token of the transaction associated with the authorization event being
        # challenged
        transaction_token:,
        # Event type
        event_type: :"card_authorization.challenge_response"
      )
      end

      sig do
        override.returns(
          {
            card_token: T.nilable(String),
            challenge_method:
              Lithic::CardAuthorizationChallengeResponseWebhookEvent::ChallengeMethod::TaggedSymbol,
            completed: T.nilable(Time),
            created: Time,
            event_token: String,
            event_type: Symbol,
            response:
              Lithic::CardAuthorizationChallengeResponseWebhookEvent::Response::TaggedSymbol,
            transaction_token: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # The method used to deliver the challenge to the cardholder
      module ChallengeMethod
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::CardAuthorizationChallengeResponseWebhookEvent::ChallengeMethod
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SMS =
          T.let(
            :SMS,
            Lithic::CardAuthorizationChallengeResponseWebhookEvent::ChallengeMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::CardAuthorizationChallengeResponseWebhookEvent::ChallengeMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The cardholder's response to the challenge
      module Response
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::CardAuthorizationChallengeResponseWebhookEvent::Response
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVE =
          T.let(
            :APPROVE,
            Lithic::CardAuthorizationChallengeResponseWebhookEvent::Response::TaggedSymbol
          )
        DECLINE =
          T.let(
            :DECLINE,
            Lithic::CardAuthorizationChallengeResponseWebhookEvent::Response::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::CardAuthorizationChallengeResponseWebhookEvent::Response::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
