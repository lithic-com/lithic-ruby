# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::FinancialAccountsTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response = @lithic.financial_accounts.create(nickname: "nickname", type: :OPERATING)

    assert_pattern do
      response => Lithic::FinancialAccount
    end

    assert_pattern do
      response => {
        token: String,
        account_token: String | nil,
        created: Time,
        credit_configuration: Lithic::FinancialAccount::CreditConfiguration | nil,
        is_for_benefit_of: Lithic::Internal::Type::Boolean,
        nickname: String | nil,
        status: Lithic::FinancialAccount::Status,
        substatus: Lithic::FinancialAccount::Substatus | nil,
        type: Lithic::FinancialAccount::Type,
        updated: Time,
        user_defined_status: String | nil,
        account_number: String | nil,
        routing_number: String | nil
      }
    end
  end

  def test_retrieve
    response = @lithic.financial_accounts.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::FinancialAccount
    end

    assert_pattern do
      response => {
        token: String,
        account_token: String | nil,
        created: Time,
        credit_configuration: Lithic::FinancialAccount::CreditConfiguration | nil,
        is_for_benefit_of: Lithic::Internal::Type::Boolean,
        nickname: String | nil,
        status: Lithic::FinancialAccount::Status,
        substatus: Lithic::FinancialAccount::Substatus | nil,
        type: Lithic::FinancialAccount::Type,
        updated: Time,
        user_defined_status: String | nil,
        account_number: String | nil,
        routing_number: String | nil
      }
    end
  end

  def test_update
    response = @lithic.financial_accounts.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::FinancialAccount
    end

    assert_pattern do
      response => {
        token: String,
        account_token: String | nil,
        created: Time,
        credit_configuration: Lithic::FinancialAccount::CreditConfiguration | nil,
        is_for_benefit_of: Lithic::Internal::Type::Boolean,
        nickname: String | nil,
        status: Lithic::FinancialAccount::Status,
        substatus: Lithic::FinancialAccount::Substatus | nil,
        type: Lithic::FinancialAccount::Type,
        updated: Time,
        user_defined_status: String | nil,
        account_number: String | nil,
        routing_number: String | nil
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
      row => Lithic::FinancialAccount
    end

    assert_pattern do
      row => {
        token: String,
        account_token: String | nil,
        created: Time,
        credit_configuration: Lithic::FinancialAccount::CreditConfiguration | nil,
        is_for_benefit_of: Lithic::Internal::Type::Boolean,
        nickname: String | nil,
        status: Lithic::FinancialAccount::Status,
        substatus: Lithic::FinancialAccount::Substatus | nil,
        type: Lithic::FinancialAccount::Type,
        updated: Time,
        user_defined_status: String | nil,
        account_number: String | nil,
        routing_number: String | nil
      }
    end
  end

  def test_register_account_number_required_params
    response =
      @lithic.financial_accounts.register_account_number(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        account_number: "account_number"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_update_status_required_params
    response =
      @lithic.financial_accounts.update_status(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        status: :OPEN,
        substatus: :CHARGED_OFF_FRAUD
      )

    assert_pattern do
      response => Lithic::FinancialAccount
    end

    assert_pattern do
      response => {
        token: String,
        account_token: String | nil,
        created: Time,
        credit_configuration: Lithic::FinancialAccount::CreditConfiguration | nil,
        is_for_benefit_of: Lithic::Internal::Type::Boolean,
        nickname: String | nil,
        status: Lithic::FinancialAccount::Status,
        substatus: Lithic::FinancialAccount::Substatus | nil,
        type: Lithic::FinancialAccount::Type,
        updated: Time,
        user_defined_status: String | nil,
        account_number: String | nil,
        routing_number: String | nil
      }
    end
  end
end
