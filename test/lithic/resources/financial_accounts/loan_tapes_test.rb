# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::FinancialAccounts::LoanTapesTest < Lithic::Test::ResourceTest
  def test_retrieve_required_params
    response =
      @lithic.financial_accounts.loan_tapes.retrieve(
        "loan_tape_token",
        financial_account_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Lithic::Models::FinancialAccounts::LoanTape
    end

    assert_pattern do
      response => {
        token: String,
        account_standing: Lithic::Models::FinancialAccounts::LoanTape::AccountStanding,
        available_credit: Integer,
        balances: Lithic::Models::FinancialAccounts::LoanTape::Balances,
        created: Time,
        credit_limit: Integer,
        credit_product_token: String,
        date: Date,
        day_totals: Lithic::Models::FinancialAccounts::LoanTape::DayTotals,
        ending_balance: Integer,
        excess_credits: Integer,
        financial_account_token: String,
        interest_details: Lithic::Models::FinancialAccounts::LoanTape::InterestDetails | nil,
        minimum_payment_balance: Lithic::Models::FinancialAccounts::LoanTape::MinimumPaymentBalance,
        payment_allocation: Lithic::Models::FinancialAccounts::LoanTape::PaymentAllocation,
        period_totals: Lithic::Models::FinancialAccounts::LoanTape::PeriodTotals,
        previous_statement_balance: Lithic::Models::FinancialAccounts::LoanTape::PreviousStatementBalance,
        starting_balance: Integer,
        updated: Time,
        version: Integer,
        ytd_totals: Lithic::Models::FinancialAccounts::LoanTape::YtdTotals,
        tier: String | nil
      }
    end
  end

  def test_list
    response = @lithic.financial_accounts.loan_tapes.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::Models::FinancialAccounts::LoanTape
    end

    assert_pattern do
      row => {
        token: String,
        account_standing: Lithic::Models::FinancialAccounts::LoanTape::AccountStanding,
        available_credit: Integer,
        balances: Lithic::Models::FinancialAccounts::LoanTape::Balances,
        created: Time,
        credit_limit: Integer,
        credit_product_token: String,
        date: Date,
        day_totals: Lithic::Models::FinancialAccounts::LoanTape::DayTotals,
        ending_balance: Integer,
        excess_credits: Integer,
        financial_account_token: String,
        interest_details: Lithic::Models::FinancialAccounts::LoanTape::InterestDetails | nil,
        minimum_payment_balance: Lithic::Models::FinancialAccounts::LoanTape::MinimumPaymentBalance,
        payment_allocation: Lithic::Models::FinancialAccounts::LoanTape::PaymentAllocation,
        period_totals: Lithic::Models::FinancialAccounts::LoanTape::PeriodTotals,
        previous_statement_balance: Lithic::Models::FinancialAccounts::LoanTape::PreviousStatementBalance,
        starting_balance: Integer,
        updated: Time,
        version: Integer,
        ytd_totals: Lithic::Models::FinancialAccounts::LoanTape::YtdTotals,
        tier: String | nil
      }
    end
  end
end
