# frozen_string_literal: true

module Lithic
  module Resources
    class Tokenizations
      # Get tokenization
      #
      # @overload retrieve(tokenization_token, request_options: {})
      #
      # @param tokenization_token [String] Tokenization token
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::Tokenization]
      #
      # @see Lithic::Models::TokenizationRetrieveParams
      def retrieve(tokenization_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/tokenizations/%1$s", tokenization_token],
          model: Lithic::Tokenization,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::TokenizationListParams} for more details.
      #
      # List card tokenizations
      #
      # @overload list(account_token: nil, begin_: nil, card_token: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, tokenization_channel: nil, request_options: {})
      #
      # @param account_token [String] Filters for tokenizations associated with a specific account.
      #
      # @param begin_ [Date] Filter for tokenizations created after this date.
      #
      # @param card_token [String] Filters for tokenizations associated with a specific card.
      #
      # @param end_ [Date] Filter for tokenizations created before this date.
      #
      # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      #
      # @param page_size [Integer] Page size (for pagination).
      #
      # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      #
      # @param tokenization_channel [Symbol, Lithic::Models::TokenizationListParams::TokenizationChannel] Filter for tokenizations by tokenization channel. If this is not specified, only
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::Tokenization>]
      #
      # @see Lithic::Models::TokenizationListParams
      def list(params = {})
        parsed, options = Lithic::TokenizationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/tokenizations",
          query: parsed.transform_keys(begin_: "begin", end_: "end"),
          page: Lithic::Internal::CursorPage,
          model: Lithic::Tokenization,
          options: options
        )
      end

      # This endpoint is used to ask the card network to activate a tokenization. A
      # successful response indicates that the request was successfully delivered to the
      # card network. When the card network activates the tokenization, the state will
      # be updated and a tokenization.updated event will be sent. The endpoint may only
      # be used on digital wallet tokenizations with status `INACTIVE`,
      # `PENDING_ACTIVATION`, or `PENDING_2FA`. This will put the tokenization in an
      # active state, and transactions will be allowed. Reach out at
      # [lithic.com/contact](https://lithic.com/contact) for more information.
      #
      # @overload activate(tokenization_token, request_options: {})
      #
      # @param tokenization_token [String] Tokenization token
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Lithic::Models::TokenizationActivateParams
      def activate(tokenization_token, params = {})
        @client.request(
          method: :post,
          path: ["v1/tokenizations/%1$s/activate", tokenization_token],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # This endpoint is used to ask the card network to deactivate a tokenization. A
      # successful response indicates that the request was successfully delivered to the
      # card network. When the card network deactivates the tokenization, the state will
      # be updated and a tokenization.updated event will be sent. Authorizations
      # attempted with a deactivated tokenization will be blocked and will not be
      # forwarded to Lithic from the network. Deactivating the token is a permanent
      # operation. If the target is a digital wallet tokenization, it will be removed
      # from its device. Reach out at [lithic.com/contact](https://lithic.com/contact)
      # for more information.
      #
      # @overload deactivate(tokenization_token, request_options: {})
      #
      # @param tokenization_token [String] Tokenization token
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Lithic::Models::TokenizationDeactivateParams
      def deactivate(tokenization_token, params = {})
        @client.request(
          method: :post,
          path: ["v1/tokenizations/%1$s/deactivate", tokenization_token],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # This endpoint is used to ask the card network to pause a tokenization. A
      # successful response indicates that the request was successfully delivered to the
      # card network. When the card network pauses the tokenization, the state will be
      # updated and a tokenization.updated event will be sent. The endpoint may only be
      # used on tokenizations with status `ACTIVE`. A paused token will prevent
      # merchants from sending authorizations, and is a temporary status that can be
      # changed. Reach out at [lithic.com/contact](https://lithic.com/contact) for more
      # information.
      #
      # @overload pause(tokenization_token, request_options: {})
      #
      # @param tokenization_token [String] Tokenization token
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Lithic::Models::TokenizationPauseParams
      def pause(tokenization_token, params = {})
        @client.request(
          method: :post,
          path: ["v1/tokenizations/%1$s/pause", tokenization_token],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::TokenizationResendActivationCodeParams} for more details.
      #
      # This endpoint is used to ask the card network to send another activation code to
      # a cardholder that has already tried tokenizing a card. A successful response
      # indicates that the request was successfully delivered to the card network. The
      # endpoint may only be used on Mastercard digital wallet tokenizations with status
      # `INACTIVE`, `PENDING_ACTIVATION`, or `PENDING_2FA`. The network will send a new
      # activation code to the one of the contact methods provided in the initial
      # tokenization flow. If a user fails to enter the code correctly 3 times, the
      # contact method will not be eligible for resending the activation code, and the
      # cardholder must restart the provision process. Reach out at
      # [lithic.com/contact](https://lithic.com/contact) for more information.
      #
      # @overload resend_activation_code(tokenization_token, activation_method_type: nil, request_options: {})
      #
      # @param tokenization_token [String] Tokenization token
      #
      # @param activation_method_type [Symbol, Lithic::Models::TokenizationResendActivationCodeParams::ActivationMethodType] The communication method that the user has selected to use to receive the authen
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Lithic::Models::TokenizationResendActivationCodeParams
      def resend_activation_code(tokenization_token, params = {})
        parsed, options = Lithic::TokenizationResendActivationCodeParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/tokenizations/%1$s/resend_activation_code", tokenization_token],
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::TokenizationSimulateParams} for more details.
      #
      # This endpoint is used to simulate a card's tokenization in the Digital Wallet
      # and merchant tokenization ecosystem.
      #
      # @overload simulate(cvv:, expiration_date:, pan:, tokenization_source:, account_score: nil, device_score: nil, entity: nil, wallet_recommended_decision: nil, request_options: {})
      #
      # @param cvv [String] The three digit cvv for the card.
      #
      # @param expiration_date [String] The expiration date of the card in 'MM/YY' format.
      #
      # @param pan [String] The sixteen digit card number.
      #
      # @param tokenization_source [Symbol, Lithic::Models::TokenizationSimulateParams::TokenizationSource] The source of the tokenization request.
      #
      # @param account_score [Integer] The account score (1-5) that represents how the Digital Wallet's view on how rep
      #
      # @param device_score [Integer] The device score (1-5) that represents how the Digital Wallet's view on how repu
      #
      # @param entity [String] Optional field to specify the token requestor name for a merchant token simulati
      #
      # @param wallet_recommended_decision [Symbol, Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision] The decision that the Digital Wallet's recommend
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::TokenizationSimulateResponse]
      #
      # @see Lithic::Models::TokenizationSimulateParams
      def simulate(params)
        parsed, options = Lithic::TokenizationSimulateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/simulate/tokenizations",
          body: parsed,
          model: Lithic::Models::TokenizationSimulateResponse,
          options: options
        )
      end

      # This endpoint is used to ask the card network to unpause a tokenization. A
      # successful response indicates that the request was successfully delivered to the
      # card network. When the card network unpauses the tokenization, the state will be
      # updated and a tokenization.updated event will be sent. The endpoint may only be
      # used on tokenizations with status `PAUSED`. This will put the tokenization in an
      # active state, and transactions may resume. Reach out at
      # [lithic.com/contact](https://lithic.com/contact) for more information.
      #
      # @overload unpause(tokenization_token, request_options: {})
      #
      # @param tokenization_token [String] Tokenization token
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Lithic::Models::TokenizationUnpauseParams
      def unpause(tokenization_token, params = {})
        @client.request(
          method: :post,
          path: ["v1/tokenizations/%1$s/unpause", tokenization_token],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::TokenizationUpdateDigitalCardArtParams} for more details.
      #
      # This endpoint is used update the digital card art for a digital wallet
      # tokenization. A successful response indicates that the card network has updated
      # the tokenization's art, and the tokenization's `digital_cart_art_token` field
      # was updated. The endpoint may not be used on tokenizations with status
      # `DEACTIVATED`. Note that this updates the art for one specific tokenization, not
      # all tokenizations for a card. New tokenizations for a card will be created with
      # the art referenced in the card object's `digital_card_art_token` field. Reach
      # out at [lithic.com/contact](https://lithic.com/contact) for more information.
      #
      # @overload update_digital_card_art(tokenization_token, digital_card_art_token: nil, request_options: {})
      #
      # @param tokenization_token [String] Tokenization token
      #
      # @param digital_card_art_token [String] Specifies the digital card art to be displayed in the user’s digital wallet for
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::TokenizationUpdateDigitalCardArtResponse]
      #
      # @see Lithic::Models::TokenizationUpdateDigitalCardArtParams
      def update_digital_card_art(tokenization_token, params = {})
        parsed, options = Lithic::TokenizationUpdateDigitalCardArtParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/tokenizations/%1$s/update_digital_card_art", tokenization_token],
          body: parsed,
          model: Lithic::Models::TokenizationUpdateDigitalCardArtResponse,
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
