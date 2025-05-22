# frozen_string_literal: true

module Lithic
  module Resources
    class ThreeDS
      class Decisioning
        # Some parameter documentations has been truncated, see
        # {Lithic::Models::ThreeDS::DecisioningChallengeResponseParams} for more details.
        #
        # Card program's response to a 3DS Challenge Request (CReq)
        #
        # @overload challenge_response(token:, challenge_response:, request_options: {})
        #
        # @param token [String] Globally unique identifier for the 3DS authentication. This token is sent as par
        #
        # @param challenge_response [Symbol, Lithic::Models::ThreeDS::ChallengeResult] Whether the Cardholder has Approved or Declined the issued Challenge
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Lithic::Models::ThreeDS::DecisioningChallengeResponseParams
        def challenge_response(params)
          parsed, options = Lithic::ThreeDS::DecisioningChallengeResponseParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/three_ds_decisioning/challenge_response",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Retrieve the 3DS Decisioning HMAC secret key. If one does not exist for your
        # program yet, calling this endpoint will create one for you. The headers (which
        # you can use to verify 3DS Decisioning requests) will begin appearing shortly
        # after calling this endpoint for the first time. See
        # [this page](https://docs.lithic.com/docs/3ds-decisioning#3ds-decisioning-hmac-secrets)
        # for more detail about verifying 3DS Decisioning requests.
        #
        # @overload retrieve_secret(request_options: {})
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::ThreeDS::DecisioningRetrieveSecretResponse]
        #
        # @see Lithic::Models::ThreeDS::DecisioningRetrieveSecretParams
        def retrieve_secret(params = {})
          @client.request(
            method: :get,
            path: "v1/three_ds_decisioning/secret",
            model: Lithic::Models::ThreeDS::DecisioningRetrieveSecretResponse,
            options: params[:request_options]
          )
        end

        # Generate a new 3DS Decisioning HMAC secret key. The old secret key will be
        # deactivated 24 hours after a successful request to this endpoint. Make a
        # [`GET /three_ds_decisioning/secret`](https://docs.lithic.com/reference/getthreedsdecisioningsecret)
        # request to retrieve the new secret key.
        #
        # @overload rotate_secret(request_options: {})
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Lithic::Models::ThreeDS::DecisioningRotateSecretParams
        def rotate_secret(params = {})
          @client.request(
            method: :post,
            path: "v1/three_ds_decisioning/secret/rotate",
            model: NilClass,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Lithic::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
