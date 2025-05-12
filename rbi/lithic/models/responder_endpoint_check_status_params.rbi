# typed: strong

module Lithic
  module Models
    class ResponderEndpointCheckStatusParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Lithic::ResponderEndpointCheckStatusParams,
            Lithic::Internal::AnyHash
          )
        end

      # The type of the endpoint.
      sig do
        returns(Lithic::ResponderEndpointCheckStatusParams::Type::OrSymbol)
      end
      attr_accessor :type

      sig do
        params(
          type: Lithic::ResponderEndpointCheckStatusParams::Type::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The type of the endpoint.
        type:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            type: Lithic::ResponderEndpointCheckStatusParams::Type::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The type of the endpoint.
      module Type
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::ResponderEndpointCheckStatusParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTH_STREAM_ACCESS =
          T.let(
            :AUTH_STREAM_ACCESS,
            Lithic::ResponderEndpointCheckStatusParams::Type::TaggedSymbol
          )
        THREE_DS_DECISIONING =
          T.let(
            :THREE_DS_DECISIONING,
            Lithic::ResponderEndpointCheckStatusParams::Type::TaggedSymbol
          )
        TOKENIZATION_DECISIONING =
          T.let(
            :TOKENIZATION_DECISIONING,
            Lithic::ResponderEndpointCheckStatusParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::ResponderEndpointCheckStatusParams::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
