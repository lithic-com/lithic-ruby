# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::TransfersTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response =
      @lithic.transfers.create(
        amount: 0,
        from: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        to: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Lithic::Models::Transfer
    end

    assert_pattern do
      response => {
        token: String | nil,
        category: Lithic::Models::Transfer::Category | nil,
        created: Time | nil,
        currency: String | nil,
        descriptor: String | nil,
        events: ^(Lithic::ArrayOf[Lithic::Models::Transfer::Event]) | nil,
        from_balance: ^(Lithic::ArrayOf[Lithic::Models::Balance]) | nil,
        pending_amount: Integer | nil,
        result: Lithic::Models::Transfer::Result | nil,
        settled_amount: Integer | nil,
        status: Lithic::Models::Transfer::Status | nil,
        to_balance: ^(Lithic::ArrayOf[Lithic::Models::Balance]) | nil,
        updated: Time | nil
      }
    end
  end
end
