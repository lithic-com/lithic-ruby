# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::HoldsTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response = @lithic.holds.create("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", amount: 1)

    assert_pattern do
      response => Lithic::Hold
    end

    assert_pattern do
      response => {
        token: String,
        created: Time,
        status: Lithic::Hold::Status,
        updated: Time,
        currency: String | nil,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::HoldEvent]) | nil,
        expiration_datetime: Time | nil,
        family: Lithic::Hold::Family | nil,
        financial_account_token: String | nil,
        pending_amount: Integer | nil,
        result: Lithic::Hold::Result | nil,
        user_defined_id: String | nil
      }
    end
  end

  def test_retrieve
    response = @lithic.holds.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Hold
    end

    assert_pattern do
      response => {
        token: String,
        created: Time,
        status: Lithic::Hold::Status,
        updated: Time,
        currency: String | nil,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::HoldEvent]) | nil,
        expiration_datetime: Time | nil,
        family: Lithic::Hold::Family | nil,
        financial_account_token: String | nil,
        pending_amount: Integer | nil,
        result: Lithic::Hold::Result | nil,
        user_defined_id: String | nil
      }
    end
  end

  def test_list
    response = @lithic.holds.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::Hold
    end

    assert_pattern do
      row => {
        token: String,
        created: Time,
        status: Lithic::Hold::Status,
        updated: Time,
        currency: String | nil,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::HoldEvent]) | nil,
        expiration_datetime: Time | nil,
        family: Lithic::Hold::Family | nil,
        financial_account_token: String | nil,
        pending_amount: Integer | nil,
        result: Lithic::Hold::Result | nil,
        user_defined_id: String | nil
      }
    end
  end

  def test_void
    response = @lithic.holds.void("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Hold
    end

    assert_pattern do
      response => {
        token: String,
        created: Time,
        status: Lithic::Hold::Status,
        updated: Time,
        currency: String | nil,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::HoldEvent]) | nil,
        expiration_datetime: Time | nil,
        family: Lithic::Hold::Family | nil,
        financial_account_token: String | nil,
        pending_amount: Integer | nil,
        result: Lithic::Hold::Result | nil,
        user_defined_id: String | nil
      }
    end
  end
end
