# frozen_string_literal: true

module Lithic
  module Models
    class BookTransferReverseParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute [r] memo
      #   Optional descriptor for the reversal.
      #
      #   @return [String, nil]
      optional :memo, String

      # @!parse
      #   # @return [String]
      #   attr_writer :memo

      # @!parse
      #   # @param memo [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(memo: nil, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
