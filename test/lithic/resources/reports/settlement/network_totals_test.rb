# frozen_string_literal: true

require_relative "../../../test_helper"

class Lithic::Test::Resources::Reports::Settlement::NetworkTotalsTest < Lithic::Test::ResourceTest
  def test_retrieve
    response = @lithic.reports.settlement.network_totals.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::Reports::Settlement::NetworkTotalRetrieveResponse
    end

    assert_pattern do
      response => {
        token: String,
        amounts: Lithic::Models::Reports::Settlement::NetworkTotalRetrieveResponse::Amounts,
        created: Time,
        currency: String,
        institution_id: String,
        network: Lithic::Models::Reports::Settlement::NetworkTotalRetrieveResponse::Network,
        report_date: Date,
        settlement_institution_id: String,
        settlement_service: String,
        updated: Time,
        cycle: Integer | nil
      }
    end
  end

  def test_list
    response = @lithic.reports.settlement.network_totals.list

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::Models::Reports::Settlement::NetworkTotalListResponse
    end

    assert_pattern do
      row => {
        token: String,
        amounts: Lithic::Models::Reports::Settlement::NetworkTotalListResponse::Amounts,
        created: Time,
        currency: String,
        institution_id: String,
        network: Lithic::Models::Reports::Settlement::NetworkTotalListResponse::Network,
        report_date: Date,
        settlement_institution_id: String,
        settlement_service: String,
        updated: Time,
        cycle: Integer | nil
      }
    end
  end
end
