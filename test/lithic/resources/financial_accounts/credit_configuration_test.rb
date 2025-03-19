# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::FinancialAccounts::CreditConfigurationTest < Lithic::Test::ResourceTest
  def test_retrieve
    response =
      @lithic.financial_accounts.credit_configuration.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig
    end

    assert_pattern do
      response => {
        account_token: String,
        charged_off_reason: Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason | nil,
        credit_limit: Integer | nil,
        credit_product_token: String | nil,
        external_bank_account_token: String | nil,
        financial_account_state: Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState,
        is_spend_blocked: Lithic::BooleanModel,
        tier: String | nil
      }
    end
  end

  def test_update
    response = @lithic.financial_accounts.credit_configuration.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig
    end

    assert_pattern do
      response => {
        account_token: String,
        charged_off_reason: Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason | nil,
        credit_limit: Integer | nil,
        credit_product_token: String | nil,
        external_bank_account_token: String | nil,
        financial_account_state: Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState,
        is_spend_blocked: Lithic::BooleanModel,
        tier: String | nil
      }
    end
  end
end
