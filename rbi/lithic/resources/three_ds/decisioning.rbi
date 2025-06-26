# typed: strong

module Lithic
  module Resources
    class ThreeDS
      class Decisioning
        # Card program's response to a 3DS Challenge Request. Challenge Request is emitted
        # as a webhook
        # [three_ds_authentication.challenge](https://docs.lithic.com/reference/post_three-ds-authentication-challenge)
        # and your Card Program needs to be configured with Out of Band (OOB) Challenges
        # in order to receive it (see https://docs.lithic.com/docs/3ds-challenge-flow for
        # more information).
        sig do
          params(
            token: String,
            challenge_response: Lithic::ThreeDS::ChallengeResult::OrSymbol,
            request_options: Lithic::RequestOptions::OrHash
          ).void
        end
        def challenge_response(
          # Globally unique identifier for 3DS Authentication that resulted in
          # PENDING_CHALLENGE authentication result.
          token:,
          # Whether the Cardholder has approved or declined the issued Challenge
          challenge_response:,
          request_options: {}
        )
        end

        # Retrieve the 3DS Decisioning HMAC secret key. If one does not exist for your
        # program yet, calling this endpoint will create one for you. The headers (which
        # you can use to verify 3DS Decisioning requests) will begin appearing shortly
        # after calling this endpoint for the first time. See
        # [this page](https://docs.lithic.com/docs/3ds-decisioning#3ds-decisioning-hmac-secrets)
        # for more detail about verifying 3DS Decisioning requests.
        sig do
          params(request_options: Lithic::RequestOptions::OrHash).returns(
            Lithic::Models::ThreeDS::DecisioningRetrieveSecretResponse
          )
        end
        def retrieve_secret(request_options: {})
        end

        # Generate a new 3DS Decisioning HMAC secret key. The old secret key will be
        # deactivated 24 hours after a successful request to this endpoint. Make a
        # [`GET /three_ds_decisioning/secret`](https://docs.lithic.com/reference/getthreedsdecisioningsecret)
        # request to retrieve the new secret key.
        sig { params(request_options: Lithic::RequestOptions::OrHash).void }
        def rotate_secret(request_options: {})
        end

        # @api private
        sig { params(client: Lithic::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
