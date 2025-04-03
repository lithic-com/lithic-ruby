# frozen_string_literal: true

require_relative "../../../test_helper"

class Lithic::Test::Resources::FinancialAccounts::Statements::LineItemsTest < Lithic::Test::ResourceTest
  def test_list_required_params
    response =
      @lithic.financial_accounts.statements.line_items.list(
        "statement_token",
        financial_account_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data
    end

    assert_pattern do
      row => {
        token: String,
        amount: Integer,
        category: Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::Category,
        created: Time,
        currency: String,
        effective_date: Date,
        event_type: Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType,
        financial_account_token: String,
        financial_transaction_event_token: String,
        financial_transaction_token: String,
        card_token: String | nil,
        descriptor: String | nil
      }
    end
  end
end
