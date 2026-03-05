# frozen_string_literal: true

module Lithic
  module Models
    module Events
      # @see Lithic::Resources::Events::EventSubscriptions#resend
      class EventSubscriptionResendParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute event_token
        #
        #   @return [String]
        required :event_token, String

        # @!attribute event_subscription_token
        #
        #   @return [String]
        required :event_subscription_token, String

        # @!method initialize(event_token:, event_subscription_token:, request_options: {})
        #   @param event_token [String]
        #   @param event_subscription_token [String]
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
