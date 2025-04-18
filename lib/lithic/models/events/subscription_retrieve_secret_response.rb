# frozen_string_literal: true

module Lithic
  module Models
    module Events
      # @see Lithic::Resources::Events::Subscriptions#retrieve_secret
      class SubscriptionRetrieveSecretResponse < Lithic::Internal::Type::BaseModel
        # @!attribute [r] secret
        #   The secret for the event subscription.
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
