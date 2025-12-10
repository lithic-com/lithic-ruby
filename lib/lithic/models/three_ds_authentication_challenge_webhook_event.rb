# frozen_string_literal: true

module Lithic
  module Models
    class ThreeDSAuthenticationChallengeWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute authentication_object
      #   Represents a 3DS authentication
      #
      #   @return [Lithic::Models::ThreeDSAuthentication]
      required :authentication_object, -> { Lithic::ThreeDSAuthentication }

      # @!attribute challenge
      #   Represents a challenge object for 3DS authentication
      #
      #   @return [Lithic::Models::ThreeDSAuthenticationChallengeWebhookEvent::Challenge]
      required :challenge, -> { Lithic::ThreeDSAuthenticationChallengeWebhookEvent::Challenge }

      # @!attribute event_type
      #
      #   @return [Symbol, :"three_ds_authentication.challenge"]
      required :event_type, const: :"three_ds_authentication.challenge"

      # @!method initialize(authentication_object:, challenge:, event_type: :"three_ds_authentication.challenge")
      #   @param authentication_object [Lithic::Models::ThreeDSAuthentication] Represents a 3DS authentication
      #
      #   @param challenge [Lithic::Models::ThreeDSAuthenticationChallengeWebhookEvent::Challenge] Represents a challenge object for 3DS authentication
      #
      #   @param event_type [Symbol, :"three_ds_authentication.challenge"]

      # @see Lithic::Models::ThreeDSAuthenticationChallengeWebhookEvent#challenge
      class Challenge < Lithic::Internal::Type::BaseModel
        # @!attribute challenge_method_type
        #   The type of challenge method issued to the cardholder
        #
        #   @return [Symbol, Lithic::Models::ThreeDSAuthenticationChallengeWebhookEvent::Challenge::ChallengeMethodType]
        required :challenge_method_type,
                 enum: -> { Lithic::ThreeDSAuthenticationChallengeWebhookEvent::Challenge::ChallengeMethodType }

        # @!attribute expiry_time
        #   ISO-8601 time at which the challenge expires
        #
        #   @return [Time]
        required :expiry_time, Time

        # @!attribute start_time
        #   ISO-8601 time at which the challenge has started
        #
        #   @return [Time]
        required :start_time, Time

        # @!attribute app_requestor_url
        #   Fully qualified app URL of the merchant app. This should be used to redirect the
        #   cardholder back to the merchant app after completing an app-based challenge.
        #   This URL will only be populated if the 3DS Requestor App is provided to the 3DS
        #   SDK.
        #
        #   @return [String, nil]
        optional :app_requestor_url, String, nil?: true

        # @!method initialize(challenge_method_type:, expiry_time:, start_time:, app_requestor_url: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::ThreeDSAuthenticationChallengeWebhookEvent::Challenge} for more
        #   details.
        #
        #   Represents a challenge object for 3DS authentication
        #
        #   @param challenge_method_type [Symbol, Lithic::Models::ThreeDSAuthenticationChallengeWebhookEvent::Challenge::ChallengeMethodType] The type of challenge method issued to the cardholder
        #
        #   @param expiry_time [Time] ISO-8601 time at which the challenge expires
        #
        #   @param start_time [Time] ISO-8601 time at which the challenge has started
        #
        #   @param app_requestor_url [String, nil] Fully qualified app URL of the merchant app. This should be used to redirect the

        # The type of challenge method issued to the cardholder
        #
        # @see Lithic::Models::ThreeDSAuthenticationChallengeWebhookEvent::Challenge#challenge_method_type
        module ChallengeMethodType
          extend Lithic::Internal::Type::Enum

          OUT_OF_BAND = :OUT_OF_BAND

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
