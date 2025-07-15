# frozen_string_literal: true

module Lithic
  module Resources
    class NetworkPrograms
      # Get network program.
      #
      # @overload retrieve(network_program_token, request_options: {})
      #
      # @param network_program_token [String] Globally unique identifier for the network program.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::NetworkProgram]
      #
      # @see Lithic::Models::NetworkProgramRetrieveParams
      def retrieve(network_program_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/network_programs/%1$s", network_program_token],
          model: Lithic::NetworkProgram,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::NetworkProgramListParams} for more details.
      #
      # List network programs.
      #
      # @overload list(begin_: nil, end_: nil, page_size: nil, request_options: {})
      #
      # @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
      #
      # @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
      #
      # @param page_size [Integer] Page size (for pagination).
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::SinglePage<Lithic::Models::NetworkProgram>]
      #
      # @see Lithic::Models::NetworkProgramListParams
      def list(params = {})
        parsed, options = Lithic::NetworkProgramListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/network_programs",
          query: parsed.transform_keys(begin_: "begin", end_: "end"),
          page: Lithic::Internal::SinglePage,
          model: Lithic::NetworkProgram,
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
