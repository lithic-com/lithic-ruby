# typed: strong

module Lithic
  module Models
    class ThreeDSAuthenticationChallengeWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::ThreeDSAuthenticationChallengeWebhookEvent,
            Lithic::Internal::AnyHash
          )
        end

      # Represents a 3DS authentication
      sig { returns(Lithic::ThreeDSAuthentication) }
      attr_reader :authentication_object

      sig do
        params(
          authentication_object: Lithic::ThreeDSAuthentication::OrHash
        ).void
      end
      attr_writer :authentication_object

      # Represents a challenge object for 3DS authentication
      sig do
        returns(Lithic::ThreeDSAuthenticationChallengeWebhookEvent::Challenge)
      end
      attr_reader :challenge

      sig do
        params(
          challenge:
            Lithic::ThreeDSAuthenticationChallengeWebhookEvent::Challenge::OrHash
        ).void
      end
      attr_writer :challenge

      sig { returns(Symbol) }
      attr_accessor :event_type

      sig do
        params(
          authentication_object: Lithic::ThreeDSAuthentication::OrHash,
          challenge:
            Lithic::ThreeDSAuthenticationChallengeWebhookEvent::Challenge::OrHash,
          event_type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Represents a 3DS authentication
        authentication_object:,
        # Represents a challenge object for 3DS authentication
        challenge:,
        event_type: :"three_ds_authentication.challenge"
      )
      end

      sig do
        override.returns(
          {
            authentication_object: Lithic::ThreeDSAuthentication,
            challenge:
              Lithic::ThreeDSAuthenticationChallengeWebhookEvent::Challenge,
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
              Lithic::ThreeDSAuthenticationChallengeWebhookEvent::Challenge,
              Lithic::Internal::AnyHash
            )
          end

        # The type of challenge method issued to the cardholder
        sig do
          returns(
            Lithic::ThreeDSAuthenticationChallengeWebhookEvent::Challenge::ChallengeMethodType::TaggedSymbol
          )
        end
        attr_accessor :challenge_method_type

        # ISO-8601 time at which the challenge expires
        sig { returns(Time) }
        attr_accessor :expiry_time

        # ISO-8601 time at which the challenge has started
        sig { returns(Time) }
        attr_accessor :start_time

        # Fully qualified app URL of the merchant app. This should be used to redirect the
        # cardholder back to the merchant app after completing an app-based challenge.
        # This URL will only be populated if the 3DS Requestor App is provided to the 3DS
        # SDK.
        sig { returns(T.nilable(String)) }
        attr_accessor :app_requestor_url

        # Represents a challenge object for 3DS authentication
        sig do
          params(
            challenge_method_type:
              Lithic::ThreeDSAuthenticationChallengeWebhookEvent::Challenge::ChallengeMethodType::OrSymbol,
            expiry_time: Time,
            start_time: Time,
            app_requestor_url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of challenge method issued to the cardholder
          challenge_method_type:,
          # ISO-8601 time at which the challenge expires
          expiry_time:,
          # ISO-8601 time at which the challenge has started
          start_time:,
          # Fully qualified app URL of the merchant app. This should be used to redirect the
          # cardholder back to the merchant app after completing an app-based challenge.
          # This URL will only be populated if the 3DS Requestor App is provided to the 3DS
          # SDK.
          app_requestor_url: nil
        )
        end

        sig do
          override.returns(
            {
              challenge_method_type:
                Lithic::ThreeDSAuthenticationChallengeWebhookEvent::Challenge::ChallengeMethodType::TaggedSymbol,
              expiry_time: Time,
              start_time: Time,
              app_requestor_url: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # The type of challenge method issued to the cardholder
        module ChallengeMethodType
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::ThreeDSAuthenticationChallengeWebhookEvent::Challenge::ChallengeMethodType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OUT_OF_BAND =
            T.let(
              :OUT_OF_BAND,
              Lithic::ThreeDSAuthenticationChallengeWebhookEvent::Challenge::ChallengeMethodType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::ThreeDSAuthenticationChallengeWebhookEvent::Challenge::ChallengeMethodType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
