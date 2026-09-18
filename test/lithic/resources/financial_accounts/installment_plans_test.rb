# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::FinancialAccounts::InstallmentPlansTest < Lithic::Test::ResourceTest
  def test_retrieve_required_params
    response =
      @lithic.financial_accounts.installment_plans.retrieve(
        "installment_plan_token",
        financial_account_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Lithic::FinancialAccounts::InstallmentPlan
    end

    assert_pattern do
      response => {
        token: String,
        closed_at: Date | nil,
        created: Time,
        fee_amount: Integer,
        financial_account_token: String,
        installment_plan_total: Integer,
        installments: ^(Lithic::Internal::Type::ArrayOf[Lithic::FinancialAccounts::InstallmentPlan::Installment]),
        installments_outstanding: Integer,
        installments_paid: Integer,
        num_installments: Integer,
        principal_amount: Integer,
        source_amounts: Lithic::FinancialAccounts::TransactionCategoryBalances | nil,
        source_id: String,
        source_type: Lithic::FinancialAccounts::InstallmentPlan::SourceType,
        start_date: Date,
        state: Lithic::FinancialAccounts::InstallmentPlan::State,
        total_paid: Integer,
        updated: Time
      }
    end
  end

  def test_list
    response = @lithic.financial_accounts.installment_plans.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::FinancialAccounts::InstallmentPlan
    end

    assert_pattern do
      row => {
        token: String,
        closed_at: Date | nil,
        created: Time,
        fee_amount: Integer,
        financial_account_token: String,
        installment_plan_total: Integer,
        installments: ^(Lithic::Internal::Type::ArrayOf[Lithic::FinancialAccounts::InstallmentPlan::Installment]),
        installments_outstanding: Integer,
        installments_paid: Integer,
        num_installments: Integer,
        principal_amount: Integer,
        source_amounts: Lithic::FinancialAccounts::TransactionCategoryBalances | nil,
        source_id: String,
        source_type: Lithic::FinancialAccounts::InstallmentPlan::SourceType,
        start_date: Date,
        state: Lithic::FinancialAccounts::InstallmentPlan::State,
        total_paid: Integer,
        updated: Time
      }
    end
  end
end
