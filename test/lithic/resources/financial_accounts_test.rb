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
        status: Lithic::Models::FinancialAccount::Status,
        type: Lithic::Models::FinancialAccount::Type,
        updated: Time,
        account_number: String | nil,
        routing_number: String | nil,
        status_change_reason: Lithic::Models::FinancialAccount::StatusChangeReason | nil
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
        status: Lithic::Models::FinancialAccount::Status,
        type: Lithic::Models::FinancialAccount::Type,
        updated: Time,
        account_number: String | nil,
        routing_number: String | nil,
        status_change_reason: Lithic::Models::FinancialAccount::StatusChangeReason | nil
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
        status: Lithic::Models::FinancialAccount::Status,
        type: Lithic::Models::FinancialAccount::Type,
        updated: Time,
        account_number: String | nil,
        routing_number: String | nil,
        status_change_reason: Lithic::Models::FinancialAccount::StatusChangeReason | nil
      }
    end
  end

  def test_list
    response = @lithic.financial_accounts.list

    assert_pattern do
      response => Lithic::Internal::SinglePage
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
        status: Lithic::Models::FinancialAccount::Status,
        type: Lithic::Models::FinancialAccount::Type,
        updated: Time,
        account_number: String | nil,
        routing_number: String | nil,
        status_change_reason: Lithic::Models::FinancialAccount::StatusChangeReason | nil
      }
    end
  end

  def test_update_status_required_params
    response =
      @lithic.financial_accounts.update_status(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        status: :OPEN,
        status_change_reason: :CHARGED_OFF_FRAUD
      )

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
        status: Lithic::Models::FinancialAccount::Status,
        type: Lithic::Models::FinancialAccount::Type,
        updated: Time,
        account_number: String | nil,
        routing_number: String | nil,
        status_change_reason: Lithic::Models::FinancialAccount::StatusChangeReason | nil
      }
    end
  end
end
