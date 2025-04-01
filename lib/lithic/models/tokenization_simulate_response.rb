# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#simulate
    class TokenizationSimulateResponse < Lithic::BaseModel
      # @!attribute [r] data
      #
      #   @return [Array<Lithic::Models::Tokenization>, nil]
      optional :data, -> { Lithic::ArrayOf[Lithic::Models::Tokenization] }

      # @!parse
      #   # @return [Array<Lithic::Models::Tokenization>]
      #   attr_writer :data

      # @!parse
      #   # @param data [Array<Lithic::Models::Tokenization>]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
