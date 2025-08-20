# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::AccountActivityTest < Lithic::Test::ResourceTest
  def test_list
    response = @lithic.account_activity.list

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::Models::AccountActivityListResponse
    end

    assert_pattern do
      case row
      in Lithic::Models::AccountActivityListResponse::FinancialTransaction
      in Lithic::Models::AccountActivityListResponse::BookTransferTransaction
      in Lithic::Models::AccountActivityListResponse::CardTransaction
      in Lithic::Models::AccountActivityListResponse::PaymentTransaction
      in Lithic::ExternalPayment
      in Lithic::ManagementOperationTransaction
      end
    end
  end

  def test_retrieve_transaction
    response = @lithic.account_activity.retrieve_transaction("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::AccountActivityRetrieveTransactionResponse
    end

    assert_pattern do
      case response
      in Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction
      in Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction
      in Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction
      in Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction
      in Lithic::ExternalPayment
      in Lithic::ManagementOperationTransaction
      end
    end
  end
end
