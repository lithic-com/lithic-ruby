# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::Events::SubscriptionsTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response = @lithic.events.subscriptions.create(url: "https://example.com")

    assert_pattern do
      response => Lithic::Models::EventSubscription
    end

    assert_pattern do
      response => {
        token: String,
        description: String,
        disabled: Lithic::Internal::Type::Boolean,
        url: String,
        event_types: ^(Lithic::Internal::Type::ArrayOf[enum: Lithic::Models::EventSubscription::EventType]) | nil
      }
    end
  end

  def test_retrieve
    response = @lithic.events.subscriptions.retrieve("event_subscription_token")

    assert_pattern do
      response => Lithic::Models::EventSubscription
    end

    assert_pattern do
      response => {
        token: String,
        description: String,
        disabled: Lithic::Internal::Type::Boolean,
        url: String,
        event_types: ^(Lithic::Internal::Type::ArrayOf[enum: Lithic::Models::EventSubscription::EventType]) | nil
      }
    end
  end

  def test_update_required_params
    response = @lithic.events.subscriptions.update("event_subscription_token", url: "https://example.com")

    assert_pattern do
      response => Lithic::Models::EventSubscription
    end

    assert_pattern do
      response => {
        token: String,
        description: String,
        disabled: Lithic::Internal::Type::Boolean,
        url: String,
        event_types: ^(Lithic::Internal::Type::ArrayOf[enum: Lithic::Models::EventSubscription::EventType]) | nil
      }
    end
  end

  def test_list
    response = @lithic.events.subscriptions.list

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::Models::EventSubscription
    end

    assert_pattern do
      row => {
        token: String,
        description: String,
        disabled: Lithic::Internal::Type::Boolean,
        url: String,
        event_types: ^(Lithic::Internal::Type::ArrayOf[enum: Lithic::Models::EventSubscription::EventType]) | nil
      }
    end
  end

  def test_delete
    skip("Prism Mock server doesn't want Accept header, but server requires it.")

    response = @lithic.events.subscriptions.delete("event_subscription_token")

    assert_pattern do
      response => nil
    end
  end

  def test_list_attempts
    response = @lithic.events.subscriptions.list_attempts("event_subscription_token")

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::Models::MessageAttempt
    end

    assert_pattern do
      row => {
        token: String,
        created: Time,
        event_subscription_token: String,
        event_token: String,
        response: String,
        response_status_code: Integer,
        status: Lithic::Models::MessageAttempt::Status,
        url: String
      }
    end
  end

  def test_recover
    skip("Prism Mock server doesn't want Accept header, but server requires it.")

    response = @lithic.events.subscriptions.recover("event_subscription_token")

    assert_pattern do
      response => nil
    end
  end

  def test_replay_missing
    skip("Prism Mock server doesn't want Accept header, but server requires it.")

    response = @lithic.events.subscriptions.replay_missing("event_subscription_token")

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve_secret
    response = @lithic.events.subscriptions.retrieve_secret("event_subscription_token")

    assert_pattern do
      response => Lithic::Models::Events::SubscriptionRetrieveSecretResponse
    end

    assert_pattern do
      response => {
        secret: String | nil
      }
    end
  end

  def test_rotate_secret
    skip("Prism Mock server doesn't want Accept header, but server requires it.")

    response = @lithic.events.subscriptions.rotate_secret("event_subscription_token")

    assert_pattern do
      response => nil
    end
  end

  def test_send_simulated_example
    response = @lithic.events.subscriptions.send_simulated_example("event_subscription_token")

    assert_pattern do
      response => nil
    end
  end
end
