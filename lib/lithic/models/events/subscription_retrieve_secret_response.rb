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

        # @!parse
        #   # @param secret [String]
        #   #
        #   def initialize(secret: nil, **) = super

        # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
      end
    end
  end
end
