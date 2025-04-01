# typed: strong

module Lithic
  module Models
    class DigitalCardArtAPI < Lithic::BaseModel
      # Globally unique identifier for the card art.
      sig { returns(String) }
      attr_accessor :token

      # Globally unique identifier for the card program.
      sig { returns(String) }
      attr_accessor :card_program_token

      # Timestamp of when card art was created.
      sig { returns(Time) }
      attr_accessor :created

      # Description of the card art.
      sig { returns(String) }
      attr_accessor :description

      # Whether the card art is enabled.
      sig { returns(T::Boolean) }
      attr_accessor :is_enabled

      # Card network.
      sig { returns(Lithic::Models::DigitalCardArtAPI::Network::TaggedSymbol) }
      attr_accessor :network

      # Whether the card art is the default card art to be added upon tokenization.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_card_program_default

      sig { params(is_card_program_default: T::Boolean).void }
      attr_writer :is_card_program_default

      sig do
        params(
          token: String,
          card_program_token: String,
          created: Time,
          description: String,
          is_enabled: T::Boolean,
          network: Lithic::Models::DigitalCardArtAPI::Network::OrSymbol,
          is_card_program_default: T::Boolean
        )
          .returns(T.attached_class)
      end
      def self.new(
        token:,
        card_program_token:,
        created:,
        description:,
        is_enabled:,
        network:,
        is_card_program_default: nil
      )
      end

      sig do
        override
          .returns(
            {
              token: String,
              card_program_token: String,
              created: Time,
              description: String,
              is_enabled: T::Boolean,
              network: Lithic::Models::DigitalCardArtAPI::Network::TaggedSymbol,
              is_card_program_default: T::Boolean
            }
          )
      end
      def to_hash
      end

      # Card network.
      module Network
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::DigitalCardArtAPI::Network) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::DigitalCardArtAPI::Network::TaggedSymbol) }

        MASTERCARD = T.let(:MASTERCARD, Lithic::Models::DigitalCardArtAPI::Network::TaggedSymbol)
        VISA = T.let(:VISA, Lithic::Models::DigitalCardArtAPI::Network::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::DigitalCardArtAPI::Network::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
