# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::AuthStreamEnrollment#retrieve_secret
    class AuthStreamSecret < Lithic::Internal::Type::BaseModel
      # @!attribute secret
      #   The shared HMAC ASA secret
      #
      #   @return [String, nil]
      optional :secret, String

      # @!method initialize(secret: nil)
      #   @param secret [String]
    end
  end
end
