# typed: strong

module Lithic
  module Resources
    class IPRanges
      # Returns the IP addresses Lithic sends responder requests from (Auth Stream
      # Access, 3DS decisioning, and tokenization decisioning), so you can allowlist
      # them in your firewall. Each environment returns its own set of addresses. Lithic
      # announces new addresses at least 30 days before sending traffic from them. Event
      # webhooks are not sent from these addresses
      sig do
        params(request_options: Lithic::RequestOptions::OrHash).returns(
          Lithic::Models::IPRangeRetrieveResponse
        )
      end
      def retrieve(request_options: {})
      end

      # @api private
      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
