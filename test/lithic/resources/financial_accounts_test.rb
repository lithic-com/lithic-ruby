# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::FinancialAccountsTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response = @lithic.financial_accounts.create(nickname: "nickname", type: :OPERATING)

    assert_pattern do
      response => Lithic::Models::FinancialAccount
    end

    assert_pattern do
      response => {
        token: String,
        account_token: String | nil,
        created: Time,
        credit_configuration: Lithic::Models::FinancialAccount::CreditConfiguration | nil,
        is_for_benefit_of: Lithic::BooleanModel,
        nickname: String | nil,
        type: Lithic::Models::FinancialAccount::Type,
        updated: Time,
        account_number: String | nil,
        routing_number: String | nil
      }
    end
  end

  def test_retrieve
    response = @lithic.financial_accounts.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::FinancialAccount
    end

    assert_pattern do
      response => {
        token: String,
        account_token: String | nil,
        created: Time,
        credit_configuration: Lithic::Models::FinancialAccount::CreditConfiguration | nil,
        is_for_benefit_of: Lithic::BooleanModel,
        nickname: String | nil,
        type: Lithic::Models::FinancialAccount::Type,
        updated: Time,
        account_number: String | nil,
        routing_number: String | nil
      }
    end
  end

  def test_update
    response = @lithic.financial_accounts.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::FinancialAccount
    end

    assert_pattern do
      response => {
        token: String,
        account_token: String | nil,
        created: Time,
        credit_configuration: Lithic::Models::FinancialAccount::CreditConfiguration | nil,
        is_for_benefit_of: Lithic::BooleanModel,
        nickname: String | nil,
        type: Lithic::Models::FinancialAccount::Type,
        updated: Time,
        account_number: String | nil,
        routing_number: String | nil
      }
    end
  end

  def test_list
    response = @lithic.financial_accounts.list

    assert_pattern do
      response => Lithic::SinglePage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::Models::FinancialAccount
    end

    assert_pattern do
      row => {
        token: String,
        account_token: String | nil,
        created: Time,
        credit_configuration: Lithic::Models::FinancialAccount::CreditConfiguration | nil,
        is_for_benefit_of: Lithic::BooleanModel,
        nickname: String | nil,
        type: Lithic::Models::FinancialAccount::Type,
        updated: Time,
        account_number: String | nil,
        routing_number: String | nil
      }
    end
  end

  def test_charge_off_required_params
    response =
      @lithic.financial_accounts.charge_off("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", reason: :DELINQUENT)

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
