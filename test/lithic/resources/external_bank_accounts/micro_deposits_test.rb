# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::ExternalBankAccounts::MicroDepositsTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response =
      @lithic.external_bank_accounts.micro_deposits.create(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        micro_deposits: [0, 0]
      )

    assert_pattern do
      response => Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse
    end

    assert_pattern do
      response => {
        token: String,
        country: String,
        created: Time,
        currency: String,
        last_four: String,
        owner: String,
        owner_type: Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::OwnerType,
        routing_number: String,
        state: Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::State,
        type: Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::Type,
        verification_attempts: Integer,
        verification_method: Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::VerificationMethod,
        verification_state: Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::VerificationState,
        account_token: String | nil,
        address: Lithic::ExternalBankAccountAddress | nil,
        company_id: String | nil,
        dob: Date | nil,
        doing_business_as: String | nil,
        financial_account_token: String | nil,
        name: String | nil,
        user_defined_id: String | nil,
        verification_failed_reason: String | nil
      }
    end
  end
end
