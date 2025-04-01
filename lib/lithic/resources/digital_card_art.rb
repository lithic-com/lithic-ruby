# frozen_string_literal: true

module Lithic
  module Resources
    class DigitalCardArt
      # Get digital card art by token.
      #
      # @overload retrieve(digital_card_art_token, request_options: {})
      #
      # @param digital_card_art_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::DigitalCardArtAPI]
      #
      # @see Lithic::Models::DigitalCardArtRetrieveParams
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
      # @overload list(ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
      #
      # @param ending_before [String]
      # @param page_size [Integer]
      # @param starting_after [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::CursorPage<Lithic::Models::DigitalCardArtAPI>]
      #
      # @see Lithic::Models::DigitalCardArtListParams
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

      # @api private
      #
      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
