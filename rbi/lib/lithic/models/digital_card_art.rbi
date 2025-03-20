# typed: strong

module Lithic
  module Models
    class DigitalCardArtAPI < Lithic::BaseModel
      # Globally unique identifier for the card art.
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # Globally unique identifier for the card program.
      sig { returns(String) }
      def card_program_token
      end

      sig { params(_: String).returns(String) }
      def card_program_token=(_)
      end

      # Timestamp of when card art was created.
      sig { returns(Time) }
      def created
      end

      sig { params(_: Time).returns(Time) }
      def created=(_)
      end

      # Description of the card art.
      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # Whether the card art is enabled.
      sig { returns(T::Boolean) }
      def is_enabled
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def is_enabled=(_)
      end

      # Card network.
      sig { returns(Lithic::Models::DigitalCardArtAPI::Network::TaggedSymbol) }
      def network
      end

      sig do
        params(_: Lithic::Models::DigitalCardArtAPI::Network::TaggedSymbol)
          .returns(Lithic::Models::DigitalCardArtAPI::Network::TaggedSymbol)
      end
      def network=(_)
      end

      # Whether the card art is the default card art to be added upon tokenization.
      sig { returns(T.nilable(T::Boolean)) }
      def is_card_program_default
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def is_card_program_default=(_)
      end

      sig do
        params(
          token: String,
          card_program_token: String,
          created: Time,
          description: String,
          is_enabled: T::Boolean,
          network: Lithic::Models::DigitalCardArtAPI::Network::TaggedSymbol,
          is_card_program_default: T::Boolean
        )
          .returns(T.attached_class)
      end
      def self.new(token:, card_program_token:, created:, description:, is_enabled:, network:, is_card_program_default: nil)
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
      end
    end
  end
end
