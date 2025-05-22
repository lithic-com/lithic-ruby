# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#simulate
    class TokenizationSimulateResponse < Lithic::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Lithic::Models::Tokenization>, nil]
      optional :data, -> { Lithic::Internal::Type::ArrayOf[Lithic::Tokenization] }

      # @!method initialize(data: nil)
      #   @param data [Array<Lithic::Models::Tokenization>]
    end
  end
end
