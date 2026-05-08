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
        comment: String | nil,
        substatus: Lithic::Account::Substatus | nil,
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
        comment: String | nil,
        substatus: Lithic::Account::Substatus | nil,
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
        comment: String | nil,
        substatus: Lithic::Account::Substatus | nil,
        verification_address: Lithic::Account::VerificationAddress | nil
      }
    end
  end

  def test_retrieve_signals
    response = @lithic.accounts.retrieve_signals("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::SignalsResponse
    end

    assert_pattern do
      response => {
        approved_txn_amount_m2: Float | nil,
        approved_txn_amount_m2_30d: Float | nil,
        approved_txn_amount_m2_7d: Float | nil,
        approved_txn_amount_m2_90d: Float | nil,
        approved_txn_count: Integer | nil,
        approved_txn_count_30d: Integer | nil,
        approved_txn_count_7d: Integer | nil,
        approved_txn_count_90d: Integer | nil,
        avg_transaction_amount: Float | nil,
        avg_transaction_amount_30d: Float | nil,
        avg_transaction_amount_7d: Float | nil,
        avg_transaction_amount_90d: Float | nil,
        distinct_country_count: Integer | nil,
        distinct_mcc_count: Integer | nil,
        first_txn_at: Time | nil,
        is_first_transaction: Lithic::Internal::Type::Boolean | nil,
        last_cp_country: String | nil,
        last_cp_postal_code: String | nil,
        last_cp_timestamp: Time | nil,
        last_txn_approved_at: Time | nil,
        seen_countries: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        seen_mccs: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        seen_merchants: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        stdev_transaction_amount: Float | nil,
        stdev_transaction_amount_30d: Float | nil,
        stdev_transaction_amount_7d: Float | nil,
        stdev_transaction_amount_90d: Float | nil,
        three_ds_success_count: Integer | nil,
        three_ds_success_rate: Float | nil,
        three_ds_total_count: Integer | nil,
        time_since_last_transaction_days: Float | nil
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
