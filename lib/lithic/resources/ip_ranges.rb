# frozen_string_literal: true

module Lithic
  module Resources
    class IPRanges
      # Returns the IP addresses Lithic sends responder requests from (Auth Stream
      # Access, 3DS decisioning, and tokenization decisioning), so you can allowlist
      # them in your firewall. Each environment returns its own set of addresses. Lithic
      # announces new addresses at least 30 days before sending traffic from them. Event
      # webhooks are not sent from these addresses
      #
      # @overload retrieve(request_options: {})
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::IPRangeRetrieveResponse]
      #
      # @see Lithic::Models::IPRangeRetrieveParams
      def retrieve(params = {})
        @client.request(
          method: :get,
          path: "v1/ip_ranges",
          model: Lithic::Models::IPRangeRetrieveResponse,
          options: params[:request_options]
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
