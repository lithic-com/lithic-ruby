# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#retrieve
    class TokenizationRetrieveResponse < Lithic::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Lithic::Tokenization, nil]
      optional :data, -> { Lithic::Tokenization }

      # @!method initialize(data: nil)
      #   @param data [Lithic::Tokenization]
    end
  end
end
