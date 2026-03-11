# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::WebhooksTest < Lithic::Test::ResourceTest
  def test_parse_unsafe_webhook_payload
    payload = {
      event_type: "card.created",
      data: {
        token: "test_token",
        type: "SINGLE_USE",
        state: "OPEN"
      }
    }.to_json

    event = @lithic.webhooks.parse_unsafe(payload)
    assert(event)
    assert_equal("card.created", event.event_type)
  end

  def test_parse_with_valid_signature
    skip("standardwebhooks gem not installed") unless gem_installed?("standardwebhooks")

    require("standardwebhooks")

    secret = "whsec_test_secret"
    payload = '{"event_type":"card.created","card_token":"test_card_token_123"}'
    timestamp = Time.now.to_i.to_s

    wh = StandardWebhooks::Webhook.new(secret)
    signature = wh.sign("test_msg_id", timestamp, payload)

    headers = {
      "webhook-id" => "test_msg_id",
      "webhook-timestamp" => timestamp,
      "webhook-signature" => signature
    }

    event = @lithic.webhooks.parse(payload, headers: headers, secret: secret)
    assert(event)
    assert_equal(:"card.created", event.event_type)

    case event
    when Lithic::Models::CardCreatedWebhookEvent
      assert_equal("test_card_token_123", event.card_token)
    else
      flunk("Expected CardCreatedWebhookEvent, got #{event.class}")
    end
  end

  def test_parse_with_invalid_signatures
    skip("standardwebhooks gem not installed") unless gem_installed?("standardwebhooks")

    require("standardwebhooks")

    secret = "whsec_test_secret"
    payload = '{"event_type":"card.created"}'
    timestamp = Time.now.to_i.to_s

    wh = StandardWebhooks::Webhook.new(secret)
    signature = wh.sign("test_msg_id", timestamp, payload)

    headers = {
      "webhook-id" => "test_msg_id",
      "webhook-timestamp" => timestamp,
      "webhook-signature" => signature
    }

    bad_headers = [
      headers.merge("webhook-id" => "bad"),
      headers.merge("webhook-timestamp" => "0"),
      headers.merge("webhook-signature" => wh.sign("test_msg_id", timestamp, "xxx"))
    ]
    bad_headers.each do |bad_header|
      assert_raises(StandardWebhooks::WebhookVerificationError) do
        @lithic.webhooks.parse(payload, headers: bad_header, secret: secret)
      end
    end
  end

  def test_parse_with_env_var_secret
    skip("standardwebhooks gem not installed") unless gem_installed?("standardwebhooks")

    require("standardwebhooks")

    secret = "whsec_test_secret"
    payload = '{"event_type":"card.created","data":{"token":"test_token"}}'
    timestamp = Time.now.to_i.to_s

    wh = StandardWebhooks::Webhook.new(secret)
    signature = wh.sign("test_msg_id", timestamp, payload)

    headers = {
      "webhook-id" => "test_msg_id",
      "webhook-timestamp" => timestamp,
      "webhook-signature" => signature
    }

    ENV["LITHIC_WEBHOOK_SECRET"] = secret
    begin
      event = @lithic.webhooks.parse(payload, headers: headers)
      assert(event)
      assert_equal("card.created", event.event_type)
    ensure
      ENV.delete("LITHIC_WEBHOOK_SECRET")
    end
  end

  def test_parse_raises_when_secret_missing
    skip("standardwebhooks gem not installed") unless gem_installed?("standardwebhooks")

    payload = '{"event_type":"card.created"}'
    headers = {
      "webhook-id" => "test_msg_id",
      "webhook-timestamp" => Time.now.to_i.to_s,
      "webhook-signature" => "v1,invalid"
    }

    ENV.delete("LITHIC_WEBHOOK_SECRET")

    error = assert_raises(ArgumentError) do
      @lithic.webhooks.parse(payload, headers: headers)
    end

    assert_match(/LITHIC_WEBHOOK_SECRET/, error.message)
  end

  def test_verify_signature_with_valid_signature
    skip("standardwebhooks gem not installed") unless gem_installed?("standardwebhooks")

    require("standardwebhooks")

    secret = "whsec_test_secret"
    payload = '{"event_type":"card.created"}'
    timestamp = Time.now.to_i.to_s

    wh = StandardWebhooks::Webhook.new(secret)
    signature = wh.sign("test_msg_id", timestamp, payload)

    headers = {
      "webhook-id" => "test_msg_id",
      "webhook-timestamp" => timestamp,
      "webhook-signature" => signature
    }

    result = @lithic.webhooks.verify_signature(
      payload: payload,
      headers: headers,
      secret: secret
    )

    assert_equal("card.created", result[:event_type])
  end

  def test_verify_signature_raises_on_invalid_signature
    skip("standardwebhooks gem not installed") unless gem_installed?("standardwebhooks")

    require("standardwebhooks")

    secret = "whsec_test_secret"
    payload = '{"event_type":"card.created"}'

    headers = {
      "webhook-id" => "test_msg_id",
      "webhook-timestamp" => Time.now.to_i.to_s,
      "webhook-signature" => "v1,invalid_signature"
    }

    assert_raises(StandardWebhooks::WebhookVerificationError) do
      @lithic.webhooks.verify_signature(
        payload: payload,
        headers: headers,
        secret: secret
      )
    end
  end

  def test_verify_signature_with_env_var
    skip("standardwebhooks gem not installed") unless gem_installed?("standardwebhooks")

    require("standardwebhooks")

    secret = "whsec_test_secret"
    payload = '{"event_type":"card.created"}'
    timestamp = Time.now.to_i.to_s

    wh = StandardWebhooks::Webhook.new(secret)
    signature = wh.sign("test_msg_id", timestamp, payload)

    headers = {
      "webhook-id" => "test_msg_id",
      "webhook-timestamp" => timestamp,
      "webhook-signature" => signature
    }

    ENV["LITHIC_WEBHOOK_SECRET"] = secret
    begin
      result = @lithic.webhooks.verify_signature(payload: payload, headers: headers)
      assert_equal("card.created", result[:event_type])
    ensure
      ENV.delete("LITHIC_WEBHOOK_SECRET")
    end
  end

  private

  def gem_installed?(gem_name)
    require(gem_name)
    true
  rescue LoadError
    false
  end
end
