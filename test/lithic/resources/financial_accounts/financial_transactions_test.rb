# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::FinancialAccounts::FinancialTransactionsTest < Lithic::Test::ResourceTest
  def test_retrieve_required_params
    response =
      @lithic.financial_accounts.financial_transactions.retrieve(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        financial_account_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Lithic::Models::FinancialTransaction
    end

    assert_pattern do
      response => {
        token: String,
        category: Lithic::Models::FinancialTransaction::Category,
        created: Time,
        currency: String,
        descriptor: String,
        events: ^(Lithic::ArrayOf[Lithic::Models::FinancialTransaction::Event]),
        pending_amount: Integer,
        result: Lithic::Models::FinancialTransaction::Result,
        settled_amount: Integer,
        status: Lithic::Models::FinancialTransaction::Status,
        updated: Time
      }
    end
  end

  def test_list
    response = @lithic.financial_accounts.financial_transactions.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::SinglePage
    end

    row = response.to_enum.first
    assert_pattern do
      row => Lithic::Models::FinancialTransaction
    end

    assert_pattern do
      row => {
        token: String,
        category: Lithic::Models::FinancialTransaction::Category,
        created: Time,
        currency: String,
        descriptor: String,
        events: ^(Lithic::ArrayOf[Lithic::Models::FinancialTransaction::Event]),
        pending_amount: Integer,
        result: Lithic::Models::FinancialTransaction::Result,
        settled_amount: Integer,
        status: Lithic::Models::FinancialTransaction::Status,
        updated: Time
      }
    end
  end
end
