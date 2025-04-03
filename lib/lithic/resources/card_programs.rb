# frozen_string_literal: true

module Lithic
  module Resources
    class CardPrograms
      # Get card program.
      #
      # @overload retrieve(card_program_token, request_options: {})
      #
      # @param card_program_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::CardProgram]
      #
      # @see Lithic::Models::CardProgramRetrieveParams
      def retrieve(card_program_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/card_programs/%1$s", card_program_token],
          model: Lithic::Models::CardProgram,
          options: params[:request_options]
        )
      end

      # List card programs.
      #
      # @overload list(ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
      #
      # @param ending_before [String]
      # @param page_size [Integer]
      # @param starting_after [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::CardProgram>]
      #
      # @see Lithic::Models::CardProgramListParams
      def list(params = {})
        parsed, options = Lithic::Models::CardProgramListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/card_programs",
          query: parsed,
          page: Lithic::Internal::CursorPage,
          model: Lithic::Models::CardProgram,
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
