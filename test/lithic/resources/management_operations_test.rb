# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::ManagementOperationsTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response =
      @lithic.management_operations.create(
        amount: 1,
        category: :MANAGEMENT_FEE,
        direction: :CREDIT,
        effective_date: "2019-12-27",
        event_type: :LOSS_WRITE_OFF,
        financial_account_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Lithic::ManagementOperationTransaction
    end

    assert_pattern do
      response => {
        token: String,
        created: Time,
        status: Lithic::ManagementOperationTransaction::Status,
        updated: Time,
        category: Lithic::ManagementOperationTransaction::Category | nil,
        currency: String | nil,
        direction: Lithic::ManagementOperationTransaction::Direction | nil,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::ManagementOperationTransaction::Event]) | nil,
        external_resource: Lithic::ExternalResource | nil,
        family: Lithic::ManagementOperationTransaction::Family | nil,
        financial_account_token: String | nil,
        pending_amount: Integer | nil,
        result: Lithic::ManagementOperationTransaction::Result | nil,
        settled_amount: Integer | nil,
        transaction_series: Lithic::ManagementOperationTransaction::TransactionSeries | nil,
        user_defined_id: String | nil
      }
    end
  end

  def test_retrieve
    response = @lithic.management_operations.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::ManagementOperationTransaction
    end

    assert_pattern do
      response => {
        token: String,
        created: Time,
        status: Lithic::ManagementOperationTransaction::Status,
        updated: Time,
        category: Lithic::ManagementOperationTransaction::Category | nil,
        currency: String | nil,
        direction: Lithic::ManagementOperationTransaction::Direction | nil,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::ManagementOperationTransaction::Event]) | nil,
        external_resource: Lithic::ExternalResource | nil,
        family: Lithic::ManagementOperationTransaction::Family | nil,
        financial_account_token: String | nil,
        pending_amount: Integer | nil,
        result: Lithic::ManagementOperationTransaction::Result | nil,
        settled_amount: Integer | nil,
        transaction_series: Lithic::ManagementOperationTransaction::TransactionSeries | nil,
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
      row => Lithic::ManagementOperationTransaction
    end

    assert_pattern do
      row => {
        token: String,
        created: Time,
        status: Lithic::ManagementOperationTransaction::Status,
        updated: Time,
        category: Lithic::ManagementOperationTransaction::Category | nil,
        currency: String | nil,
        direction: Lithic::ManagementOperationTransaction::Direction | nil,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::ManagementOperationTransaction::Event]) | nil,
        external_resource: Lithic::ExternalResource | nil,
        family: Lithic::ManagementOperationTransaction::Family | nil,
        financial_account_token: String | nil,
        pending_amount: Integer | nil,
        result: Lithic::ManagementOperationTransaction::Result | nil,
        settled_amount: Integer | nil,
        transaction_series: Lithic::ManagementOperationTransaction::TransactionSeries | nil,
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
      response => Lithic::ManagementOperationTransaction
    end

    assert_pattern do
      response => {
        token: String,
        created: Time,
        status: Lithic::ManagementOperationTransaction::Status,
        updated: Time,
        category: Lithic::ManagementOperationTransaction::Category | nil,
        currency: String | nil,
        direction: Lithic::ManagementOperationTransaction::Direction | nil,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::ManagementOperationTransaction::Event]) | nil,
        external_resource: Lithic::ExternalResource | nil,
        family: Lithic::ManagementOperationTransaction::Family | nil,
        financial_account_token: String | nil,
        pending_amount: Integer | nil,
        result: Lithic::ManagementOperationTransaction::Result | nil,
        settled_amount: Integer | nil,
        transaction_series: Lithic::ManagementOperationTransaction::TransactionSeries | nil,
        user_defined_id: String | nil
      }
    end
  end
end
