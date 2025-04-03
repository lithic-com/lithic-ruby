# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::PaymentsTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response =
      @lithic.payments.create(
        amount: 1,
        external_bank_account_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        financial_account_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        method_: :ACH_NEXT_DAY,
        method_attributes: {sec_code: :CCD},
        type: :COLLECTION
      )

    assert_pattern do
      response => Lithic::Models::PaymentCreateResponse
    end
  end

  def test_retrieve
    response = @lithic.payments.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::Payment
    end

    assert_pattern do
      response => {
        token: String,
        category: Lithic::Models::Payment::Category,
        created: Time,
        currency: String,
        descriptor: String,
        direction: Lithic::Models::Payment::Direction,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::Payment::Event]),
        external_bank_account_token: String | nil,
        financial_account_token: String,
        method_: Lithic::Models::Payment::Method,
        method_attributes: Lithic::Models::Payment::MethodAttributes,
        pending_amount: Integer,
        result: Lithic::Models::Payment::Result,
        settled_amount: Integer,
        source: Lithic::Models::Payment::Source,
        status: Lithic::Models::Payment::Status,
        updated: Time,
        user_defined_id: String | nil
      }
    end
  end

  def test_list
    response = @lithic.payments.list

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::Models::Payment
    end

    assert_pattern do
      row => {
        token: String,
        category: Lithic::Models::Payment::Category,
        created: Time,
        currency: String,
        descriptor: String,
        direction: Lithic::Models::Payment::Direction,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::Payment::Event]),
        external_bank_account_token: String | nil,
        financial_account_token: String,
        method_: Lithic::Models::Payment::Method,
        method_attributes: Lithic::Models::Payment::MethodAttributes,
        pending_amount: Integer,
        result: Lithic::Models::Payment::Result,
        settled_amount: Integer,
        source: Lithic::Models::Payment::Source,
        status: Lithic::Models::Payment::Status,
        updated: Time,
        user_defined_id: String | nil
      }
    end
  end

  def test_retry_
    response = @lithic.payments.retry_("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::PaymentRetryResponse
    end
  end

  def test_simulate_action_required_params
    response =
      @lithic.payments.simulate_action(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        event_type: :ACH_ORIGINATION_REVIEWED
      )

    assert_pattern do
      response => Lithic::Models::PaymentSimulateActionResponse
    end

    assert_pattern do
      response => {
        debugging_request_id: String,
        result: Lithic::Models::PaymentSimulateActionResponse::Result,
        transaction_event_token: String
      }
    end
  end

  def test_simulate_receipt_required_params
    response =
      @lithic.payments.simulate_receipt(
        token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        amount: 0,
        financial_account_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        receipt_type: :RECEIPT_CREDIT
      )

    assert_pattern do
      response => Lithic::Models::PaymentSimulateReceiptResponse
    end

    assert_pattern do
      response => {
        debugging_request_id: String,
        result: Lithic::Models::PaymentSimulateReceiptResponse::Result,
        transaction_event_token: String
      }
    end
  end

  def test_simulate_release_required_params
    response = @lithic.payments.simulate_release(payment_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::PaymentSimulateReleaseResponse
    end

    assert_pattern do
      response => {
        debugging_request_id: String,
        result: Lithic::Models::PaymentSimulateReleaseResponse::Result,
        transaction_event_token: String
      }
    end
  end

  def test_simulate_return_required_params
    response = @lithic.payments.simulate_return(payment_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::PaymentSimulateReturnResponse
    end

    assert_pattern do
      response => {
        debugging_request_id: String,
        result: Lithic::Models::PaymentSimulateReturnResponse::Result,
        transaction_event_token: String
      }
    end
  end
end
