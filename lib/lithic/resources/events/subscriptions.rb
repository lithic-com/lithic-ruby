# frozen_string_literal: true

module Lithic
  module Resources
    class Events
      class Subscriptions
        # Some parameter documentations has been truncated, see
        # {Lithic::Models::Events::SubscriptionCreateParams} for more details.
        #
        # Create a new event subscription.
        #
        # @overload create(url:, description: nil, disabled: nil, event_types: nil, request_options: {})
        #
        # @param url [String] URL to which event webhooks will be sent. URL must be a valid HTTPS address.
        #
        # @param description [String] Event subscription description.
        #
        # @param disabled [Boolean] Whether the event subscription is active (false) or inactive (true).
        #
        # @param event_types [Array<Symbol, Lithic::Events::SubscriptionCreateParams::EventType>] Indicates types of events that will be sent to this subscription. If left blank,
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::EventSubscription]
        #
        # @see Lithic::Models::Events::SubscriptionCreateParams
        def create(params)
          parsed, options = Lithic::Events::SubscriptionCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/event_subscriptions",
            body: parsed,
            model: Lithic::EventSubscription,
            options: options
          )
        end

        # Get an event subscription.
        #
        # @overload retrieve(event_subscription_token, request_options: {})
        #
        # @param event_subscription_token [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::EventSubscription]
        #
        # @see Lithic::Models::Events::SubscriptionRetrieveParams
        def retrieve(event_subscription_token, params = {})
          @client.request(
            method: :get,
            path: ["v1/event_subscriptions/%1$s", event_subscription_token],
            model: Lithic::EventSubscription,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::Events::SubscriptionUpdateParams} for more details.
        #
        # Update an event subscription.
        #
        # @overload update(event_subscription_token, url:, description: nil, disabled: nil, event_types: nil, request_options: {})
        #
        # @param event_subscription_token [String]
        #
        # @param url [String] URL to which event webhooks will be sent. URL must be a valid HTTPS address.
        #
        # @param description [String] Event subscription description.
        #
        # @param disabled [Boolean] Whether the event subscription is active (false) or inactive (true).
        #
        # @param event_types [Array<Symbol, Lithic::Events::SubscriptionUpdateParams::EventType>] Indicates types of events that will be sent to this subscription. If left blank,
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::EventSubscription]
        #
        # @see Lithic::Models::Events::SubscriptionUpdateParams
        def update(event_subscription_token, params)
          parsed, options = Lithic::Events::SubscriptionUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["v1/event_subscriptions/%1$s", event_subscription_token],
            body: parsed,
            model: Lithic::EventSubscription,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::Events::SubscriptionListParams} for more details.
        #
        # List all the event subscriptions.
        #
        # @overload list(ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
        #
        # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
        #
        # @param page_size [Integer] Page size (for pagination).
        #
        # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Internal::CursorPage<Lithic::EventSubscription>]
        #
        # @see Lithic::Models::Events::SubscriptionListParams
        def list(params = {})
          parsed, options = Lithic::Events::SubscriptionListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "v1/event_subscriptions",
            query: parsed,
            page: Lithic::Internal::CursorPage,
            model: Lithic::EventSubscription,
            options: options
          )
        end

        # Delete an event subscription.
        #
        # @overload delete(event_subscription_token, request_options: {})
        #
        # @param event_subscription_token [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Lithic::Models::Events::SubscriptionDeleteParams
        def delete(event_subscription_token, params = {})
          @client.request(
            method: :delete,
            path: ["v1/event_subscriptions/%1$s", event_subscription_token],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::Events::SubscriptionListAttemptsParams} for more details.
        #
        # List all the message attempts for a given event subscription.
        #
        # @overload list_attempts(event_subscription_token, begin_: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, status: nil, request_options: {})
        #
        # @param event_subscription_token [String]
        #
        # @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
        #
        # @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
        #
        # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
        #
        # @param page_size [Integer] Page size (for pagination).
        #
        # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
        #
        # @param status [Symbol, Lithic::Events::SubscriptionListAttemptsParams::Status]
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Internal::CursorPage<Lithic::MessageAttempt>]
        #
        # @see Lithic::Models::Events::SubscriptionListAttemptsParams
        def list_attempts(event_subscription_token, params = {})
          parsed, options = Lithic::Events::SubscriptionListAttemptsParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/event_subscriptions/%1$s/attempts", event_subscription_token],
            query: parsed.transform_keys(begin_: "begin", end_: "end"),
            page: Lithic::Internal::CursorPage,
            model: Lithic::MessageAttempt,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::Events::SubscriptionRecoverParams} for more details.
        #
        # Resend all failed messages since a given time.
        #
        # @overload recover(event_subscription_token, begin_: nil, end_: nil, request_options: {})
        #
        # @param event_subscription_token [String]
        #
        # @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
        #
        # @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Lithic::Models::Events::SubscriptionRecoverParams
        def recover(event_subscription_token, params = {})
          parsed, options = Lithic::Events::SubscriptionRecoverParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/event_subscriptions/%1$s/recover", event_subscription_token],
            query: parsed.transform_keys(begin_: "begin", end_: "end"),
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::Events::SubscriptionReplayMissingParams} for more details.
        #
        # Replays messages to the endpoint. Only messages that were created after `begin`
        # will be sent. Messages that were previously sent to the endpoint are not resent.
        # Message will be retried if endpoint responds with a non-2xx status code. See
        # [Retry Schedule](https://docs.lithic.com/docs/events-api#retry-schedule) for
        # details.
        #
        # @overload replay_missing(event_subscription_token, begin_: nil, end_: nil, request_options: {})
        #
        # @param event_subscription_token [String]
        #
        # @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
        #
        # @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Lithic::Models::Events::SubscriptionReplayMissingParams
        def replay_missing(event_subscription_token, params = {})
          parsed, options = Lithic::Events::SubscriptionReplayMissingParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/event_subscriptions/%1$s/replay_missing", event_subscription_token],
            query: parsed.transform_keys(begin_: "begin", end_: "end"),
            model: NilClass,
            options: options
          )
        end

        # Get the secret for an event subscription.
        #
        # @overload retrieve_secret(event_subscription_token, request_options: {})
        #
        # @param event_subscription_token [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::Events::SubscriptionRetrieveSecretResponse]
        #
        # @see Lithic::Models::Events::SubscriptionRetrieveSecretParams
        def retrieve_secret(event_subscription_token, params = {})
          @client.request(
            method: :get,
            path: ["v1/event_subscriptions/%1$s/secret", event_subscription_token],
            model: Lithic::Models::Events::SubscriptionRetrieveSecretResponse,
            options: params[:request_options]
          )
        end

        # Rotate the secret for an event subscription. The previous secret will be valid
        # for the next 24 hours.
        #
        # @overload rotate_secret(event_subscription_token, request_options: {})
        #
        # @param event_subscription_token [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Lithic::Models::Events::SubscriptionRotateSecretParams
        def rotate_secret(event_subscription_token, params = {})
          @client.request(
            method: :post,
            path: ["v1/event_subscriptions/%1$s/secret/rotate", event_subscription_token],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Send an example message for event.
        #
        # @overload send_simulated_example(event_subscription_token, event_type: nil, request_options: {})
        #
        # @param event_subscription_token [String]
        #
        # @param event_type [Symbol, Lithic::Events::SubscriptionSendSimulatedExampleParams::EventType] Event type to send example message for.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Lithic::Models::Events::SubscriptionSendSimulatedExampleParams
        def send_simulated_example(event_subscription_token, params = {})
          parsed, options = Lithic::Events::SubscriptionSendSimulatedExampleParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/simulate/event_subscriptions/%1$s/send_example", event_subscription_token],
            body: parsed,
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
