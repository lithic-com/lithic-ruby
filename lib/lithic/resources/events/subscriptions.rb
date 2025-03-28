# frozen_string_literal: true

module Lithic
  module Resources
    class Events
      class Subscriptions
        # Create a new event subscription.
        #
        # @param params [Lithic::Models::Events::SubscriptionCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :url URL to which event webhooks will be sent. URL must be a valid HTTPS address.
        #
        #   @option params [String] :description Event subscription description.
        #
        #   @option params [Boolean] :disabled Whether the event subscription is active (false) or inactive (true).
        #
        #   @option params [Array<Symbol, Lithic::Models::Events::SubscriptionCreateParams::EventType>] :event_types Indicates types of events that will be sent to this subscription. If left blank,
        #     all types will be sent.
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::EventSubscription]
        def create(params)
          parsed, options = Lithic::Models::Events::SubscriptionCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/event_subscriptions",
            body: parsed,
            model: Lithic::Models::EventSubscription,
            options: options
          )
        end

        # Get an event subscription.
        #
        # @param event_subscription_token [String]
        #
        # @param params [Lithic::Models::Events::SubscriptionRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::EventSubscription]
        def retrieve(event_subscription_token, params = {})
          @client.request(
            method: :get,
            path: ["v1/event_subscriptions/%0s", event_subscription_token],
            model: Lithic::Models::EventSubscription,
            options: params[:request_options]
          )
        end

        # Update an event subscription.
        #
        # @param event_subscription_token [String]
        #
        # @param params [Lithic::Models::Events::SubscriptionUpdateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :url URL to which event webhooks will be sent. URL must be a valid HTTPS address.
        #
        #   @option params [String] :description Event subscription description.
        #
        #   @option params [Boolean] :disabled Whether the event subscription is active (false) or inactive (true).
        #
        #   @option params [Array<Symbol, Lithic::Models::Events::SubscriptionUpdateParams::EventType>] :event_types Indicates types of events that will be sent to this subscription. If left blank,
        #     all types will be sent.
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::EventSubscription]
        def update(event_subscription_token, params)
          parsed, options = Lithic::Models::Events::SubscriptionUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["v1/event_subscriptions/%0s", event_subscription_token],
            body: parsed,
            model: Lithic::Models::EventSubscription,
            options: options
          )
        end

        # List all the event subscriptions.
        #
        # @param params [Lithic::Models::Events::SubscriptionListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :ending_before A cursor representing an item's token before which a page of results should end.
        #     Used to retrieve the previous page of results before this item.
        #
        #   @option params [Integer] :page_size Page size (for pagination).
        #
        #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
        #     begin. Used to retrieve the next page of results after this item.
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::CursorPage<Lithic::Models::EventSubscription>]
        def list(params = {})
          parsed, options = Lithic::Models::Events::SubscriptionListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "v1/event_subscriptions",
            query: parsed,
            page: Lithic::CursorPage,
            model: Lithic::Models::EventSubscription,
            options: options
          )
        end

        # Delete an event subscription.
        #
        # @param event_subscription_token [String]
        #
        # @param params [Lithic::Models::Events::SubscriptionDeleteParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        def delete(event_subscription_token, params = {})
          @client.request(
            method: :delete,
            path: ["v1/event_subscriptions/%0s", event_subscription_token],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # List all the message attempts for a given event subscription.
        #
        # @param event_subscription_token [String]
        #
        # @param params [Lithic::Models::Events::SubscriptionListAttemptsParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Time] :begin_ Date string in RFC 3339 format. Only entries created after the specified time
        #     will be included. UTC time zone.
        #
        #   @option params [Time] :end_ Date string in RFC 3339 format. Only entries created before the specified time
        #     will be included. UTC time zone.
        #
        #   @option params [String] :ending_before A cursor representing an item's token before which a page of results should end.
        #     Used to retrieve the previous page of results before this item.
        #
        #   @option params [Integer] :page_size Page size (for pagination).
        #
        #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
        #     begin. Used to retrieve the next page of results after this item.
        #
        #   @option params [Symbol, Lithic::Models::Events::SubscriptionListAttemptsParams::Status] :status
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::CursorPage<Lithic::Models::MessageAttempt>]
        def list_attempts(event_subscription_token, params = {})
          parsed, options = Lithic::Models::Events::SubscriptionListAttemptsParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/event_subscriptions/%0s/attempts", event_subscription_token],
            query: parsed,
            page: Lithic::CursorPage,
            model: Lithic::Models::MessageAttempt,
            options: options
          )
        end

        # Resend all failed messages since a given time.
        #
        # @param event_subscription_token [String]
        #
        # @param params [Lithic::Models::Events::SubscriptionRecoverParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Time] :begin_ Date string in RFC 3339 format. Only entries created after the specified time
        #     will be included. UTC time zone.
        #
        #   @option params [Time] :end_ Date string in RFC 3339 format. Only entries created before the specified time
        #     will be included. UTC time zone.
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        def recover(event_subscription_token, params = {})
          parsed, options = Lithic::Models::Events::SubscriptionRecoverParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/event_subscriptions/%0s/recover", event_subscription_token],
            query: parsed,
            model: NilClass,
            options: options
          )
        end

        # Replays messages to the endpoint. Only messages that were created after `begin`
        #   will be sent. Messages that were previously sent to the endpoint are not resent.
        #   Message will be retried if endpoint responds with a non-2xx status code. See
        #   [Retry Schedule](https://docs.lithic.com/docs/events-api#retry-schedule) for
        #   details.
        #
        # @param event_subscription_token [String]
        #
        # @param params [Lithic::Models::Events::SubscriptionReplayMissingParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Time] :begin_ Date string in RFC 3339 format. Only entries created after the specified time
        #     will be included. UTC time zone.
        #
        #   @option params [Time] :end_ Date string in RFC 3339 format. Only entries created before the specified time
        #     will be included. UTC time zone.
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        def replay_missing(event_subscription_token, params = {})
          parsed, options = Lithic::Models::Events::SubscriptionReplayMissingParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/event_subscriptions/%0s/replay_missing", event_subscription_token],
            query: parsed,
            model: NilClass,
            options: options
          )
        end

        # Get the secret for an event subscription.
        #
        # @param event_subscription_token [String]
        #
        # @param params [Lithic::Models::Events::SubscriptionRetrieveSecretParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::Events::SubscriptionRetrieveSecretResponse]
        def retrieve_secret(event_subscription_token, params = {})
          @client.request(
            method: :get,
            path: ["v1/event_subscriptions/%0s/secret", event_subscription_token],
            model: Lithic::Models::Events::SubscriptionRetrieveSecretResponse,
            options: params[:request_options]
          )
        end

        # Rotate the secret for an event subscription. The previous secret will be valid
        #   for the next 24 hours.
        #
        # @param event_subscription_token [String]
        #
        # @param params [Lithic::Models::Events::SubscriptionRotateSecretParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        def rotate_secret(event_subscription_token, params = {})
          @client.request(
            method: :post,
            path: ["v1/event_subscriptions/%0s/secret/rotate", event_subscription_token],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Send an example message for event.
        #
        # @param event_subscription_token [String]
        #
        # @param params [Lithic::Models::Events::SubscriptionSendSimulatedExampleParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Symbol, Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType] :event_type Event type to send example message for.
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        def send_simulated_example(event_subscription_token, params = {})
          parsed, options = Lithic::Models::Events::SubscriptionSendSimulatedExampleParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/simulate/event_subscriptions/%0s/send_example", event_subscription_token],
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # @param client [Lithic::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
