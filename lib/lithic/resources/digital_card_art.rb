# frozen_string_literal: true

module Lithic
  module Resources
    class DigitalCardArt
      # Some parameter documentations has been truncated, see
      # {Lithic::Models::DigitalCardArtRetrieveParams} for more details.
      #
      # Get digital card art by token.
      #
      # @overload retrieve(digital_card_art_token, request_options: {})
      #
      # @param digital_card_art_token [String] Specifies the digital card art to be displayed in the user’s digital wallet afte
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::DigitalCardArtAPI]
      #
      # @see Lithic::Models::DigitalCardArtRetrieveParams
      def retrieve(digital_card_art_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/digital_card_art/%1$s", digital_card_art_token],
          model: Lithic::DigitalCardArtAPI,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::DigitalCardArtListParams} for more details.
      #
      # List digital card art.
      #
      # @overload list(ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
      #
      # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      #
      # @param page_size [Integer] Page size (for pagination).
      #
      # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::DigitalCardArtAPI>]
      #
      # @see Lithic::Models::DigitalCardArtListParams
      def list(params = {})
        parsed, options = Lithic::DigitalCardArtListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/digital_card_art",
          query: parsed,
          page: Lithic::Internal::CursorPage,
          model: Lithic::DigitalCardArtAPI,
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
