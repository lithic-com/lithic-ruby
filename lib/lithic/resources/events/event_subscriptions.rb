# frozen_string_literal: true

module Lithic
  module Resources
    class Events
      class EventSubscriptions
        # Resend an event to an event subscription.
        #
        # @overload resend(event_subscription_token, event_token:, request_options: {})
        #
        # @param event_subscription_token [String]
        # @param event_token [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Lithic::Models::Events::EventSubscriptionResendParams
        def resend(event_subscription_token, params)
          parsed, options = Lithic::Events::EventSubscriptionResendParams.dump_request(params)
          event_token =
            parsed.delete(:event_token) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["v1/events/%1$s/event_subscriptions/%2$s/resend", event_token, event_subscription_token],
            model: NilClass,
            options: options
          )
        end

        # @api private
        #
        # @param client [Lithic::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
