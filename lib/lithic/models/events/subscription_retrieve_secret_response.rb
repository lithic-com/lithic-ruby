# frozen_string_literal: true

module Lithic
  module Models
    module Events
      class SubscriptionRetrieveSecretResponse < Lithic::BaseModel
        # @!attribute [r] secret
        #   The secret for the event subscription.
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
