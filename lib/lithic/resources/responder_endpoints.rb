# frozen_string_literal: true

module Lithic
  module Resources
    class ResponderEndpoints
      # Enroll a responder endpoint
      #
      # @overload create(type: nil, url: nil, request_options: {})
      #
      # @param type [Symbol, Lithic::Models::ResponderEndpointCreateParams::Type] The type of the endpoint.
      #
      # @param url [String] The URL for the responder endpoint (must be http(s)).
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::ResponderEndpointCreateResponse]
      #
      # @see Lithic::Models::ResponderEndpointCreateParams
      def create(params = {})
        parsed, options = Lithic::ResponderEndpointCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/responder_endpoints",
          body: parsed,
          model: Lithic::Models::ResponderEndpointCreateResponse,
          options: options
        )
      end

      # Disenroll a responder endpoint
      #
      # @overload delete(type:, request_options: {})
      #
      # @param type [Symbol, Lithic::Models::ResponderEndpointDeleteParams::Type] The type of the endpoint.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Lithic::Models::ResponderEndpointDeleteParams
      def delete(params)
        parsed, options = Lithic::ResponderEndpointDeleteParams.dump_request(params)
        @client.request(
          method: :delete,
          path: "v1/responder_endpoints",
          query: parsed,
          model: NilClass,
          options: options
        )
      end

      # Check the status of a responder endpoint
      #
      # @overload check_status(type:, request_options: {})
      #
      # @param type [Symbol, Lithic::Models::ResponderEndpointCheckStatusParams::Type] The type of the endpoint.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::ResponderEndpointStatus]
      #
      # @see Lithic::Models::ResponderEndpointCheckStatusParams
      def check_status(params)
        parsed, options = Lithic::ResponderEndpointCheckStatusParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/responder_endpoints",
          query: parsed,
          model: Lithic::ResponderEndpointStatus,
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
