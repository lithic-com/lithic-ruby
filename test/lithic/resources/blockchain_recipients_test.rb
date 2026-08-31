# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::BlockchainRecipientsTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response =
      @lithic.blockchain_recipients.create(
        account_token: "dabadb3b-700c-41e3-8801-d5dfc84ebea0",
        address: "0x45bfcf1a6289a0b77b4d3f7d12005a05949fd8c3",
        chain: "ETHEREUM",
        owner: "John Doe",
        owner_type: :INDIVIDUAL
      )

    assert_pattern do
      response => Lithic::BlockchainRecipient
    end

    assert_pattern do
      response => {
        token: String,
        account_token: String,
        address_tag: String | nil,
        chain: String,
        created: Time,
        external_id: String | nil,
        name: String | nil,
        owner: String,
        owner_type: Lithic::OwnerType,
        program_id: String,
        state: Lithic::BlockchainRecipient::State,
        updated: Time,
        verification_state: Lithic::BlockchainRecipient::VerificationState
      }
    end
  end
end
