# typed: strong

module Lithic
  module Models
    class ResponderEndpointDeleteParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # The type of the endpoint.
      sig { returns(Lithic::Models::ResponderEndpointDeleteParams::Type::OrSymbol) }
      def type
      end

      sig do
        params(_: Lithic::Models::ResponderEndpointDeleteParams::Type::OrSymbol)
          .returns(Lithic::Models::ResponderEndpointDeleteParams::Type::OrSymbol)
      end
      def type=(_)
      end

      sig do
        params(
          type: Lithic::Models::ResponderEndpointDeleteParams::Type::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(type:, request_options: {})
      end

      sig do
        override
          .returns(
            {type: Lithic::Models::ResponderEndpointDeleteParams::Type::OrSymbol, request_options: Lithic::RequestOptions}
          )
      end
      def to_hash
      end

      # The type of the endpoint.
      module Type
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ResponderEndpointDeleteParams::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ResponderEndpointDeleteParams::Type::TaggedSymbol) }

        AUTH_STREAM_ACCESS =
          T.let(:AUTH_STREAM_ACCESS, Lithic::Models::ResponderEndpointDeleteParams::Type::OrSymbol)
        THREE_DS_DECISIONING =
          T.let(:THREE_DS_DECISIONING, Lithic::Models::ResponderEndpointDeleteParams::Type::OrSymbol)
        TOKENIZATION_DECISIONING =
          T.let(:TOKENIZATION_DECISIONING, Lithic::Models::ResponderEndpointDeleteParams::Type::OrSymbol)
      end
    end
  end
end
