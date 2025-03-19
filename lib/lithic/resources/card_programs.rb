# frozen_string_literal: true

module Lithic
  module Resources
    class CardPrograms
      # Get card program.
      #
      # @param card_program_token [String] Globally unique identifier for the card program.
      #
      # @param params [Lithic::Models::CardProgramRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::CardProgram]
      def retrieve(card_program_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/card_programs/%0s", card_program_token],
          model: Lithic::Models::CardProgram,
          options: params[:request_options]
        )
      end

      # List card programs.
      #
      # @param params [Lithic::Models::CardProgramListParams, Hash{Symbol=>Object}] .
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
      # @return [Lithic::CursorPage<Lithic::Models::CardProgram>]
      def list(params = {})
        parsed, options = Lithic::Models::CardProgramListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/card_programs",
          query: parsed,
          page: Lithic::CursorPage,
          model: Lithic::Models::CardProgram,
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
