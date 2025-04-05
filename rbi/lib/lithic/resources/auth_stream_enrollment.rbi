# typed: strong

module Lithic
  module Resources
    class AuthStreamEnrollment
      # Retrieve the ASA HMAC secret key. If one does not exist for your program yet,
      # calling this endpoint will create one for you. The headers (which you can use to
      # verify webhooks) will begin appearing shortly after calling this endpoint for
      # the first time. See
      # [this page](https://docs.lithic.com/docs/auth-stream-access-asa#asa-webhook-verification)
      # for more detail about verifying ASA webhooks.
      sig do
        params(request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)))
          .returns(Lithic::Models::AuthStreamSecret)
      end
      def retrieve_secret(request_options: {}); end

      # Generate a new ASA HMAC secret key. The old ASA HMAC secret key will be
      # deactivated 24 hours after a successful request to this endpoint. Make a
      # [`GET /auth_stream/secret`](https://docs.lithic.com/reference/getauthstreamsecret)
      # request to retrieve the new secret key.
      sig do
        params(request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))).void
      end
      def rotate_secret(request_options: {}); end

      # @api private
      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
