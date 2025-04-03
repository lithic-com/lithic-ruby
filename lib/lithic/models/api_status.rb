# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Client#api_status
    class APIStatus < Lithic::Internal::Type::BaseModel
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

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
    end
  end
end
