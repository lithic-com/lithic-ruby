# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ResponderEndpoints#create
    class ResponderEndpointCreateParams < Lithic::Internal::Type::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute [r] type
      #   The type of the endpoint.
      #
      #   @return [Symbol, Lithic::Models::ResponderEndpointCreateParams::Type, nil]
      optional :type, enum: -> { Lithic::Models::ResponderEndpointCreateParams::Type }

      # @!parse
      #   # @return [Symbol, Lithic::Models::ResponderEndpointCreateParams::Type]
      #   attr_writer :type

      # @!attribute [r] url
      #   The URL for the responder endpoint (must be http(s)).
      #
      #   @return [String, nil]
      optional :url, String

      # @!parse
      #   # @return [String]
      #   attr_writer :url

      # @!method initialize(type: nil, url: nil, request_options: {})
      #   @param type [Symbol, Lithic::Models::ResponderEndpointCreateParams::Type]
      #   @param url [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # The type of the endpoint.
      module Type
        extend Lithic::Internal::Type::Enum

        AUTH_STREAM_ACCESS = :AUTH_STREAM_ACCESS
        THREE_DS_DECISIONING = :THREE_DS_DECISIONING
        TOKENIZATION_DECISIONING = :TOKENIZATION_DECISIONING

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
