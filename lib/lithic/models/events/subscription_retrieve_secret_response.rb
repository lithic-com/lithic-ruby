# frozen_string_literal: true

module Lithic
  module Models
    module Events
      # @see Lithic::Resources::Events::Subscriptions#retrieve_secret
      class SubscriptionRetrieveSecretResponse < Lithic::Internal::Type::BaseModel
        # @!attribute secret
        #   The secret for the event subscription.
        #
        #   @return [String, nil]
        optional :secret, String

        # @!method initialize(secret: nil)
        #   @param secret [String]
      end
    end
  end
end
