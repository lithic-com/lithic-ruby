# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::DigitalCardArt#retrieve
    class DigitalCardArtAPI < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Globally unique identifier for the card art.
      #
      #   @return [String]
      required :token, String

      # @!attribute card_program_token
      #   Globally unique identifier for the card program.
      #
      #   @return [String]
      required :card_program_token, String

      # @!attribute created
      #   Timestamp of when card art was created.
      #
      #   @return [Time]
      required :created, Time

      # @!attribute description
      #   Description of the card art.
      #
      #   @return [String]
      required :description, String

      # @!attribute is_enabled
      #   Whether the card art is enabled.
      #
      #   @return [Boolean]
      required :is_enabled, Lithic::Internal::Type::Boolean

      # @!attribute network
      #   Card network.
      #
      #   @return [Symbol, Lithic::Models::DigitalCardArtAPI::Network]
      required :network, enum: -> { Lithic::Models::DigitalCardArtAPI::Network }

      # @!attribute [r] is_card_program_default
      #   Whether the card art is the default card art to be added upon tokenization.
      #
      #   @return [Boolean, nil]
      optional :is_card_program_default, Lithic::Internal::Type::Boolean

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :is_card_program_default

      # @!method initialize(token:, card_program_token:, created:, description:, is_enabled:, network:, is_card_program_default: nil)
      #   @param token [String]
      #   @param card_program_token [String]
      #   @param created [Time]
      #   @param description [String]
      #   @param is_enabled [Boolean]
      #   @param network [Symbol, Lithic::Models::DigitalCardArtAPI::Network]
      #   @param is_card_program_default [Boolean]

      # Card network.
      #
      # @see Lithic::Models::DigitalCardArtAPI#network
      module Network
        extend Lithic::Internal::Type::Enum

        MASTERCARD = :MASTERCARD
        VISA = :VISA

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
