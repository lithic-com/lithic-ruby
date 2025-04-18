# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#update_digital_card_art
    class TokenizationUpdateDigitalCardArtResponse < Lithic::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Lithic::Models::Tokenization, nil]
      optional :data, -> { Lithic::Models::Tokenization }

      # @!method initialize(data: nil)
      #   @param data [Lithic::Models::Tokenization]
    end
  end
end
