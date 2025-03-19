# typed: strong

module Lithic
  module Models
    class ResponderEndpointCheckStatusParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # The type of the endpoint.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig do
        params(type: Symbol, request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
          .returns(T.attached_class)
      end
      def self.new(type:, request_options: {})
      end

      sig { override.returns({type: Symbol, request_options: Lithic::RequestOptions}) }
      def to_hash
      end

      # The type of the endpoint.
      class Type < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        AUTH_STREAM_ACCESS = :AUTH_STREAM_ACCESS
        THREE_DS_DECISIONING = :THREE_DS_DECISIONING
        TOKENIZATION_DECISIONING = :TOKENIZATION_DECISIONING
      end
    end
  end
end
