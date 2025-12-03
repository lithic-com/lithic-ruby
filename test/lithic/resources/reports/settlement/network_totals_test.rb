# frozen_string_literal: true

require_relative "../../../test_helper"

class Lithic::Test::Resources::Reports::Settlement::NetworkTotalsTest < Lithic::Test::ResourceTest
  def test_retrieve
    response = @lithic.reports.settlement.network_totals.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::NetworkTotal
    end

    assert_pattern do
      response => {
        token: String,
        amounts: Lithic::NetworkTotal::Amounts,
        created: Time,
        currency: String,
        institution_id: String,
        is_complete: Lithic::Internal::Type::Boolean,
        network: Lithic::NetworkTotal::Network,
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
      row => Lithic::NetworkTotal
    end

    assert_pattern do
      row => {
        token: String,
        amounts: Lithic::NetworkTotal::Amounts,
        created: Time,
        currency: String,
        institution_id: String,
        is_complete: Lithic::Internal::Type::Boolean,
        network: Lithic::NetworkTotal::Network,
        report_date: Date,
        settlement_institution_id: String,
        settlement_service: String,
        updated: Time,
        cycle: Integer | nil
      }
    end
  end
end
