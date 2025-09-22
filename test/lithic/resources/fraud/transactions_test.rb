# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::Fraud::TransactionsTest < Lithic::Test::ResourceTest
  def test_retrieve
    response = @lithic.fraud.transactions.retrieve("00000000-0000-0000-0000-000000000000")

    assert_pattern do
      response => Lithic::Models::Fraud::TransactionRetrieveResponse
    end

    assert_pattern do
      response => {
        fraud_status: Lithic::Models::Fraud::TransactionRetrieveResponse::FraudStatus,
        transaction_token: String,
        comment: String | nil,
        created_at: Time | nil,
        fraud_type: Lithic::Models::Fraud::TransactionRetrieveResponse::FraudType | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_report_required_params
    response =
      @lithic.fraud.transactions.report(
        "00000000-0000-0000-0000-000000000000",
        fraud_status: :SUSPECTED_FRAUD
      )

    assert_pattern do
      response => Lithic::Models::Fraud::TransactionReportResponse
    end

    assert_pattern do
      response => {
        fraud_status: Lithic::Models::Fraud::TransactionReportResponse::FraudStatus,
        transaction_token: String,
        comment: String | nil,
        created_at: Time | nil,
        fraud_type: Lithic::Models::Fraud::TransactionReportResponse::FraudType | nil,
        updated_at: Time | nil
      }
    end
  end
end
