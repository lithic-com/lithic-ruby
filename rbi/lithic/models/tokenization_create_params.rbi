# typed: strong

module Lithic
  module Models
    class TokenizationCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::TokenizationCreateParams, Lithic::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :card_token

      # Globally unique identifier for the active agent configured for your program
      sig { returns(String) }
      attr_accessor :agent_token

      # Type of tokenization to create
      sig { returns(Lithic::TokenizationCreateParams::Type::OrSymbol) }
      attr_accessor :type

      sig do
        params(
          card_token: String,
          agent_token: String,
          type: Lithic::TokenizationCreateParams::Type::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        card_token:,
        # Globally unique identifier for the active agent configured for your program
        agent_token:,
        # Type of tokenization to create
        type:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            card_token: String,
            agent_token: String,
            type: Lithic::TokenizationCreateParams::Type::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Type of tokenization to create
      module Type
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::TokenizationCreateParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AGENT =
          T.let(:AGENT, Lithic::TokenizationCreateParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::TokenizationCreateParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
