# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::AuthStreamEnrollment#retrieve_secret
    class AuthStreamSecret < Lithic::Internal::Type::BaseModel
      # @!attribute [r] secret
      #   The shared HMAC ASA secret
      #
      #   @return [String, nil]
      optional :secret, String

      # @!parse
      #   # @return [String]
      #   attr_writer :secret

      # @!method initialize(secret: nil)
      #   @param secret [String]
    end
  end
end
