# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::FundingEventsTest < Lithic::Test::ResourceTest
  def test_retrieve
    response = @lithic.funding_events.retrieve("funding_event_token")

    assert_pattern do
      response => Lithic::Models::FundingEventRetrieveResponse
    end

    assert_pattern do
      response => {
        token: String,
        collection_resource_type: Lithic::Models::FundingEventRetrieveResponse::CollectionResourceType,
        collection_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        created: Time,
        high_watermark: Time,
        network_settlement_summary: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::FundingEventRetrieveResponse::NetworkSettlementSummary]),
        previous_high_watermark: Time,
        updated: Time
      }
    end
  end

  def test_list
    response = @lithic.funding_events.list

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::Models::FundingEventListResponse
    end

    assert_pattern do
      row => {
        token: String,
        collection_resource_type: Lithic::Models::FundingEventListResponse::CollectionResourceType,
        collection_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        created: Time,
        high_watermark: Time,
        network_settlement_summary: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::FundingEventListResponse::NetworkSettlementSummary]),
        previous_high_watermark: Time,
        updated: Time
      }
    end
  end

  def test_retrieve_details
    response = @lithic.funding_events.retrieve_details("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::FundingEventRetrieveDetailsResponse
    end

    assert_pattern do
      response => {
        token: String,
        settlement_details_url: String,
        settlement_summary_url: String
      }
    end
  end
end
