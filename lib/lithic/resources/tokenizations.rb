# frozen_string_literal: true

module Lithic
  module Resources
    class Tokenizations
      # Get tokenization
      #
      # @overload retrieve(tokenization_token, request_options: {})
      #
      # @param tokenization_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::TokenizationRetrieveResponse]
      #
      # @see Lithic::Models::TokenizationRetrieveParams
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
      # @overload list(account_token: nil, begin_: nil, card_token: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, tokenization_channel: nil, request_options: {})
      #
      # @param account_token [String]
      # @param begin_ [Date]
      # @param card_token [String]
      # @param end_ [Date]
      # @param ending_before [String]
      # @param page_size [Integer]
      # @param starting_after [String]
      # @param tokenization_channel [Symbol, Lithic::Models::TokenizationListParams::TokenizationChannel]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::Tokenization>]
      #
      # @see Lithic::Models::TokenizationListParams
      def list(params = {})
        parsed, options = Lithic::Models::TokenizationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/tokenizations",
          query: parsed.transform_keys(begin_: :begin, end_: :end),
          page: Lithic::Internal::CursorPage,
          model: Lithic::Models::Tokenization,
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
      # @param tokenization_token [String]
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
      # @param tokenization_token [String]
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
      # @param tokenization_token [String]
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
      # @param tokenization_token [String]
      # @param activation_method_type [Symbol, Lithic::Models::TokenizationResendActivationCodeParams::ActivationMethodType]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Lithic::Models::TokenizationResendActivationCodeParams
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
      # and merchant tokenization ecosystem.
      #
      # @overload simulate(cvv:, expiration_date:, pan:, tokenization_source:, account_score: nil, device_score: nil, entity: nil, wallet_recommended_decision: nil, request_options: {})
      #
      # @param cvv [String]
      # @param expiration_date [String]
      # @param pan [String]
      # @param tokenization_source [Symbol, Lithic::Models::TokenizationSimulateParams::TokenizationSource]
      # @param account_score [Integer]
      # @param device_score [Integer]
      # @param entity [String]
      # @param wallet_recommended_decision [Symbol, Lithic::Models::TokenizationSimulateParams::WalletRecommendedDecision]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::TokenizationSimulateResponse]
      #
      # @see Lithic::Models::TokenizationSimulateParams
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
      # successful response indicates that the request was successfully delivered to the
      # card network. When the card network unpauses the tokenization, the state will be
      # updated and a tokenization.updated event will be sent. The endpoint may only be
      # used on tokenizations with status `PAUSED`. This will put the tokenization in an
      # active state, and transactions may resume. Reach out at
      # [lithic.com/contact](https://lithic.com/contact) for more information.
      #
      # @overload unpause(tokenization_token, request_options: {})
      #
      # @param tokenization_token [String]
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
      # @param tokenization_token [String]
      # @param digital_card_art_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::TokenizationUpdateDigitalCardArtResponse]
      #
      # @see Lithic::Models::TokenizationUpdateDigitalCardArtParams
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

      # @api private
      #
      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
