# frozen_string_literal: true

module Lithic
  module Resources
    class CardAuthorizations
      # Some parameter documentations has been truncated, see
      # {Lithic::Models::CardAuthorizationChallengeResponseParams} for more details.
      #
      # Card program's response to Authorization Challenge. Programs that have
      # Authorization Challenges configured as Out of Band receive a
      # [card_authorization.challenge](https://docs.lithic.com/reference/post_card-authorization-challenge)
      # webhook when an authorization attempt triggers a challenge. The card program
      # should respond using this endpoint after the cardholder completes the challenge.
      #
      # @overload challenge_response(event_token, response:, request_options: {})
      #
      # @param event_token [String] Globally unique identifier for the authorization event that triggered the challe
      #
      # @param response [Symbol, Lithic::Models::CardAuthorizationChallengeResponseParams::Response] Whether the cardholder has approved or declined the issued challenge
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Lithic::Models::CardAuthorizationChallengeResponseParams
      def challenge_response(event_token, params)
        parsed, options = Lithic::CardAuthorizationChallengeResponseParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/card_authorizations/%1$s/challenge_response", event_token],
          body: parsed,
          model: NilClass,
          options: options
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
