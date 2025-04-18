# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#retrieve
    class TokenizationRetrieveResponse < Lithic::Internal::Type::BaseModel
      # @!attribute [r] data
      #
      #   @return [Lithic::Models::Tokenization, nil]
      optional :data, -> { Lithic::Models::Tokenization }

      # @!parse
      #   # @return [Lithic::Models::Tokenization]
      #   attr_writer :data

      # @!method initialize(data: nil)
      #   @param data [Lithic::Models::Tokenization]
    end
  end
end
