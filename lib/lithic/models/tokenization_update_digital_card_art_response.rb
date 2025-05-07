# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#update_digital_card_art
    class TokenizationUpdateDigitalCardArtResponse < Lithic::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Lithic::Tokenization, nil]
      optional :data, -> { Lithic::Tokenization }

      # @!method initialize(data: nil)
      #   @param data [Lithic::Tokenization]
    end
  end
end
