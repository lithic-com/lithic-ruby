# typed: strong

module Lithic
  module Models
    class ResponderEndpointCheckStatusParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # The type of the endpoint.
      sig { returns(Lithic::Models::ResponderEndpointCheckStatusParams::Type::OrSymbol) }
      def type
      end

      sig do
        params(_: Lithic::Models::ResponderEndpointCheckStatusParams::Type::OrSymbol)
          .returns(Lithic::Models::ResponderEndpointCheckStatusParams::Type::OrSymbol)
      end
      def type=(_)
      end

      sig do
        params(
          type: Lithic::Models::ResponderEndpointCheckStatusParams::Type::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(type:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              type: Lithic::Models::ResponderEndpointCheckStatusParams::Type::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # The type of the endpoint.
      module Type
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ResponderEndpointCheckStatusParams::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ResponderEndpointCheckStatusParams::Type::TaggedSymbol) }

        AUTH_STREAM_ACCESS =
          T.let(:AUTH_STREAM_ACCESS, Lithic::Models::ResponderEndpointCheckStatusParams::Type::OrSymbol)
        THREE_DS_DECISIONING =
          T.let(:THREE_DS_DECISIONING, Lithic::Models::ResponderEndpointCheckStatusParams::Type::OrSymbol)
        TOKENIZATION_DECISIONING =
          T.let(:TOKENIZATION_DECISIONING, Lithic::Models::ResponderEndpointCheckStatusParams::Type::OrSymbol)
      end
    end
  end
end
