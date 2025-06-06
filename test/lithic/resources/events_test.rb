# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::EventsTest < Lithic::Test::ResourceTest
  def test_retrieve
    response = @lithic.events.retrieve("event_token")

    assert_pattern do
      response => Lithic::Event
    end

    assert_pattern do
      response => {
        token: String,
        created: Time,
        event_type: Lithic::Event::EventType,
        payload: ^(Lithic::Internal::Type::HashOf[Lithic::Internal::Type::Unknown])
      }
    end
  end

  def test_list
    response = @lithic.events.list

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::Event
    end

    assert_pattern do
      row => {
        token: String,
        created: Time,
        event_type: Lithic::Event::EventType,
        payload: ^(Lithic::Internal::Type::HashOf[Lithic::Internal::Type::Unknown])
      }
    end
  end

  def test_list_attempts
    response = @lithic.events.list_attempts("event_token")

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::MessageAttempt
    end

    assert_pattern do
      row => {
        token: String,
        created: Time,
        event_subscription_token: String,
        event_token: String,
        response: String,
        response_status_code: Integer,
        status: Lithic::MessageAttempt::Status,
        url: String
      }
    end
  end
end
