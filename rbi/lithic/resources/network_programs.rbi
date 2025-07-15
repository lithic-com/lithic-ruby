# typed: strong

module Lithic
  module Resources
    class NetworkPrograms
      # Get network program.
      sig do
        params(
          network_program_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::NetworkProgram)
      end
      def retrieve(
        # Globally unique identifier for the network program.
        network_program_token,
        request_options: {}
      )
      end

      # List network programs.
      sig do
        params(
          begin_: Time,
          end_: Time,
          page_size: Integer,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Internal::SinglePage[Lithic::NetworkProgram])
      end
      def list(
        # Date string in RFC 3339 format. Only entries created after the specified time
        # will be included. UTC time zone.
        begin_: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        # will be included. UTC time zone.
        end_: nil,
        # Page size (for pagination).
        page_size: nil,
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
