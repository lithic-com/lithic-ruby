# typed: strong

module Lithic
  module Resources
    class Events
      class Subscriptions
        # Create a new event subscription.
        sig do
          params(
            url: String,
            description: String,
            disabled: T::Boolean,
            event_types: T::Array[Symbol],
            request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Lithic::Models::EventSubscription)
        end
        def create(
          # URL to which event webhooks will be sent. URL must be a valid HTTPS address.
          url:,
          # Event subscription description.
          description: nil,
          # Whether the event subscription is active (false) or inactive (true).
          disabled: nil,
          # Indicates types of events that will be sent to this subscription. If left blank,
          #   all types will be sent.
          event_types: nil,
          request_options: {}
        )
        end

        # Get an event subscription.
        sig do
          params(
            event_subscription_token: String,
            request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Lithic::Models::EventSubscription)
        end
        def retrieve(event_subscription_token, request_options: {})
        end

        # Update an event subscription.
        sig do
          params(
            event_subscription_token: String,
            url: String,
            description: String,
            disabled: T::Boolean,
            event_types: T::Array[Symbol],
            request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Lithic::Models::EventSubscription)
        end
        def update(
          event_subscription_token,
          # URL to which event webhooks will be sent. URL must be a valid HTTPS address.
          url:,
          # Event subscription description.
          description: nil,
          # Whether the event subscription is active (false) or inactive (true).
          disabled: nil,
          # Indicates types of events that will be sent to this subscription. If left blank,
          #   all types will be sent.
          event_types: nil,
          request_options: {}
        )
        end

        # List all the event subscriptions.
        sig do
          params(
            ending_before: String,
            page_size: Integer,
            starting_after: String,
            request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Lithic::CursorPage[Lithic::Models::EventSubscription])
        end
        def list(
          # A cursor representing an item's token before which a page of results should end.
          #   Used to retrieve the previous page of results before this item.
          ending_before: nil,
          # Page size (for pagination).
          page_size: nil,
          # A cursor representing an item's token after which a page of results should
          #   begin. Used to retrieve the next page of results after this item.
          starting_after: nil,
          request_options: {}
        )
        end

        # Delete an event subscription.
        sig do
          params(
            event_subscription_token: String,
            request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .void
        end
        def delete(event_subscription_token, request_options: {})
        end

        # List all the message attempts for a given event subscription.
        sig do
          params(
            event_subscription_token: String,
            begin_: Time,
            end_: Time,
            ending_before: String,
            page_size: Integer,
            starting_after: String,
            status: Symbol,
            request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Lithic::CursorPage[Lithic::Models::MessageAttempt])
        end
        def list_attempts(
          event_subscription_token,
          # Date string in RFC 3339 format. Only entries created after the specified time
          #   will be included. UTC time zone.
          begin_: nil,
          # Date string in RFC 3339 format. Only entries created before the specified time
          #   will be included. UTC time zone.
          end_: nil,
          # A cursor representing an item's token before which a page of results should end.
          #   Used to retrieve the previous page of results before this item.
          ending_before: nil,
          # Page size (for pagination).
          page_size: nil,
          # A cursor representing an item's token after which a page of results should
          #   begin. Used to retrieve the next page of results after this item.
          starting_after: nil,
          status: nil,
          request_options: {}
        )
        end

        # Resend all failed messages since a given time.
        sig do
          params(
            event_subscription_token: String,
            begin_: Time,
            end_: Time,
            request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .void
        end
        def recover(
          event_subscription_token,
          # Date string in RFC 3339 format. Only entries created after the specified time
          #   will be included. UTC time zone.
          begin_: nil,
          # Date string in RFC 3339 format. Only entries created before the specified time
          #   will be included. UTC time zone.
          end_: nil,
          request_options: {}
        )
        end

        # Replays messages to the endpoint. Only messages that were created after `begin`
        #   will be sent. Messages that were previously sent to the endpoint are not resent.
        #   Message will be retried if endpoint responds with a non-2xx status code. See
        #   [Retry Schedule](https://docs.lithic.com/docs/events-api#retry-schedule) for
        #   details.
        sig do
          params(
            event_subscription_token: String,
            begin_: Time,
            end_: Time,
            request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .void
        end
        def replay_missing(
          event_subscription_token,
          # Date string in RFC 3339 format. Only entries created after the specified time
          #   will be included. UTC time zone.
          begin_: nil,
          # Date string in RFC 3339 format. Only entries created before the specified time
          #   will be included. UTC time zone.
          end_: nil,
          request_options: {}
        )
        end

        # Get the secret for an event subscription.
        sig do
          params(
            event_subscription_token: String,
            request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Lithic::Models::Events::SubscriptionRetrieveSecretResponse)
        end
        def retrieve_secret(event_subscription_token, request_options: {})
        end

        # Rotate the secret for an event subscription. The previous secret will be valid
        #   for the next 24 hours.
        sig do
          params(
            event_subscription_token: String,
            request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .void
        end
        def rotate_secret(event_subscription_token, request_options: {})
        end

        # Send an example message for event.
        sig do
          params(
            event_subscription_token: String,
            event_type: Symbol,
            request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .void
        end
        def send_simulated_example(
          event_subscription_token,
          # Event type to send example message for.
          event_type: nil,
          request_options: {}
        )
        end

        sig { params(client: Lithic::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
