# frozen_string_literal: true

module Lithic
  module Models
    class APIStatus < Lithic::BaseModel
      # @!attribute [r] message
      #
      #   @return [String, nil]
      optional :message, String

      # @!parse
      #   # @return [String]
      #   attr_writer :message

      # @!parse
      #   # @param message [String]
      #   #
      #   def initialize(message: nil, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
