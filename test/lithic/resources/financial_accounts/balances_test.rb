# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::FinancialAccounts::BalancesTest < Lithic::Test::ResourceTest
  def test_list
    response = @lithic.financial_accounts.balances.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::SinglePage
    end

    row = response.to_enum.first
    assert_pattern do
      row => Lithic::Models::FinancialAccounts::BalanceListResponse
    end

    assert_pattern do
      row => {
        token: String,
        available_amount: Integer,
        created: Time,
        currency: String,
        last_transaction_event_token: String,
        last_transaction_token: String,
        pending_amount: Integer,
        total_amount: Integer,
        type: Lithic::Models::FinancialAccounts::BalanceListResponse::Type,
        updated: Time
      }
    end
  end
end
