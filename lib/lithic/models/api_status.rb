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

      # @!method initialize(message: nil)
      #   @param message [String]
    end
  end
end
