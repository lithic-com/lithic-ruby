# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ResponderEndpoints#check_status
    class ResponderEndpointCheckStatusParams < Lithic::Internal::Type::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute type
      #   The type of the endpoint.
      #
      #   @return [Symbol, Lithic::Models::ResponderEndpointCheckStatusParams::Type]
      required :type, enum: -> { Lithic::Models::ResponderEndpointCheckStatusParams::Type }

      # @!parse
      #   # @param type [Symbol, Lithic::Models::ResponderEndpointCheckStatusParams::Type]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(type:, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

      # The type of the endpoint.
      module Type
        extend Lithic::Internal::Type::Enum

        AUTH_STREAM_ACCESS = :AUTH_STREAM_ACCESS
        THREE_DS_DECISIONING = :THREE_DS_DECISIONING
        TOKENIZATION_DECISIONING = :TOKENIZATION_DECISIONING

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
