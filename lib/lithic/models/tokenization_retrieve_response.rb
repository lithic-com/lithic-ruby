# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#retrieve
    class TokenizationRetrieveResponse < Lithic::BaseModel
      # @!attribute [r] data
      #
      #   @return [Lithic::Models::Tokenization, nil]
      optional :data, -> { Lithic::Models::Tokenization }

      # @!parse
      #   # @return [Lithic::Models::Tokenization]
      #   attr_writer :data

      # @!parse
      #   # @param data [Lithic::Models::Tokenization]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
