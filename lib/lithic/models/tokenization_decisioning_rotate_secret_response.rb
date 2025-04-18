# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::TokenizationDecisioning#rotate_secret
    class TokenizationDecisioningRotateSecretResponse < Lithic::Internal::Type::BaseModel
      # @!attribute secret
      #   The new Tokenization Decisioning HMAC secret
      #
      #   @return [String, nil]
      optional :secret, String

      # @!method initialize(secret: nil)
      #   @param secret [String]
    end
  end
end
