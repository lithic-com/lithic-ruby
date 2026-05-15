# typed: strong

module Lithic
  module Resources
    class CardAuthorizations
      # Card program's response to Authorization Challenge. Programs that have
      # Authorization Challenges configured as Out of Band receive a
      # [card_authorization.challenge](https://docs.lithic.com/reference/post_card-authorization-challenge)
      # webhook when an authorization attempt triggers a challenge. The card program
      # should respond using this endpoint after the cardholder completes the challenge.
      sig do
        params(
          event_token: String,
          response:
            Lithic::CardAuthorizationChallengeResponseParams::Response::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).void
      end
      def challenge_response(
        # Globally unique identifier for the authorization event that triggered the
        # challenge
        event_token,
        # Whether the cardholder has approved or declined the issued challenge
        response:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
