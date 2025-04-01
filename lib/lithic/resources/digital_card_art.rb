# frozen_string_literal: true

module Lithic
  module Resources
    class DigitalCardArt
      # Get digital card art by token.
      #
      # @param digital_card_art_token [String] Specifies the digital card art to be displayed in the user’s digital wallet
      #   after tokenization. This artwork must be approved by Mastercard and configured
      #   by Lithic to use. See
      #   [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
      #
      # @param params [Lithic::Models::DigitalCardArtRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::DigitalCardArtAPI]
      def retrieve(digital_card_art_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/digital_card_art/%1$s", digital_card_art_token],
          model: Lithic::Models::DigitalCardArtAPI,
          options: params[:request_options]
        )
      end

      # List digital card art.
      #
      # @param params [Lithic::Models::DigitalCardArtListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :ending_before A cursor representing an item's token before which a page of results should end.
      #     Used to retrieve the previous page of results before this item.
      #
      #   @option params [Integer] :page_size Page size (for pagination).
      #
      #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
      #     begin. Used to retrieve the next page of results after this item.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::CursorPage<Lithic::Models::DigitalCardArtAPI>]
      def list(params = {})
        parsed, options = Lithic::Models::DigitalCardArtListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/digital_card_art",
          query: parsed,
          page: Lithic::CursorPage,
          model: Lithic::Models::DigitalCardArtAPI,
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
