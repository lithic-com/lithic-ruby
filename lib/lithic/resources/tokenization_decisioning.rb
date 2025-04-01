# frozen_string_literal: true

module Lithic
  module Resources
    class TokenizationDecisioning
      # Retrieve the Tokenization Decisioning secret key. If one does not exist your
      #   program yet, calling this endpoint will create one for you. The headers of the
      #   Tokenization Decisioning request will contain a hmac signature which you can use
      #   to verify requests originate from Lithic. See
      #   [this page](https://docs.lithic.com/docs/events-api#verifying-webhooks) for more
      #   detail about verifying Tokenization Decisioning requests.
      #
      # @overload retrieve_secret(request_options: {})
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::TokenizationSecret]
      #
      # @see Lithic::Models::TokenizationDecisioningRetrieveSecretParams
      def retrieve_secret(params = {})
        @client.request(
          method: :get,
          path: "v1/tokenization_decisioning/secret",
          model: Lithic::Models::TokenizationSecret,
          options: params[:request_options]
        )
      end

      # Generate a new Tokenization Decisioning secret key. The old Tokenization
      #   Decisioning secret key will be deactivated 24 hours after a successful request
      #   to this endpoint.
      #
      # @overload rotate_secret(request_options: {})
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::TokenizationDecisioningRotateSecretResponse]
      #
      # @see Lithic::Models::TokenizationDecisioningRotateSecretParams
      def rotate_secret(params = {})
        @client.request(
          method: :post,
          path: "v1/tokenization_decisioning/secret/rotate",
          model: Lithic::Models::TokenizationDecisioningRotateSecretResponse,
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
