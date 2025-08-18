# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::BookTransfersTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response =
      @lithic.book_transfers.create(
        amount: 1,
        category: :ADJUSTMENT,
        from_financial_account_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        subtype: "subtype",
        to_financial_account_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        type: :ATM_WITHDRAWAL
      )

    assert_pattern do
      response => Lithic::BookTransferResponse
    end

    assert_pattern do
      response => {
        token: String,
        category: Lithic::BookTransferResponse::Category,
        created: Time,
        currency: String,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::BookTransferResponse::Event]),
        external_id: String | nil,
        external_resource: Lithic::ExternalResource | nil,
        from_financial_account_token: String,
        pending_amount: Integer,
        result: Lithic::BookTransferResponse::Result,
        settled_amount: Integer,
        status: Lithic::BookTransferResponse::Status,
        to_financial_account_token: String,
        transaction_series: Lithic::BookTransferResponse::TransactionSeries | nil,
        updated: Time
      }
    end
  end

  def test_retrieve
    response = @lithic.book_transfers.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::BookTransferResponse
    end

    assert_pattern do
      response => {
        token: String,
        category: Lithic::BookTransferResponse::Category,
        created: Time,
        currency: String,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::BookTransferResponse::Event]),
        external_id: String | nil,
        external_resource: Lithic::ExternalResource | nil,
        from_financial_account_token: String,
        pending_amount: Integer,
        result: Lithic::BookTransferResponse::Result,
        settled_amount: Integer,
        status: Lithic::BookTransferResponse::Status,
        to_financial_account_token: String,
        transaction_series: Lithic::BookTransferResponse::TransactionSeries | nil,
        updated: Time
      }
    end
  end

  def test_list
    response = @lithic.book_transfers.list

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::BookTransferResponse
    end

    assert_pattern do
      row => {
        token: String,
        category: Lithic::BookTransferResponse::Category,
        created: Time,
        currency: String,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::BookTransferResponse::Event]),
        external_id: String | nil,
        external_resource: Lithic::ExternalResource | nil,
        from_financial_account_token: String,
        pending_amount: Integer,
        result: Lithic::BookTransferResponse::Result,
        settled_amount: Integer,
        status: Lithic::BookTransferResponse::Status,
        to_financial_account_token: String,
        transaction_series: Lithic::BookTransferResponse::TransactionSeries | nil,
        updated: Time
      }
    end
  end

  def test_reverse
    response = @lithic.book_transfers.reverse("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::BookTransferResponse
    end

    assert_pattern do
      response => {
        token: String,
        category: Lithic::BookTransferResponse::Category,
        created: Time,
        currency: String,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::BookTransferResponse::Event]),
        external_id: String | nil,
        external_resource: Lithic::ExternalResource | nil,
        from_financial_account_token: String,
        pending_amount: Integer,
        result: Lithic::BookTransferResponse::Result,
        settled_amount: Integer,
        status: Lithic::BookTransferResponse::Status,
        to_financial_account_token: String,
        transaction_series: Lithic::BookTransferResponse::TransactionSeries | nil,
        updated: Time
      }
    end
  end
end
