# frozen_string_literal: true

module Lithic
  module Resources
    class ResponderEndpoints
      # Enroll a responder endpoint
      #
      # @param params [Lithic::Models::ResponderEndpointCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, Lithic::Models::ResponderEndpointCreateParams::Type] :type The type of the endpoint.
      #
      #   @option params [String] :url The URL for the responder endpoint (must be http(s)).
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::ResponderEndpointCreateResponse]
      def create(params = {})
        parsed, options = Lithic::Models::ResponderEndpointCreateParams.dump_request(params)
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
      # @param params [Lithic::Models::ResponderEndpointDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, Lithic::Models::ResponderEndpointDeleteParams::Type] :type The type of the endpoint.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [nil]
      def delete(params)
        parsed, options = Lithic::Models::ResponderEndpointDeleteParams.dump_request(params)
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
      # @param params [Lithic::Models::ResponderEndpointCheckStatusParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, Lithic::Models::ResponderEndpointCheckStatusParams::Type] :type The type of the endpoint.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::ResponderEndpointStatus]
      def check_status(params)
        parsed, options = Lithic::Models::ResponderEndpointCheckStatusParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/responder_endpoints",
          query: parsed,
          model: Lithic::Models::ResponderEndpointStatus,
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
