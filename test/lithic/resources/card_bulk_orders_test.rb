# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::CardBulkOrdersTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response =
      @lithic.card_bulk_orders.create(
        customer_product_id: "custom-card-design-123",
        shipping_address: {
          address1: "123 Main Street",
          city: "NEW YORK",
          country: "USA",
          first_name: "Johnny",
          last_name: "Appleseed",
          postal_code: "10001",
          state: "NY"
        },
        shipping_method: :BULK_EXPEDITED
      )

    assert_pattern do
      response => Lithic::CardBulkOrder
    end

    assert_pattern do
      response => {
        token: String,
        card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        created: Time,
        customer_product_id: String | nil,
        shipping_address: Lithic::Internal::Type::Unknown,
        shipping_method: Lithic::CardBulkOrder::ShippingMethod,
        status: Lithic::CardBulkOrder::Status,
        updated: Time
      }
    end
  end

  def test_retrieve
    response = @lithic.card_bulk_orders.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::CardBulkOrder
    end

    assert_pattern do
      response => {
        token: String,
        card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        created: Time,
        customer_product_id: String | nil,
        shipping_address: Lithic::Internal::Type::Unknown,
        shipping_method: Lithic::CardBulkOrder::ShippingMethod,
        status: Lithic::CardBulkOrder::Status,
        updated: Time
      }
    end
  end

  def test_update_required_params
    response = @lithic.card_bulk_orders.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", status: :LOCKED)

    assert_pattern do
      response => Lithic::CardBulkOrder
    end

    assert_pattern do
      response => {
        token: String,
        card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        created: Time,
        customer_product_id: String | nil,
        shipping_address: Lithic::Internal::Type::Unknown,
        shipping_method: Lithic::CardBulkOrder::ShippingMethod,
        status: Lithic::CardBulkOrder::Status,
        updated: Time
      }
    end
  end

  def test_list
    response = @lithic.card_bulk_orders.list

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::CardBulkOrder
    end

    assert_pattern do
      row => {
        token: String,
        card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        created: Time,
        customer_product_id: String | nil,
        shipping_address: Lithic::Internal::Type::Unknown,
        shipping_method: Lithic::CardBulkOrder::ShippingMethod,
        status: Lithic::CardBulkOrder::Status,
        updated: Time
      }
    end
  end
end
