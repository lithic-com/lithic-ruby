# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::WebhooksTest < Lithic::Test::ResourceTest
  def test_parsed
    key = "whsec_c2VjcmV0Cg=="

    webhook = StandardWebhooks::Webhook.new(key)

    data =
      "{\"account_token\":\"00000000-0000-0000-0000-000000000002\",\"card_token\":\"00000000-0000-0000-0000-000000000001\",\"created\":\"2023-09-18T12:34:56Z\",\"digital_wallet_token_metadata\":{\"payment_account_info\":{\"account_holder_data\":{\"phone_number\":\"+15555555555\"},\"pan_unique_reference\":\"pan_unique_ref_1234567890123456789012345678\",\"payment_account_reference\":\"ref_1234567890123456789012\",\"token_unique_reference\":\"token_unique_ref_1234567890123456789012345678\"},\"status\":\"Pending\",\"payment_app_instance_id\":\"app_instance_123456789012345678901234567890\",\"token_requestor_id\":\"12345678901\",\"token_requestor_name\":\"APPLE_PAY\"},\"event_type\":\"digital_wallet.tokenization_approval_request\",\"issuer_decision\":\"APPROVED\",\"tokenization_channel\":\"DIGITAL_WALLET\",\"tokenization_token\":\"tok_1234567890abcdef\",\"wallet_decisioning_info\":{\"account_score\":\"100\",\"device_score\":\"100\",\"recommended_decision\":\"Decision1\",\"recommendation_reasons\":[\"Reason1\"]},\"customer_tokenization_decision\":{\"outcome\":\"APPROVED\",\"responder_url\":\"https://example.com\",\"latency\":\"100\",\"response_code\":\"123456\"},\"device\":{\"imei\":\"123456789012345\",\"ip_address\":\"1.1.1.1\",\"location\":\"37.3860517/-122.0838511\"},\"rule_results\":[{\"auth_rule_token\":\"550e8400-e29b-41d4-a716-446655440003\",\"explanation\":\"Account risk too high\",\"name\":\"CustomerAccountRule\",\"result\":\"DECLINED\"}],\"tokenization_decline_reasons\":[\"ACCOUNT_SCORE_1\"],\"tokenization_source\":\"PUSH_PROVISION\",\"tokenization_tfa_reasons\":[\"WALLET_RECOMMENDED_TFA\"]}"
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
