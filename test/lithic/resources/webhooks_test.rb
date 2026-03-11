# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::WebhooksTest < Lithic::Test::ResourceTest
  def test_parsed
    key = "whsec_c2VjcmV0Cg=="

    webhook = StandardWebhooks::Webhook.new(key)

    data =
      "{\"event_type\":\"account_holder.created\",\"token\":\"00000000-0000-0000-0000-000000000001\",\"account_token\":\"00000000-0000-0000-0000-000000000001\",\"created\":\"2019-12-27T18:11:19.117Z\",\"required_documents\":[{\"entity_token\":\"182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e\",\"status_reasons\":[\"string\"],\"valid_documents\":[\"string\"]}],\"status\":\"ACCEPTED\",\"status_reason\":[\"string\"]}"
    message_id = "1"
    timestamp = Time.now.to_i.to_s
    signature = webhook.sign(message_id, timestamp, data)
    headers =
      {"webhook-id" => message_id, "webhook-timestamp" => timestamp, "webhook-signature" => signature}

    @lithic.webhooks.parsed(data, headers: headers, key: key)

    bad_headers = [
      headers.merge("webhook-id" => "bad"),
      headers.merge("webhook-timestamp" => "0"),
      headers.merge("webhook-signature" => webhook.sign(message_id, timestamp, "xxx"))
    ]
    bad_headers.each do |bad_header|
      assert_raises(StandardWebhooks::WebhookVerificationError) do
        @lithic.webhooks.parsed(data, headers: bad_header, key: key)
      end
    end
  end
end
