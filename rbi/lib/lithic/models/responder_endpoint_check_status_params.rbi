# typed: strong

module Lithic
  module Models
    class ResponderEndpointCheckStatusParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # The type of the endpoint.
      sig { returns(Lithic::Models::ResponderEndpointCheckStatusParams::Type::OrSymbol) }
      attr_accessor :type

      sig do
        params(
          type: Lithic::Models::ResponderEndpointCheckStatusParams::Type::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
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
          T.let(:AUTH_STREAM_ACCESS, Lithic::Models::ResponderEndpointCheckStatusParams::Type::TaggedSymbol)
        THREE_DS_DECISIONING =
          T.let(:THREE_DS_DECISIONING, Lithic::Models::ResponderEndpointCheckStatusParams::Type::TaggedSymbol)
        TOKENIZATION_DECISIONING =
          T.let(:TOKENIZATION_DECISIONING, Lithic::Models::ResponderEndpointCheckStatusParams::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ResponderEndpointCheckStatusParams::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
