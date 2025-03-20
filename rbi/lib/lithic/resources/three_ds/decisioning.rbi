# typed: strong

module Lithic
  module Resources
    class ThreeDS
      class Decisioning
        # Card program's response to a 3DS Challenge Request (CReq)
        sig do
          params(
            token: String,
            challenge_response: Lithic::Models::ThreeDS::ChallengeResult::OrSymbol,
            request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .void
        end
        def challenge_response(
          # Globally unique identifier for the 3DS authentication. This token is sent as
          #   part of the initial 3DS Decisioning Request and as part of the 3DS Challenge
          #   Event in the [ThreeDSAuthentication](#/components/schemas/ThreeDSAuthentication)
          #   object
          token:,
          # Whether the Cardholder has Approved or Declined the issued Challenge
          challenge_response:,
          request_options: {}
        )
        end

        # Retrieve the 3DS Decisioning HMAC secret key. If one does not exist for your
        #   program yet, calling this endpoint will create one for you. The headers (which
        #   you can use to verify 3DS Decisioning requests) will begin appearing shortly
        #   after calling this endpoint for the first time. See
        #   [this page](https://docs.lithic.com/docs/3ds-decisioning#3ds-decisioning-hmac-secrets)
        #   for more detail about verifying 3DS Decisioning requests.
        sig do
          params(request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])))
            .returns(Lithic::Models::ThreeDS::DecisioningRetrieveSecretResponse)
        end
        def retrieve_secret(request_options: {})
        end

        # Generate a new 3DS Decisioning HMAC secret key. The old secret key will be
        #   deactivated 24 hours after a successful request to this endpoint. Make a
        #   [`GET /three_ds_decisioning/secret`](https://docs.lithic.com/reference/getthreedsdecisioningsecret)
        #   request to retrieve the new secret key.
        sig do
          params(request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))).void
        end
        def rotate_secret(request_options: {})
        end

        sig { params(client: Lithic::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
