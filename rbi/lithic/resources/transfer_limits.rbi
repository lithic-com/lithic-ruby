# typed: strong

module Lithic
  module Resources
    class TransferLimits
      # Get transfer limits for a specified date
      sig do
        params(
          date: Date,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(
          Lithic::Internal::SinglePage[Lithic::TransferLimitsResponse::Data]
        )
      end
      def list(
        # Date for which to retrieve transfer limits (ISO 8601 format)
        date: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
