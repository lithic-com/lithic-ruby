# frozen_string_literal: true

module Lithic
  module Resources
    class Tokenizations
      # Get tokenization
      #
      # @param tokenization_token [String] Tokenization token
      #
      # @param params [Lithic::Models::TokenizationRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::TokenizationRetrieveResponse]
      def retrieve(tokenization_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/tokenizations/%1$s", tokenization_token],
          model: Lithic::Models::TokenizationRetrieveResponse,
          options: params[:request_options]
        )
      end

      # List card tokenizations
      #
      # @param params [Lithic::Models::TokenizationListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_token Filters for tokenizations associated with a specific account.
      #
      #   @option params [Date] :begin_ Filter for tokenizations created after this date.
      #
      #   @option params [String] :card_token Filters for tokenizations associated with a specific card.
      #
      #   @option params [Date] :end_ Filter for tokenizations created before this date.
      #
      #   @option params [String] :ending_before A cursor representing an item's token before which a page of results should end.
      #     Used to retrieve the previous page of results before this item.
      #
      #   @option params [Integer] :page_size Page size (for pagination).
      #
      #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
      #     begin. Used to retrieve the next page of results after this item.
      #
      #   @option params [Symbol, Lithic::Models::TokenizationListParams::TokenizationChannel] :tokenization_channel Filter for tokenizations by tokenization channel. If this is not specified, only
      #     DIGITAL_WALLET tokenizations will be returned.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::CursorPage<Lithic::Models::Tokenization>]
      def list(params = {})
        parsed, options = Lithic::Models::TokenizationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/tokenizations",
          query: parsed,
          page: Lithic::CursorPage,
          model: Lithic::Models::Tokenization,
          options: options
        )
      end

      # This endpoint is used to ask the card network to activate a tokenization. A
      #   successful response indicates that the request was successfully delivered to the
      #   card network. When the card network activates the tokenization, the state will
      #   be updated and a tokenization.updated event will be sent. The endpoint may only
      #   be used on digital wallet tokenizations with status `INACTIVE`,
      #   `PENDING_ACTIVATION`, or `PENDING_2FA`. This will put the tokenization in an
      #   active state, and transactions will be allowed. Reach out at
      #   [lithic.com/contact](https://lithic.com/contact) for more information.
      #
      # @param tokenization_token [String] Tokenization token
      #
      # @param params [Lithic::Models::TokenizationActivateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [nil]
      def activate(tokenization_token, params = {})
        @client.request(
          method: :post,
          path: ["v1/tokenizations/%1$s/activate", tokenization_token],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # This endpoint is used to ask the card network to deactivate a tokenization. A
      #   successful response indicates that the request was successfully delivered to the
      #   card network. When the card network deactivates the tokenization, the state will
      #   be updated and a tokenization.updated event will be sent. Authorizations
      #   attempted with a deactivated tokenization will be blocked and will not be
      #   forwarded to Lithic from the network. Deactivating the token is a permanent
      #   operation. If the target is a digital wallet tokenization, it will be removed
      #   from its device. Reach out at [lithic.com/contact](https://lithic.com/contact)
      #   for more information.
      #
      # @param tokenization_token [String] Tokenization token
      #
      # @param params [Lithic::Models::TokenizationDeactivateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [nil]
      def deactivate(tokenization_token, params = {})
        @client.request(
          method: :post,
          path: ["v1/tokenizations/%1$s/deactivate", tokenization_token],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # This endpoint is used to ask the card network to pause a tokenization. A
      #   successful response indicates that the request was successfully delivered to the
      #   card network. When the card network pauses the tokenization, the state will be
      #   updated and a tokenization.updated event will be sent. The endpoint may only be
      #   used on tokenizations with status `ACTIVE`. A paused token will prevent
      #   merchants from sending authorizations, and is a temporary status that can be
      #   changed. Reach out at [lithic.com/contact](https://lithic.com/contact) for more
      #   information.
      #
      # @param tokenization_token [String] Tokenization token
      #
      # @param params [Lithic::Models::TokenizationPauseParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [nil]
      def pause(tokenization_token, params = {})
        @client.request(
          method: :post,
          path: ["v1/tokenizations/%1$s/pause", tokenization_token],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # This endpoint is used to ask the card network to send another activation code to
      #   a cardholder that has already tried tokenizing a card. A successful response
      #   indicates that the request was successfully delivered to the card network. The
      #   endpoint may only be used on Mastercard digital wallet tokenizations with status
      #   `INACTIVE`, `PENDING_ACTIVATION`, or `PENDING_2FA`. The network will send a new
      #   activation code to the one of the contact methods provided in the initial
      #   tokenization flow. If a user fails to enter the code correctly 3 times, the
      #   contact method will not be eligible for resending the activation code, and the
      #   cardholder must restart the provision process. Reach out at
      #   [lithic.com/contact](https://lithic.com/contact) for more information.
      #
      # @param tokenization_token [String] Tokenization token
      #
      # @param params [Lithic::Models::TokenizationResendActivationCodeParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, Lithic::Models::TokenizationResendActivationCodeParams::ActivationMethodType] :activation_method_type The communication method that the user has selected to use to receive the
      #     authentication code. Supported Values: Sms = "TEXT_TO_CARDHOLDER_NUMBER". Email
      #     = "EMAIL_TO_CARDHOLDER_ADDRESS"
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [nil]
      def resend_activation_code(tokenization_token, params = {})
        parsed, options = Lithic::Models::TokenizationResendActivationCodeParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/tokenizations/%1$s/resend_activation_code", tokenization_token],
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # This endpoint is used to simulate a card's tokenization in the Digital Wallet
      #   and merchant tokenization ecosystem.
      #
      # @param params [Lithic::Models::TokenizationSimulateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :cvv The three digit cvv for the card.
      #
      #   @option params [String] :expiration_date The expiration date of the card in 'MM/YY' format.
      #
      #   @option params [String] :pan The sixteen digit card number.
      #
      #   @option params [Symbol, Lithic::Models::TokenizationSimulateParams::TokenizationSource] :tokenization_source The source of the tokenization request.
      #
      #   @option params [Integer] :account_score The account score (1-5) that represents how the Digital Wallet's view on how
      #     reputable an end user's account is.
      #
      #   @option params [Integer] :device_score The device score (1-5) that represents how the Digital Wallet's view on how
      #     reputable an end user's device is.
      #
      #   @option params [String] :entity Optional field to specify the token requestor name for a merchant token
      #     simulation. Ignored when tokenization_source is not MERCHANT.
      #
      #   @option params [Symbol, Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision] :wallet_recommended_decision The decision that the Digital Wallet's recommend
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::TokenizationSimulateResponse]
      def simulate(params)
        parsed, options = Lithic::Models::TokenizationSimulateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/simulate/tokenizations",
          body: parsed,
          model: Lithic::Models::TokenizationSimulateResponse,
          options: options
        )
      end

      # This endpoint is used to ask the card network to unpause a tokenization. A
      #   successful response indicates that the request was successfully delivered to the
      #   card network. When the card network unpauses the tokenization, the state will be
      #   updated and a tokenization.updated event will be sent. The endpoint may only be
      #   used on tokenizations with status `PAUSED`. This will put the tokenization in an
      #   active state, and transactions may resume. Reach out at
      #   [lithic.com/contact](https://lithic.com/contact) for more information.
      #
      # @param tokenization_token [String] Tokenization token
      #
      # @param params [Lithic::Models::TokenizationUnpauseParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [nil]
      def unpause(tokenization_token, params = {})
        @client.request(
          method: :post,
          path: ["v1/tokenizations/%1$s/unpause", tokenization_token],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # This endpoint is used update the digital card art for a digital wallet
      #   tokenization. A successful response indicates that the card network has updated
      #   the tokenization's art, and the tokenization's `digital_cart_art_token` field
      #   was updated. The endpoint may not be used on tokenizations with status
      #   `DEACTIVATED`. Note that this updates the art for one specific tokenization, not
      #   all tokenizations for a card. New tokenizations for a card will be created with
      #   the art referenced in the card object's `digital_card_art_token` field. Reach
      #   out at [lithic.com/contact](https://lithic.com/contact) for more information.
      #
      # @param tokenization_token [String] Tokenization token
      #
      # @param params [Lithic::Models::TokenizationUpdateDigitalCardArtParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :digital_card_art_token Specifies the digital card art to be displayed in the user’s digital wallet for
      #     a tokenization. This artwork must be approved by the network and configured by
      #     Lithic to use. See
      #     [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::TokenizationUpdateDigitalCardArtResponse]
      def update_digital_card_art(tokenization_token, params = {})
        parsed, options = Lithic::Models::TokenizationUpdateDigitalCardArtParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/tokenizations/%1$s/update_digital_card_art", tokenization_token],
          body: parsed,
          model: Lithic::Models::TokenizationUpdateDigitalCardArtResponse,
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
