# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::DisputesV2Test < Lithic::Test::ResourceTest
  def test_retrieve
    response = @lithic.disputes_v2.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::DisputeV2
    end

    assert_pattern do
      response => {
        token: String,
        account_token: String,
        card_token: String,
        case_id: String | nil,
        created: Time,
        currency: String,
        disposition: Lithic::DisputeV2::Disposition | nil,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::DisputeV2::Event]),
        liability_allocation: Lithic::DisputeV2::LiabilityAllocation,
        merchant: Lithic::Merchant,
        network: Lithic::DisputeV2::Network,
        status: Lithic::DisputeV2::Status | nil,
        transaction_series: Lithic::DisputeV2::TransactionSeries | nil,
        updated: Time
      }
    end
  end

  def test_list
    response = @lithic.disputes_v2.list

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::DisputeV2
    end

    assert_pattern do
      row => {
        token: String,
        account_token: String,
        card_token: String,
        case_id: String | nil,
        created: Time,
        currency: String,
        disposition: Lithic::DisputeV2::Disposition | nil,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::DisputeV2::Event]),
        liability_allocation: Lithic::DisputeV2::LiabilityAllocation,
        merchant: Lithic::Merchant,
        network: Lithic::DisputeV2::Network,
        status: Lithic::DisputeV2::Status | nil,
        transaction_series: Lithic::DisputeV2::TransactionSeries | nil,
        updated: Time
      }
    end
  end
end
