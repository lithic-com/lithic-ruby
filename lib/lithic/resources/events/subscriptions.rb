# frozen_string_literal: true

module Lithic
  module Resources
    class Events
      class Subscriptions
        # Create a new event subscription.
        #
        # @overload create(url:, description: nil, disabled: nil, event_types: nil, request_options: {})
        #
        # @param url [String]
        # @param description [String]
        # @param disabled [Boolean]
        # @param event_types [Array<Symbol, Lithic::Models::Events::SubscriptionCreateParams::EventType>]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::EventSubscription]
        #
        # @see Lithic::Models::Events::SubscriptionCreateParams
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
        # @overload retrieve(event_subscription_token, request_options: {})
        #
        # @param event_subscription_token [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::EventSubscription]
        #
        # @see Lithic::Models::Events::SubscriptionRetrieveParams
        def retrieve(event_subscription_token, params = {})
          @client.request(
            method: :get,
            path: ["v1/event_subscriptions/%1$s", event_subscription_token],
            model: Lithic::Models::EventSubscription,
            options: params[:request_options]
          )
        end

        # Update an event subscription.
        #
        # @overload update(event_subscription_token, url:, description: nil, disabled: nil, event_types: nil, request_options: {})
        #
        # @param event_subscription_token [String]
        # @param url [String]
        # @param description [String]
        # @param disabled [Boolean]
        # @param event_types [Array<Symbol, Lithic::Models::Events::SubscriptionUpdateParams::EventType>]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::EventSubscription]
        #
        # @see Lithic::Models::Events::SubscriptionUpdateParams
        def update(event_subscription_token, params)
          parsed, options = Lithic::Models::Events::SubscriptionUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["v1/event_subscriptions/%1$s", event_subscription_token],
            body: parsed,
            model: Lithic::Models::EventSubscription,
            options: options
          )
        end

        # List all the event subscriptions.
        #
        # @overload list(ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
        #
        # @param ending_before [String]
        # @param page_size [Integer]
        # @param starting_after [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Internal::CursorPage<Lithic::Models::EventSubscription>]
        #
        # @see Lithic::Models::Events::SubscriptionListParams
        def list(params = {})
          parsed, options = Lithic::Models::Events::SubscriptionListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "v1/event_subscriptions",
            query: parsed,
            page: Lithic::Internal::CursorPage,
            model: Lithic::Models::EventSubscription,
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

        # List all the message attempts for a given event subscription.
        #
        # @overload list_attempts(event_subscription_token, begin_: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, status: nil, request_options: {})
        #
        # @param event_subscription_token [String]
        # @param begin_ [Time]
        # @param end_ [Time]
        # @param ending_before [String]
        # @param page_size [Integer]
        # @param starting_after [String]
        # @param status [Symbol, Lithic::Models::Events::SubscriptionListAttemptsParams::Status]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Internal::CursorPage<Lithic::Models::MessageAttempt>]
        #
        # @see Lithic::Models::Events::SubscriptionListAttemptsParams
        def list_attempts(event_subscription_token, params = {})
          parsed, options = Lithic::Models::Events::SubscriptionListAttemptsParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/event_subscriptions/%1$s/attempts", event_subscription_token],
            query: parsed.transform_keys(begin_: :begin, end_: :end),
            page: Lithic::Internal::CursorPage,
            model: Lithic::Models::MessageAttempt,
            options: options
          )
        end

        # Resend all failed messages since a given time.
        #
        # @overload recover(event_subscription_token, begin_: nil, end_: nil, request_options: {})
        #
        # @param event_subscription_token [String]
        # @param begin_ [Time]
        # @param end_ [Time]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Lithic::Models::Events::SubscriptionRecoverParams
        def recover(event_subscription_token, params = {})
          parsed, options = Lithic::Models::Events::SubscriptionRecoverParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/event_subscriptions/%1$s/recover", event_subscription_token],
            query: parsed.transform_keys(begin_: :begin, end_: :end),
            model: NilClass,
            options: options
          )
        end

        # Replays messages to the endpoint. Only messages that were created after `begin`
        # will be sent. Messages that were previously sent to the endpoint are not resent.
        # Message will be retried if endpoint responds with a non-2xx status code. See
        # [Retry Schedule](https://docs.lithic.com/docs/events-api#retry-schedule) for
        # details.
        #
        # @overload replay_missing(event_subscription_token, begin_: nil, end_: nil, request_options: {})
        #
        # @param event_subscription_token [String]
        # @param begin_ [Time]
        # @param end_ [Time]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Lithic::Models::Events::SubscriptionReplayMissingParams
        def replay_missing(event_subscription_token, params = {})
          parsed, options = Lithic::Models::Events::SubscriptionReplayMissingParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/event_subscriptions/%1$s/replay_missing", event_subscription_token],
            query: parsed.transform_keys(begin_: :begin, end_: :end),
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
        # @param event_type [Symbol, Lithic::Models::Events::SubscriptionSendSimulatedExampleParams::EventType]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Lithic::Models::Events::SubscriptionSendSimulatedExampleParams
        def send_simulated_example(event_subscription_token, params = {})
          parsed, options = Lithic::Models::Events::SubscriptionSendSimulatedExampleParams.dump_request(params)
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
