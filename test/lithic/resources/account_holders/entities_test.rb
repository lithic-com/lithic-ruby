# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::AccountHolders::EntitiesTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response =
      @lithic.account_holders.entities.create(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        address: {
          address1: "300 Normal Forest Way",
          city: "Portland",
          country: "USA",
          postal_code: "90210",
          state: "OR"
        },
        dob: "1991-03-08T08:00:00Z",
        email: "tim@left-earth.com",
        first_name: "Timmy",
        government_id: "211-23-1412",
        last_name: "Turner",
        phone_number: "+15555555555",
        type: :BENEFICIAL_OWNER_INDIVIDUAL
      )

    assert_pattern do
      response => Lithic::Models::AccountHolders::EntityCreateResponse
    end

    assert_pattern do
      response => {
        token: String,
        account_holder_token: String,
        created: Time,
        required_documents: ^(Lithic::Internal::Type::ArrayOf[Lithic::RequiredDocument]),
        status: Lithic::Models::AccountHolders::EntityCreateResponse::Status,
        status_reasons: ^(Lithic::Internal::Type::ArrayOf[enum: Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason])
      }
    end
  end

  def test_delete_required_params
    response =
      @lithic.account_holders.entities.delete(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        account_holder_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Lithic::AccountHolders::AccountHolderEntity
    end

    assert_pattern do
      response => {
        token: String,
        account_holder_token: String,
        address: Lithic::AccountHolders::AccountHolderEntity::Address,
        dob: String | nil,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        phone_number: String | nil,
        status: Lithic::AccountHolders::AccountHolderEntity::Status,
        type: Lithic::AccountHolders::AccountHolderEntity::Type
      }
    end
  end
end
