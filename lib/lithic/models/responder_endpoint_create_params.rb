# frozen_string_literal: true

module Lithic
  module Models
    class ResponderEndpointCreateParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

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

      # @!parse
      #   # @param type [Symbol, Lithic::Models::ResponderEndpointCreateParams::Type]
      #   # @param url [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(type: nil, url: nil, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # @abstract
      #
      # The type of the endpoint.
      class Type < Lithic::Enum
        AUTH_STREAM_ACCESS = :AUTH_STREAM_ACCESS
        THREE_DS_DECISIONING = :THREE_DS_DECISIONING
        TOKENIZATION_DECISIONING = :TOKENIZATION_DECISIONING

        finalize!
      end
    end
  end
end
