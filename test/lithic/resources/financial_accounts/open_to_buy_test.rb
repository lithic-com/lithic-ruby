# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::FinancialAccounts::OpenToBuyTest < Lithic::Test::ResourceTest
  def test_retrieve
    response = @lithic.financial_accounts.open_to_buy.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::FinancialAccounts::FinancialAccountsOpenToBuy
    end

    assert_pattern do
      response => {
        open_to_buy: Integer,
        summary: Lithic::FinancialAccounts::OpenToBuySummary
      }
    end
  end
end
