# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::AccountsTest < Lithic::Test::ResourceTest
  def test_retrieve
    response = @lithic.accounts.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Account
    end

    assert_pattern do
      response => {
        token: String,
        created: Time | nil,
        spend_limit: Lithic::Account::SpendLimit,
        state: Lithic::Account::State,
        account_holder: Lithic::Account::AccountHolder | nil,
        auth_rule_tokens: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        cardholder_currency: String | nil,
        verification_address: Lithic::Account::VerificationAddress | nil
      }
    end
  end

  def test_update
    skip("Prism returns invalid data")

    response = @lithic.accounts.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Account
    end

    assert_pattern do
      response => {
        token: String,
        created: Time | nil,
        spend_limit: Lithic::Account::SpendLimit,
        state: Lithic::Account::State,
        account_holder: Lithic::Account::AccountHolder | nil,
        auth_rule_tokens: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        cardholder_currency: String | nil,
        verification_address: Lithic::Account::VerificationAddress | nil
      }
    end
  end

  def test_list
    response = @lithic.accounts.list

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::Account
    end

    assert_pattern do
      row => {
        token: String,
        created: Time | nil,
        spend_limit: Lithic::Account::SpendLimit,
        state: Lithic::Account::State,
        account_holder: Lithic::Account::AccountHolder | nil,
        auth_rule_tokens: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        cardholder_currency: String | nil,
        verification_address: Lithic::Account::VerificationAddress | nil
      }
    end
  end

  def test_retrieve_spend_limits
    response = @lithic.accounts.retrieve_spend_limits("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::AccountSpendLimits
    end

    assert_pattern do
      response => {
        available_spend_limit: Lithic::AccountSpendLimits::AvailableSpendLimit,
        spend_limit: Lithic::AccountSpendLimits::SpendLimit | nil,
        spend_velocity: Lithic::AccountSpendLimits::SpendVelocity | nil
      }
    end
  end
end
