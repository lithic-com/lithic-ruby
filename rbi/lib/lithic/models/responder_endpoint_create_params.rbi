# typed: strong

module Lithic
  module Models
    class ResponderEndpointCreateParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # The type of the endpoint.
      sig { returns(T.nilable(Lithic::Models::ResponderEndpointCreateParams::Type::OrSymbol)) }
      def type
      end

      sig do
        params(_: Lithic::Models::ResponderEndpointCreateParams::Type::OrSymbol)
          .returns(Lithic::Models::ResponderEndpointCreateParams::Type::OrSymbol)
      end
      def type=(_)
      end

      # The URL for the responder endpoint (must be http(s)).
      sig { returns(T.nilable(String)) }
      def url
      end

      sig { params(_: String).returns(String) }
      def url=(_)
      end

      sig do
        params(
          type: Lithic::Models::ResponderEndpointCreateParams::Type::OrSymbol,
          url: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(type: nil, url: nil, request_options: {})
      end

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
      def to_hash
      end

      # The type of the endpoint.
      module Type
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ResponderEndpointCreateParams::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ResponderEndpointCreateParams::Type::TaggedSymbol) }

        AUTH_STREAM_ACCESS =
          T.let(:AUTH_STREAM_ACCESS, Lithic::Models::ResponderEndpointCreateParams::Type::TaggedSymbol)
        THREE_DS_DECISIONING =
          T.let(:THREE_DS_DECISIONING, Lithic::Models::ResponderEndpointCreateParams::Type::TaggedSymbol)
        TOKENIZATION_DECISIONING =
          T.let(:TOKENIZATION_DECISIONING, Lithic::Models::ResponderEndpointCreateParams::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ResponderEndpointCreateParams::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
