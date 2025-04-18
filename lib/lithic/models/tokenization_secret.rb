# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::TokenizationDecisioning#retrieve_secret
    class TokenizationSecret < Lithic::Internal::Type::BaseModel
      # @!attribute [r] secret
      #   The Tokenization Decisioning HMAC secret
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
