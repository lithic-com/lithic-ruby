# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::FinancialAccounts::StatementsTest < Lithic::Test::ResourceTest
  def test_retrieve_required_params
    response =
      @lithic.financial_accounts.statements.retrieve(
        "statement_token",
        financial_account_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Lithic::Models::FinancialAccounts::Statement
    end

    assert_pattern do
      response => {
        token: String,
        account_standing: Lithic::Models::FinancialAccounts::Statement::AccountStanding,
        amount_due: Lithic::Models::FinancialAccounts::Statement::AmountDue,
        available_credit: Integer,
        created: Time,
        credit_limit: Integer,
        credit_product_token: String,
        days_in_billing_cycle: Integer,
        ending_balance: Integer,
        financial_account_token: String,
        payment_due_date: Date,
        period_totals: Lithic::Models::FinancialAccounts::Statement::PeriodTotals,
        starting_balance: Integer,
        statement_end_date: Date,
        statement_start_date: Date,
        statement_type: Lithic::Models::FinancialAccounts::Statement::StatementType,
        updated: Time,
        ytd_totals: Lithic::Models::FinancialAccounts::Statement::YtdTotals,
        interest_details: Lithic::Models::FinancialAccounts::Statement::InterestDetails | nil,
        next_payment_due_date: Date | nil,
        next_statement_end_date: Date | nil
      }
    end
  end

  def test_list
    response = @lithic.financial_accounts.statements.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::Models::FinancialAccounts::Statement
    end

    assert_pattern do
      row => {
        token: String,
        account_standing: Lithic::Models::FinancialAccounts::Statement::AccountStanding,
        amount_due: Lithic::Models::FinancialAccounts::Statement::AmountDue,
        available_credit: Integer,
        created: Time,
        credit_limit: Integer,
        credit_product_token: String,
        days_in_billing_cycle: Integer,
        ending_balance: Integer,
        financial_account_token: String,
        payment_due_date: Date,
        period_totals: Lithic::Models::FinancialAccounts::Statement::PeriodTotals,
        starting_balance: Integer,
        statement_end_date: Date,
        statement_start_date: Date,
        statement_type: Lithic::Models::FinancialAccounts::Statement::StatementType,
        updated: Time,
        ytd_totals: Lithic::Models::FinancialAccounts::Statement::YtdTotals,
        interest_details: Lithic::Models::FinancialAccounts::Statement::InterestDetails | nil,
        next_payment_due_date: Date | nil,
        next_statement_end_date: Date | nil
      }
    end
  end
end
