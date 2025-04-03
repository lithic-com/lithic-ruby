# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::ExternalPaymentsTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response =
      @lithic.external_payments.create(
        amount: 0,
        category: :EXTERNAL_WIRE,
        effective_date: "2019-12-27",
        financial_account_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        payment_type: :DEPOSIT
      )

    assert_pattern do
      response => Lithic::Models::ExternalPayment
    end

    assert_pattern do
      response => {
        token: String,
        category: Lithic::Models::ExternalPayment::Category,
        created: Time,
        currency: String,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::ExternalPayment::Event]),
        financial_account_token: String,
        payment_type: Lithic::Models::ExternalPayment::PaymentType,
        pending_amount: Integer,
        result: Lithic::Models::ExternalPayment::Result,
        settled_amount: Integer,
        status: Lithic::Models::ExternalPayment::Status,
        updated: Time,
        user_defined_id: String | nil
      }
    end
  end

  def test_retrieve
    response = @lithic.external_payments.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::ExternalPayment
    end

    assert_pattern do
      response => {
        token: String,
        category: Lithic::Models::ExternalPayment::Category,
        created: Time,
        currency: String,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::ExternalPayment::Event]),
        financial_account_token: String,
        payment_type: Lithic::Models::ExternalPayment::PaymentType,
        pending_amount: Integer,
        result: Lithic::Models::ExternalPayment::Result,
        settled_amount: Integer,
        status: Lithic::Models::ExternalPayment::Status,
        updated: Time,
        user_defined_id: String | nil
      }
    end
  end

  def test_list
    response = @lithic.external_payments.list

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::Models::ExternalPayment
    end

    assert_pattern do
      row => {
        token: String,
        category: Lithic::Models::ExternalPayment::Category,
        created: Time,
        currency: String,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::ExternalPayment::Event]),
        financial_account_token: String,
        payment_type: Lithic::Models::ExternalPayment::PaymentType,
        pending_amount: Integer,
        result: Lithic::Models::ExternalPayment::Result,
        settled_amount: Integer,
        status: Lithic::Models::ExternalPayment::Status,
        updated: Time,
        user_defined_id: String | nil
      }
    end
  end

  def test_cancel_required_params
    response =
      @lithic.external_payments.cancel("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", effective_date: "2019-12-27")

    assert_pattern do
      response => Lithic::Models::ExternalPayment
    end

    assert_pattern do
      response => {
        token: String,
        category: Lithic::Models::ExternalPayment::Category,
        created: Time,
        currency: String,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::ExternalPayment::Event]),
        financial_account_token: String,
        payment_type: Lithic::Models::ExternalPayment::PaymentType,
        pending_amount: Integer,
        result: Lithic::Models::ExternalPayment::Result,
        settled_amount: Integer,
        status: Lithic::Models::ExternalPayment::Status,
        updated: Time,
        user_defined_id: String | nil
      }
    end
  end

  def test_release_required_params
    response =
      @lithic.external_payments.release("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", effective_date: "2019-12-27")

    assert_pattern do
      response => Lithic::Models::ExternalPayment
    end

    assert_pattern do
      response => {
        token: String,
        category: Lithic::Models::ExternalPayment::Category,
        created: Time,
        currency: String,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::ExternalPayment::Event]),
        financial_account_token: String,
        payment_type: Lithic::Models::ExternalPayment::PaymentType,
        pending_amount: Integer,
        result: Lithic::Models::ExternalPayment::Result,
        settled_amount: Integer,
        status: Lithic::Models::ExternalPayment::Status,
        updated: Time,
        user_defined_id: String | nil
      }
    end
  end

  def test_reverse_required_params
    response =
      @lithic.external_payments.reverse("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", effective_date: "2019-12-27")

    assert_pattern do
      response => Lithic::Models::ExternalPayment
    end

    assert_pattern do
      response => {
        token: String,
        category: Lithic::Models::ExternalPayment::Category,
        created: Time,
        currency: String,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::ExternalPayment::Event]),
        financial_account_token: String,
        payment_type: Lithic::Models::ExternalPayment::PaymentType,
        pending_amount: Integer,
        result: Lithic::Models::ExternalPayment::Result,
        settled_amount: Integer,
        status: Lithic::Models::ExternalPayment::Status,
        updated: Time,
        user_defined_id: String | nil
      }
    end
  end

  def test_settle_required_params
    response =
      @lithic.external_payments.settle("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", effective_date: "2019-12-27")

    assert_pattern do
      response => Lithic::Models::ExternalPayment
    end

    assert_pattern do
      response => {
        token: String,
        category: Lithic::Models::ExternalPayment::Category,
        created: Time,
        currency: String,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::ExternalPayment::Event]),
        financial_account_token: String,
        payment_type: Lithic::Models::ExternalPayment::PaymentType,
        pending_amount: Integer,
        result: Lithic::Models::ExternalPayment::Result,
        settled_amount: Integer,
        status: Lithic::Models::ExternalPayment::Status,
        updated: Time,
        user_defined_id: String | nil
      }
    end
  end
end
