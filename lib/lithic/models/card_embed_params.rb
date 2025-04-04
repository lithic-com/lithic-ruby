# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Cards#embed
    class CardEmbedParams < Lithic::Internal::Type::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute embed_request
      #   A base64 encoded JSON string of an EmbedRequest to specify which card to load.
      #
      #   @return [String]
      required :embed_request, String

      # @!attribute hmac
      #   SHA256 HMAC of the embed_request JSON string with base64 digest.
      #
      #   @return [String]
      required :hmac, String

      # @!parse
      #   # @param embed_request [String]
      #   # @param hmac [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(embed_request:, hmac:, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
    end
  end
end
