# typed: strong

module Lithic
  module Models
    class ResponderEndpointCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # The type of the endpoint.
      sig { returns(T.nilable(Lithic::Models::ResponderEndpointCreateParams::Type::OrSymbol)) }
      attr_reader :type

      sig { params(type: Lithic::Models::ResponderEndpointCreateParams::Type::OrSymbol).void }
      attr_writer :type

      # The URL for the responder endpoint (must be http(s)).
      sig { returns(T.nilable(String)) }
      attr_reader :url

      sig { params(url: String).void }
      attr_writer :url

      sig do
        params(
          type: Lithic::Models::ResponderEndpointCreateParams::Type::OrSymbol,
          url: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(type: nil, url: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              type: Lithic::Models::ResponderEndpointCreateParams::Type::OrSymbol,
              url: String,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash; end

      # The type of the endpoint.
      module Type
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ResponderEndpointCreateParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTH_STREAM_ACCESS =
          T.let(:AUTH_STREAM_ACCESS, Lithic::Models::ResponderEndpointCreateParams::Type::TaggedSymbol)
        THREE_DS_DECISIONING =
          T.let(:THREE_DS_DECISIONING, Lithic::Models::ResponderEndpointCreateParams::Type::TaggedSymbol)
        TOKENIZATION_DECISIONING =
          T.let(:TOKENIZATION_DECISIONING, Lithic::Models::ResponderEndpointCreateParams::Type::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::ResponderEndpointCreateParams::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
