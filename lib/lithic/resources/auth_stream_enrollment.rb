# frozen_string_literal: true

module Lithic
  module Resources
    class AuthStreamEnrollment
      # Retrieve the ASA HMAC secret key. If one does not exist for your program yet,
      #   calling this endpoint will create one for you. The headers (which you can use to
      #   verify webhooks) will begin appearing shortly after calling this endpoint for
      #   the first time. See
      #   [this page](https://docs.lithic.com/docs/auth-stream-access-asa#asa-webhook-verification)
      #   for more detail about verifying ASA webhooks.
      #
      # @param params [Lithic::Models::AuthStreamEnrollmentRetrieveSecretParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::AuthStreamSecret]
      #
      # @see Lithic::Models::AuthStreamEnrollmentRetrieveSecretParams
      def retrieve_secret(params = {})
        @client.request(
          method: :get,
          path: "v1/auth_stream/secret",
          model: Lithic::Models::AuthStreamSecret,
          options: params[:request_options]
        )
      end

      # Generate a new ASA HMAC secret key. The old ASA HMAC secret key will be
      #   deactivated 24 hours after a successful request to this endpoint. Make a
      #   [`GET /auth_stream/secret`](https://docs.lithic.com/reference/getauthstreamsecret)
      #   request to retrieve the new secret key.
      #
      # @param params [Lithic::Models::AuthStreamEnrollmentRotateSecretParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [nil]
      #
      # @see Lithic::Models::AuthStreamEnrollmentRotateSecretParams
      def rotate_secret(params = {})
        @client.request(
          method: :post,
          path: "v1/auth_stream/secret/rotate",
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
