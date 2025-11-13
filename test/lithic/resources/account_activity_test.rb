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
      in Lithic::Models::AccountActivityListResponse::Internal
      in Lithic::BookTransferResponse
      in Lithic::Models::AccountActivityListResponse::Card
      in Lithic::Payment
      in Lithic::ExternalPayment
      in Lithic::ManagementOperationTransaction
      end
    end

    assert_pattern do
      case row
      in {
        family: :INTERNAL,
        token: String,
        category: Lithic::Models::AccountActivityListResponse::Internal::Category,
        created: Time,
        currency: String,
        descriptor: String,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::FinancialEvent]),
        financial_account_token: String,
        pending_amount: Integer,
        result: Lithic::Models::AccountActivityListResponse::Internal::Result,
        settled_amount: Integer,
        status: Lithic::Models::AccountActivityListResponse::Internal::Status,
        updated: Time
      }
      in {
        family: :TRANSFER,
        token: String,
        category: Lithic::BookTransferResponse::Category,
        created: Time,
        currency: String,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::BookTransferResponse::Event]),
        from_financial_account_token: String,
        pending_amount: Integer,
        result: Lithic::BookTransferResponse::Result,
        settled_amount: Integer,
        status: Lithic::BookTransferResponse::Status,
        to_financial_account_token: String,
        updated: Time,
        external_id: String | nil,
        external_resource: Lithic::ExternalResource | nil,
        transaction_series: Lithic::BookTransferResponse::TransactionSeries | nil
      }
      in {
        family: :PAYMENT,
        token: String,
        category: Lithic::Payment::Category,
        created: Time,
        descriptor: String,
        direction: Lithic::Payment::Direction,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::Payment::Event]),
        financial_account_token: String,
        method_: Lithic::Payment::Method,
        method_attributes: Lithic::Payment::MethodAttributes,
        pending_amount: Integer,
        related_account_tokens: Lithic::Payment::RelatedAccountTokens | nil,
        result: Lithic::Payment::Result,
        settled_amount: Integer,
        source: Lithic::Payment::Source,
        status: Lithic::Payment::Status,
        updated: Time,
        currency: String | nil,
        expected_release_date: Date | nil,
        external_bank_account_token: String | nil,
        type: Lithic::Payment::Type | nil,
        user_defined_id: String | nil
      }
      in {
        family: :EXTERNAL_PAYMENT,
        token: String,
        created: Time,
        status: Lithic::ExternalPayment::Status,
        updated: Time,
        category: Lithic::ExternalPayment::Category | nil,
        currency: String | nil,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::ExternalPayment::Event]) | nil,
        financial_account_token: String | nil,
        payment_type: Lithic::ExternalPayment::PaymentType | nil,
        pending_amount: Integer | nil,
        result: Lithic::ExternalPayment::Result | nil,
        settled_amount: Integer | nil,
        user_defined_id: String | nil
      }
      in {
        family: :MANAGEMENT_OPERATION,
        token: String,
        created: Time,
        status: Lithic::ManagementOperationTransaction::Status,
        updated: Time,
        category: Lithic::ManagementOperationTransaction::Category | nil,
        currency: String | nil,
        direction: Lithic::ManagementOperationTransaction::Direction | nil,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::ManagementOperationTransaction::Event]) | nil,
        external_resource: Lithic::ExternalResource | nil,
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

  def test_retrieve_transaction
    response = @lithic.account_activity.retrieve_transaction("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::AccountActivityRetrieveTransactionResponse
    end

    assert_pattern do
      case response
      in Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal
      in Lithic::BookTransferResponse
      in Lithic::Models::AccountActivityRetrieveTransactionResponse::Card
      in Lithic::Payment
      in Lithic::ExternalPayment
      in Lithic::ManagementOperationTransaction
      end
    end

    assert_pattern do
      case response
      in {
        family: :INTERNAL,
        token: String,
        category: Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category,
        created: Time,
        currency: String,
        descriptor: String,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::FinancialEvent]),
        financial_account_token: String,
        pending_amount: Integer,
        result: Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Result,
        settled_amount: Integer,
        status: Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Status,
        updated: Time
      }
      in {
        family: :TRANSFER,
        token: String,
        category: Lithic::BookTransferResponse::Category,
        created: Time,
        currency: String,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::BookTransferResponse::Event]),
        from_financial_account_token: String,
        pending_amount: Integer,
        result: Lithic::BookTransferResponse::Result,
        settled_amount: Integer,
        status: Lithic::BookTransferResponse::Status,
        to_financial_account_token: String,
        updated: Time,
        external_id: String | nil,
        external_resource: Lithic::ExternalResource | nil,
        transaction_series: Lithic::BookTransferResponse::TransactionSeries | nil
      }
      in {
        family: :PAYMENT,
        token: String,
        category: Lithic::Payment::Category,
        created: Time,
        descriptor: String,
        direction: Lithic::Payment::Direction,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::Payment::Event]),
        financial_account_token: String,
        method_: Lithic::Payment::Method,
        method_attributes: Lithic::Payment::MethodAttributes,
        pending_amount: Integer,
        related_account_tokens: Lithic::Payment::RelatedAccountTokens | nil,
        result: Lithic::Payment::Result,
        settled_amount: Integer,
        source: Lithic::Payment::Source,
        status: Lithic::Payment::Status,
        updated: Time,
        currency: String | nil,
        expected_release_date: Date | nil,
        external_bank_account_token: String | nil,
        type: Lithic::Payment::Type | nil,
        user_defined_id: String | nil
      }
      in {
        family: :EXTERNAL_PAYMENT,
        token: String,
        created: Time,
        status: Lithic::ExternalPayment::Status,
        updated: Time,
        category: Lithic::ExternalPayment::Category | nil,
        currency: String | nil,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::ExternalPayment::Event]) | nil,
        financial_account_token: String | nil,
        payment_type: Lithic::ExternalPayment::PaymentType | nil,
        pending_amount: Integer | nil,
        result: Lithic::ExternalPayment::Result | nil,
        settled_amount: Integer | nil,
        user_defined_id: String | nil
      }
      in {
        family: :MANAGEMENT_OPERATION,
        token: String,
        created: Time,
        status: Lithic::ManagementOperationTransaction::Status,
        updated: Time,
        category: Lithic::ManagementOperationTransaction::Category | nil,
        currency: String | nil,
        direction: Lithic::ManagementOperationTransaction::Direction | nil,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::ManagementOperationTransaction::Event]) | nil,
        external_resource: Lithic::ExternalResource | nil,
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
end
