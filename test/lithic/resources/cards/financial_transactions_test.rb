# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::Cards::FinancialTransactionsTest < Lithic::Test::ResourceTest
  def test_retrieve_required_params
    response =
      @lithic.cards.financial_transactions.retrieve(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        card_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Lithic::FinancialTransaction
    end

    assert_pattern do
      response => {
        token: String,
        category: Lithic::FinancialTransaction::Category,
        created: Time,
        currency: String,
        descriptor: String,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::FinancialTransaction::Event]),
        pending_amount: Integer,
        result: Lithic::FinancialTransaction::Result,
        settled_amount: Integer,
        status: Lithic::FinancialTransaction::Status,
        updated: Time
      }
    end
  end

  def test_list
    response = @lithic.cards.financial_transactions.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Internal::SinglePage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::FinancialTransaction
    end

    assert_pattern do
      row => {
        token: String,
        category: Lithic::FinancialTransaction::Category,
        created: Time,
        currency: String,
        descriptor: String,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::FinancialTransaction::Event]),
        pending_amount: Integer,
        result: Lithic::FinancialTransaction::Result,
        settled_amount: Integer,
        status: Lithic::FinancialTransaction::Status,
        updated: Time
      }
    end
  end
end
