# frozen_string_literal: true

module Lithic
  module Models
    module ThreeDS
      # @see Lithic::Resources::ThreeDS::Decisioning#retrieve_secret
      class DecisioningRetrieveSecretResponse < Lithic::BaseModel
        # @!attribute [r] secret
        #   The 3DS Decisioning HMAC secret
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

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
