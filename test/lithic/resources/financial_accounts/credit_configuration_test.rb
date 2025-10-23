# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::FinancialAccounts::CreditConfigurationTest < Lithic::Test::ResourceTest
  def test_retrieve
    response =
      @lithic.financial_accounts.credit_configuration.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::FinancialAccounts::FinancialAccountCreditConfig
    end

    assert_pattern do
      response => {
        account_token: String,
        auto_collection_configuration: Lithic::FinancialAccounts::FinancialAccountCreditConfig::AutoCollectionConfiguration,
        credit_limit: Integer | nil,
        credit_product_token: String | nil,
        external_bank_account_token: String | nil,
        tier: String | nil,
        charged_off_reason: Lithic::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason | nil,
        financial_account_state: Lithic::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState | nil,
        is_spend_blocked: Lithic::Internal::Type::Boolean | nil
      }
    end
  end

  def test_update
    response = @lithic.financial_accounts.credit_configuration.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::FinancialAccounts::FinancialAccountCreditConfig
    end

    assert_pattern do
      response => {
        account_token: String,
        auto_collection_configuration: Lithic::FinancialAccounts::FinancialAccountCreditConfig::AutoCollectionConfiguration,
        credit_limit: Integer | nil,
        credit_product_token: String | nil,
        external_bank_account_token: String | nil,
        tier: String | nil,
        charged_off_reason: Lithic::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason | nil,
        financial_account_state: Lithic::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState | nil,
        is_spend_blocked: Lithic::Internal::Type::Boolean | nil
      }
    end
  end
end
