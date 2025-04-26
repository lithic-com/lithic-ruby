# typed: strong

module Lithic
  module Models
    class CardEmbedParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # A base64 encoded JSON string of an EmbedRequest to specify which card to load.
      sig { returns(String) }
      attr_accessor :embed_request

      # SHA256 HMAC of the embed_request JSON string with base64 digest.
      sig { returns(String) }
      attr_accessor :hmac

      sig do
        params(
          embed_request: String,
          hmac: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # A base64 encoded JSON string of an EmbedRequest to specify which card to load.
        embed_request:,
        # SHA256 HMAC of the embed_request JSON string with base64 digest.
        hmac:,
        request_options: {}
      ); end
      sig { override.returns({embed_request: String, hmac: String, request_options: Lithic::RequestOptions}) }
      def to_hash; end
    end
  end
end
