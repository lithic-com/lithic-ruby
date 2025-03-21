# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::AggregateBalancesTest < Lithic::Test::ResourceTest
  def test_list
    response = @lithic.aggregate_balances.list

    assert_pattern do
      response => Lithic::SinglePage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::Models::AggregateBalance
    end

    assert_pattern do
      row => {
        available_amount: Integer,
        created: Time,
        currency: String,
        financial_account_type: Lithic::Models::AggregateBalance::FinancialAccountType,
        last_financial_account_token: String,
        last_transaction_event_token: String,
        last_transaction_token: String,
        pending_amount: Integer,
        total_amount: Integer,
        updated: Time
      }
    end
  end
end
