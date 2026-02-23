# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::FinancialAccounts::LoanTapeConfigurationTest < Lithic::Test::ResourceTest
  def test_retrieve
    response =
      @lithic.financial_accounts.loan_tape_configuration.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::FinancialAccounts::FinancialAccountsLoanTapeConfiguration
    end

    assert_pattern do
      response => {
        created_at: Time,
        financial_account_token: String,
        instance_token: String,
        updated_at: Time,
        credit_product_token: String | nil,
        loan_tape_rebuild_configuration: Lithic::FinancialAccounts::LoanTapeRebuildConfiguration | nil,
        tier_schedule_changed_at: Time | nil
      }
    end
  end
end
