# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::TokenizationDecisioning#rotate_secret
    class TokenizationDecisioningRotateSecretResponse < Lithic::Internal::Type::BaseModel
      # @!attribute [r] secret
      #   The new Tokenization Decisioning HMAC secret
      #
      #   @return [String, nil]
      optional :secret, String

      # @!parse
      #   # @return [String]
      #   attr_writer :secret

      # @!parse
      #   # @param secret [String]
      #   #
      #   def initialize(secret: nil, **) = super

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
    end
  end
end
