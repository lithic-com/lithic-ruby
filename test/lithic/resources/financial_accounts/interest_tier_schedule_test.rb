# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::FinancialAccounts::InterestTierScheduleTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response =
      @lithic.financial_accounts.interest_tier_schedule.create(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        credit_product_token: "credit_product_token",
        effective_date: "2019-12-27"
      )

    assert_pattern do
      response => Lithic::FinancialAccounts::FinancialAccountsInterestTierSchedule
    end

    assert_pattern do
      response => {
        credit_product_token: String,
        effective_date: Date,
        penalty_rates: Lithic::Internal::Type::Unknown | nil,
        tier_name: String | nil,
        tier_rates: Lithic::Internal::Type::Unknown | nil
      }
    end
  end

  def test_retrieve_required_params
    response =
      @lithic.financial_accounts.interest_tier_schedule.retrieve(
        "2019-12-27",
        financial_account_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Lithic::FinancialAccounts::FinancialAccountsInterestTierSchedule
    end

    assert_pattern do
      response => {
        credit_product_token: String,
        effective_date: Date,
        penalty_rates: Lithic::Internal::Type::Unknown | nil,
        tier_name: String | nil,
        tier_rates: Lithic::Internal::Type::Unknown | nil
      }
    end
  end

  def test_update_required_params
    response =
      @lithic.financial_accounts.interest_tier_schedule.update(
        "2019-12-27",
        financial_account_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Lithic::FinancialAccounts::FinancialAccountsInterestTierSchedule
    end

    assert_pattern do
      response => {
        credit_product_token: String,
        effective_date: Date,
        penalty_rates: Lithic::Internal::Type::Unknown | nil,
        tier_name: String | nil,
        tier_rates: Lithic::Internal::Type::Unknown | nil
      }
    end
  end

  def test_list
    response = @lithic.financial_accounts.interest_tier_schedule.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Internal::SinglePage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::FinancialAccounts::FinancialAccountsInterestTierSchedule
    end

    assert_pattern do
      row => {
        credit_product_token: String,
        effective_date: Date,
        penalty_rates: Lithic::Internal::Type::Unknown | nil,
        tier_name: String | nil,
        tier_rates: Lithic::Internal::Type::Unknown | nil
      }
    end
  end

  def test_delete_required_params
    response =
      @lithic.financial_accounts.interest_tier_schedule.delete(
        "2019-12-27",
        financial_account_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => nil
    end
  end
end
