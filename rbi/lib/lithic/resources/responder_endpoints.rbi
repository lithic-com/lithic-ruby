# typed: strong

module Lithic
  module Resources
    class ResponderEndpoints
      # Enroll a responder endpoint
      sig do
        params(
          type: Symbol,
          url: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
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
          type: Symbol,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
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
          type: Symbol,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Lithic::Models::ResponderEndpointStatus)
      end
      def check_status(
        # The type of the endpoint.
        type:,
        request_options: {}
      )
      end

      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
