# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ResponderEndpoints#check_status
    class ResponderEndpointCheckStatusParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute type
      #   The type of the endpoint.
      #
      #   @return [Symbol, Lithic::ResponderEndpointCheckStatusParams::Type]
      required :type, enum: -> { Lithic::ResponderEndpointCheckStatusParams::Type }

      # @!method initialize(type:, request_options: {})
      #   @param type [Symbol, Lithic::ResponderEndpointCheckStatusParams::Type] The type of the endpoint.
      #
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
