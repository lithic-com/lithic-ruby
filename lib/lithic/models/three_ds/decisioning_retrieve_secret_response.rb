# frozen_string_literal: true

module Lithic
  module Models
    module ThreeDS
      # @see Lithic::Resources::ThreeDS::Decisioning#retrieve_secret
      class DecisioningRetrieveSecretResponse < Lithic::Internal::Type::BaseModel
        # @!attribute [r] secret
        #   The 3DS Decisioning HMAC secret
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
end
