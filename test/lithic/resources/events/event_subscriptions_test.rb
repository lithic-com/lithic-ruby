# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::Events::EventSubscriptionsTest < Lithic::Test::ResourceTest
  def test_resend_required_params
    response =
      @lithic.events.event_subscriptions.resend("event_subscription_token", event_token: "event_token")

    assert_pattern do
      response => nil
    end
  end
end
