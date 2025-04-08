# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::ManagementOperationsTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response =
      @lithic.management_operations.create(
        amount: 0,
        category: :MANAGEMENT_FEE,
        direction: :CREDIT,
        effective_date: "2019-12-27",
        event_type: :CASH_BACK,
        financial_account_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Lithic::Models::ManagementOperationTransaction
    end

    assert_pattern do
      response => {
        token: String,
        category: Lithic::Models::ManagementOperationTransaction::Category,
        created: Time,
        currency: String,
        direction: Lithic::Models::ManagementOperationTransaction::Direction,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::ManagementOperationTransaction::Event]),
        financial_account_token: String,
        pending_amount: Integer,
        result: Lithic::Models::ManagementOperationTransaction::Result,
        settled_amount: Integer,
        status: Lithic::Models::ManagementOperationTransaction::Status,
        transaction_series: Lithic::Models::ManagementOperationTransaction::TransactionSeries | nil,
        updated: Time,
        user_defined_id: String | nil
      }
    end
  end

  def test_retrieve
    response = @lithic.management_operations.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::ManagementOperationTransaction
    end

    assert_pattern do
      response => {
        token: String,
        category: Lithic::Models::ManagementOperationTransaction::Category,
        created: Time,
        currency: String,
        direction: Lithic::Models::ManagementOperationTransaction::Direction,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::ManagementOperationTransaction::Event]),
        financial_account_token: String,
        pending_amount: Integer,
        result: Lithic::Models::ManagementOperationTransaction::Result,
        settled_amount: Integer,
        status: Lithic::Models::ManagementOperationTransaction::Status,
        transaction_series: Lithic::Models::ManagementOperationTransaction::TransactionSeries | nil,
        updated: Time,
        user_defined_id: String | nil
      }
    end
  end

  def test_list
    response = @lithic.management_operations.list

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::Models::ManagementOperationTransaction
    end

    assert_pattern do
      row => {
        token: String,
        category: Lithic::Models::ManagementOperationTransaction::Category,
        created: Time,
        currency: String,
        direction: Lithic::Models::ManagementOperationTransaction::Direction,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::ManagementOperationTransaction::Event]),
        financial_account_token: String,
        pending_amount: Integer,
        result: Lithic::Models::ManagementOperationTransaction::Result,
        settled_amount: Integer,
        status: Lithic::Models::ManagementOperationTransaction::Status,
        transaction_series: Lithic::Models::ManagementOperationTransaction::TransactionSeries | nil,
        updated: Time,
        user_defined_id: String | nil
      }
    end
  end

  def test_reverse_required_params
    response =
      @lithic.management_operations.reverse(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        effective_date: "2019-12-27"
      )

    assert_pattern do
      response => Lithic::Models::ManagementOperationTransaction
    end

    assert_pattern do
      response => {
        token: String,
        category: Lithic::Models::ManagementOperationTransaction::Category,
        created: Time,
        currency: String,
        direction: Lithic::Models::ManagementOperationTransaction::Direction,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::ManagementOperationTransaction::Event]),
        financial_account_token: String,
        pending_amount: Integer,
        result: Lithic::Models::ManagementOperationTransaction::Result,
        settled_amount: Integer,
        status: Lithic::Models::ManagementOperationTransaction::Status,
        transaction_series: Lithic::Models::ManagementOperationTransaction::TransactionSeries | nil,
        updated: Time,
        user_defined_id: String | nil
      }
    end
  end
end
