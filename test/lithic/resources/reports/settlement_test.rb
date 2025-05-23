# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::Reports::SettlementTest < Lithic::Test::ResourceTest
  def test_list_details
    response = @lithic.reports.settlement.list_details("2019-12-27")

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::SettlementDetail
    end

    assert_pattern do
      row => {
        token: String,
        account_token: String,
        card_program_token: String,
        card_token: String,
        created: Time,
        currency: String,
        disputes_gross_amount: Integer,
        event_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        institution: String,
        interchange_fee_extended_precision: Integer,
        interchange_gross_amount: Integer,
        network: Lithic::SettlementDetail::Network,
        other_fees_details: Lithic::SettlementDetail::OtherFeesDetails,
        other_fees_gross_amount: Integer,
        report_date: String,
        settlement_date: String,
        transaction_token: String,
        transactions_gross_amount: Integer,
        type: Lithic::SettlementDetail::Type,
        updated: Time,
        fee_description: String | nil
      }
    end
  end

  def test_summary
    response = @lithic.reports.settlement.summary("2019-12-27")

    assert_pattern do
      response => Lithic::SettlementReport
    end

    assert_pattern do
      response => {
        created: Time,
        currency: String,
        details: ^(Lithic::Internal::Type::ArrayOf[Lithic::SettlementSummaryDetails]),
        disputes_gross_amount: Integer,
        interchange_gross_amount: Integer,
        is_complete: Lithic::Internal::Type::Boolean,
        other_fees_gross_amount: Integer,
        report_date: String,
        settled_net_amount: Integer,
        transactions_gross_amount: Integer,
        updated: Time
      }
    end
  end
end
