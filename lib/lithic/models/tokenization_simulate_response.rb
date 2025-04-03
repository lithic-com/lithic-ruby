# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#simulate
    class TokenizationSimulateResponse < Lithic::Internal::Type::BaseModel
      # @!attribute [r] data
      #
      #   @return [Array<Lithic::Models::Tokenization>, nil]
      optional :data, -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::Tokenization] }

      # @!parse
      #   # @return [Array<Lithic::Models::Tokenization>]
      #   attr_writer :data

      # @!parse
      #   # @param data [Array<Lithic::Models::Tokenization>]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
    end
  end
end
