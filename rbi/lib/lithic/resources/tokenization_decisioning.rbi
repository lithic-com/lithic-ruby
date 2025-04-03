# typed: strong

module Lithic
  module Resources
    class TokenizationDecisioning
      # Retrieve the Tokenization Decisioning secret key. If one does not exist your
      #   program yet, calling this endpoint will create one for you. The headers of the
      #   Tokenization Decisioning request will contain a hmac signature which you can use
      #   to verify requests originate from Lithic. See
      #   [this page](https://docs.lithic.com/docs/events-api#verifying-webhooks) for more
      #   detail about verifying Tokenization Decisioning requests.
      sig do
        params(request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::Util::AnyHash)))
          .returns(Lithic::Models::TokenizationSecret)
      end
      def retrieve_secret(request_options: {})
      end

      # Generate a new Tokenization Decisioning secret key. The old Tokenization
      #   Decisioning secret key will be deactivated 24 hours after a successful request
      #   to this endpoint.
      sig do
        params(request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::Util::AnyHash)))
          .returns(Lithic::Models::TokenizationDecisioningRotateSecretResponse)
      end
      def rotate_secret(request_options: {})
      end

      # @api private
      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
