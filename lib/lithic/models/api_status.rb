# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Client#api_status
    class APIStatus < Lithic::Internal::Type::BaseModel
      # @!attribute message
      #
      #   @return [String, nil]
      optional :message, String

      # @!method initialize(message: nil)
      #   @param message [String]
    end
  end
end
