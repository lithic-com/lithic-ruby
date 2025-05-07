# frozen_string_literal: true

module Lithic
  module Resources
    class CardPrograms
      # Get card program.
      #
      # @overload retrieve(card_program_token, request_options: {})
      #
      # @param card_program_token [String] Globally unique identifier for the card program.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::CardProgram]
      #
      # @see Lithic::Models::CardProgramRetrieveParams
      def retrieve(card_program_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/card_programs/%1$s", card_program_token],
          model: Lithic::CardProgram,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::CardProgramListParams} for more details.
      #
      # List card programs.
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
      # @return [Lithic::Internal::CursorPage<Lithic::CardProgram>]
      #
      # @see Lithic::Models::CardProgramListParams
      def list(params = {})
        parsed, options = Lithic::CardProgramListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/card_programs",
          query: parsed,
          page: Lithic::Internal::CursorPage,
          model: Lithic::CardProgram,
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
