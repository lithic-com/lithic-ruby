# frozen_string_literal: true

module Lithic
  module Resources
    class ThreeDS
      class Decisioning
        # Card program's response to a 3DS Challenge Request (CReq)
        #
        # @param params [Lithic::Models::ThreeDS::DecisioningChallengeResponseParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :token Globally unique identifier for the 3DS authentication. This token is sent as
        #     part of the initial 3DS Decisioning Request and as part of the 3DS Challenge
        #     Event in the [ThreeDSAuthentication](#/components/schemas/ThreeDSAuthentication)
        #     object
        #
        #   @option params [Symbol, Lithic::Models::ThreeDS::ChallengeResult] :challenge_response Whether the Cardholder has Approved or Declined the issued Challenge
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        def challenge_response(params)
          parsed, options = Lithic::Models::ThreeDS::DecisioningChallengeResponseParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/three_ds_decisioning/challenge_response",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Retrieve the 3DS Decisioning HMAC secret key. If one does not exist for your
        #   program yet, calling this endpoint will create one for you. The headers (which
        #   you can use to verify 3DS Decisioning requests) will begin appearing shortly
        #   after calling this endpoint for the first time. See
        #   [this page](https://docs.lithic.com/docs/3ds-decisioning#3ds-decisioning-hmac-secrets)
        #   for more detail about verifying 3DS Decisioning requests.
        #
        # @param params [Lithic::Models::ThreeDS::DecisioningRetrieveSecretParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::ThreeDS::DecisioningRetrieveSecretResponse]
        def retrieve_secret(params = {})
          @client.request(
            method: :get,
            path: "v1/three_ds_decisioning/secret",
            model: Lithic::Models::ThreeDS::DecisioningRetrieveSecretResponse,
            options: params[:request_options]
          )
        end

        # Generate a new 3DS Decisioning HMAC secret key. The old secret key will be
        #   deactivated 24 hours after a successful request to this endpoint. Make a
        #   [`GET /three_ds_decisioning/secret`](https://docs.lithic.com/reference/getthreedsdecisioningsecret)
        #   request to retrieve the new secret key.
        #
        # @param params [Lithic::Models::ThreeDS::DecisioningRotateSecretParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        def rotate_secret(params = {})
          @client.request(
            method: :post,
            path: "v1/three_ds_decisioning/secret/rotate",
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Simulates a 3DS authentication challenge request from the payment network as if
        #   it came from an ACS. Requires being configured for 3DS Customer Decisioning, and
        #   enrolled with Lithic's Challenge solution.
        #
        # @param params [Lithic::Models::ThreeDS::DecisioningSimulateChallengeParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :token A unique token returned as part of a /v1/three_ds_authentication/simulate call
        #     that responded with a CHALLENGE_REQUESTED status.
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::ThreeDS::DecisioningSimulateChallengeResponse]
        def simulate_challenge(params = {})
          parsed, options = Lithic::Models::ThreeDS::DecisioningSimulateChallengeParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/three_ds_decisioning/simulate/challenge",
            body: parsed,
            model: Lithic::Models::ThreeDS::DecisioningSimulateChallengeResponse,
            options: options
          )
        end

        # Endpoint for responding to a 3DS Challenge initiated by a call to
        #   /v1/three_ds_decisioning/simulate/challenge
        #
        # @param params [Lithic::Models::ThreeDS::DecisioningSimulateChallengeResponseParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :token Globally unique identifier for the 3DS authentication. This token is sent as
        #     part of the initial 3DS Decisioning Request and as part of the 3DS Challenge
        #     Event in the [ThreeDSAuthentication](#/components/schemas/ThreeDSAuthentication)
        #     object
        #
        #   @option params [Symbol, Lithic::Models::ThreeDS::ChallengeResult] :challenge_response Whether the Cardholder has Approved or Declined the issued Challenge
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        def simulate_challenge_response(params)
          parsed, options =
            Lithic::Models::ThreeDS::DecisioningSimulateChallengeResponseParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/three_ds_decisioning/simulate/challenge_response",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # @param client [Lithic::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
