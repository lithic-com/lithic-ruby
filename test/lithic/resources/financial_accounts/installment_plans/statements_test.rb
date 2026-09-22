# frozen_string_literal: true

require_relative "../../../test_helper"

class Lithic::Test::Resources::FinancialAccounts::InstallmentPlans::StatementsTest < Lithic::Test::ResourceTest
  def test_retrieve_required_params
    response =
      @lithic.financial_accounts.installment_plans.statements.retrieve(
        "statement_token",
        financial_account_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        installment_plan_token: "installment_plan_token"
      )

    assert_pattern do
      response => Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement
    end

    assert_pattern do
      response => {
        token: String,
        fee_amount: Integer,
        installment_plan_token: String,
        installment_plan_total: Integer,
        installments: ^(Lithic::Internal::Type::ArrayOf[Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::Installment]),
        installments_outstanding: Integer,
        installments_paid: Integer,
        num_installments: Integer,
        principal_amount: Integer,
        source_type: Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::SourceType,
        start_date: Date,
        state: Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::State,
        total_paid: Integer
      }
    end
  end

  def test_list_required_params
    response =
      @lithic.financial_accounts.installment_plans.statements.list(
        "installment_plan_token",
        financial_account_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement
    end

    assert_pattern do
      row => {
        token: String,
        fee_amount: Integer,
        installment_plan_token: String,
        installment_plan_total: Integer,
        installments: ^(Lithic::Internal::Type::ArrayOf[Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::Installment]),
        installments_outstanding: Integer,
        installments_paid: Integer,
        num_installments: Integer,
        principal_amount: Integer,
        source_type: Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::SourceType,
        start_date: Date,
        state: Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement::State,
        total_paid: Integer
      }
    end
  end
end
