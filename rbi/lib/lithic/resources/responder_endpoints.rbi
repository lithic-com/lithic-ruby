# typed: strong

module Lithic
  module Resources
    class ResponderEndpoints
      # Enroll a responder endpoint
      sig do
        params(
          type: Lithic::Models::ResponderEndpointCreateParams::Type::OrSymbol,
          url: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Util::AnyHash))
        )
          .returns(Lithic::Models::ResponderEndpointCreateResponse)
      end
      def create(
        # The type of the endpoint.
        type: nil,
        # The URL for the responder endpoint (must be http(s)).
        url: nil,
        request_options: {}
      )
      end

      # Disenroll a responder endpoint
      sig do
        params(
          type: Lithic::Models::ResponderEndpointDeleteParams::Type::OrSymbol,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Util::AnyHash))
        )
          .void
      end
      def delete(
        # The type of the endpoint.
        type:,
        request_options: {}
      )
      end

      # Check the status of a responder endpoint
      sig do
        params(
          type: Lithic::Models::ResponderEndpointCheckStatusParams::Type::OrSymbol,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Util::AnyHash))
        )
          .returns(Lithic::Models::ResponderEndpointStatus)
      end
      def check_status(
        # The type of the endpoint.
        type:,
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
