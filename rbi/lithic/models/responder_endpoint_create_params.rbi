# typed: strong

module Lithic
  module Models
    class ResponderEndpointCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

      # The type of the endpoint.
      sig do
        returns(
          T.nilable(Lithic::ResponderEndpointCreateParams::Type::OrSymbol)
        )
      end
      attr_reader :type

      sig do
        params(type: Lithic::ResponderEndpointCreateParams::Type::OrSymbol).void
      end
      attr_writer :type

      # The URL for the responder endpoint (must be http(s)).
      sig { returns(T.nilable(String)) }
      attr_reader :url

      sig { params(url: String).void }
      attr_writer :url

      sig do
        params(
          type: Lithic::ResponderEndpointCreateParams::Type::OrSymbol,
          url: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The type of the endpoint.
        type: nil,
        # The URL for the responder endpoint (must be http(s)).
        url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            type: Lithic::ResponderEndpointCreateParams::Type::OrSymbol,
            url: String,
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
            T.all(Symbol, Lithic::ResponderEndpointCreateParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTH_STREAM_ACCESS =
          T.let(
            :AUTH_STREAM_ACCESS,
            Lithic::ResponderEndpointCreateParams::Type::TaggedSymbol
          )
        THREE_DS_DECISIONING =
          T.let(
            :THREE_DS_DECISIONING,
            Lithic::ResponderEndpointCreateParams::Type::TaggedSymbol
          )
        TOKENIZATION_DECISIONING =
          T.let(
            :TOKENIZATION_DECISIONING,
            Lithic::ResponderEndpointCreateParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::ResponderEndpointCreateParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
