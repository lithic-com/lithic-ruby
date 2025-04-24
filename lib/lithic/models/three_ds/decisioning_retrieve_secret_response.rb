# frozen_string_literal: true

module Lithic
  module Models
    module ThreeDS
      # @see Lithic::Resources::ThreeDS::Decisioning#retrieve_secret
      class DecisioningRetrieveSecretResponse < Lithic::Internal::Type::BaseModel
        # @!attribute secret
        #   The 3DS Decisioning HMAC secret
        #
        #   @return [String, nil]
        optional :secret, String

        # @!method initialize(secret: nil)
        #   @param secret [String] The 3DS Decisioning HMAC secret
      end
    end
  end
end
