# typed: strong

module Lithic
  module Resources
    class Events
      class EventSubscriptions
        # Resend an event to an event subscription.
        sig do
          params(
            event_subscription_token: String,
            event_token: String,
            request_options: Lithic::RequestOpts
          ).void
        end
        def resend(event_subscription_token, event_token:, request_options: {}); end

        # @api private
        sig { params(client: Lithic::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
