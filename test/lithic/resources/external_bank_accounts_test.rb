# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::ExternalBankAccountsTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response =
      @lithic.external_bank_accounts.create(
        account_number: "12345678901234567",
        country: "USD",
        currency: "USD",
        financial_account_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        owner: "owner",
        owner_type: :INDIVIDUAL,
        routing_number: "123456789",
        type: :CHECKING,
        verification_method: :MANUAL
      )

    assert_pattern do
      response => Lithic::Models::ExternalBankAccountCreateResponse
    end

    assert_pattern do
      response => {
        token: String,
        country: String,
        created: Time,
        currency: String,
        last_four: String,
        owner: String,
        owner_type: Lithic::Models::ExternalBankAccountCreateResponse::OwnerType,
        routing_number: String,
        state: Lithic::Models::ExternalBankAccountCreateResponse::State,
        type: Lithic::Models::ExternalBankAccountCreateResponse::Type,
        verification_attempts: Integer,
        verification_method: Lithic::Models::ExternalBankAccountCreateResponse::VerificationMethod,
        verification_state: Lithic::Models::ExternalBankAccountCreateResponse::VerificationState,
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

  def test_retrieve
    response = @lithic.external_bank_accounts.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::ExternalBankAccountRetrieveResponse
    end

    assert_pattern do
      response => {
        token: String,
        country: String,
        created: Time,
        currency: String,
        last_four: String,
        owner: String,
        owner_type: Lithic::Models::ExternalBankAccountRetrieveResponse::OwnerType,
        routing_number: String,
        state: Lithic::Models::ExternalBankAccountRetrieveResponse::State,
        type: Lithic::Models::ExternalBankAccountRetrieveResponse::Type,
        verification_attempts: Integer,
        verification_method: Lithic::Models::ExternalBankAccountRetrieveResponse::VerificationMethod,
        verification_state: Lithic::Models::ExternalBankAccountRetrieveResponse::VerificationState,
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

  def test_update
    response = @lithic.external_bank_accounts.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::ExternalBankAccountUpdateResponse
    end

    assert_pattern do
      response => {
        token: String,
        country: String,
        created: Time,
        currency: String,
        last_four: String,
        owner: String,
        owner_type: Lithic::Models::ExternalBankAccountUpdateResponse::OwnerType,
        routing_number: String,
        state: Lithic::Models::ExternalBankAccountUpdateResponse::State,
        type: Lithic::Models::ExternalBankAccountUpdateResponse::Type,
        verification_attempts: Integer,
        verification_method: Lithic::Models::ExternalBankAccountUpdateResponse::VerificationMethod,
        verification_state: Lithic::Models::ExternalBankAccountUpdateResponse::VerificationState,
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

  def test_list
    response = @lithic.external_bank_accounts.list

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::Models::ExternalBankAccountListResponse
    end

    assert_pattern do
      row => {
        token: String,
        country: String,
        created: Time,
        currency: String,
        last_four: String,
        owner: String,
        owner_type: Lithic::Models::ExternalBankAccountListResponse::OwnerType,
        routing_number: String,
        state: Lithic::Models::ExternalBankAccountListResponse::State,
        type: Lithic::Models::ExternalBankAccountListResponse::Type,
        verification_attempts: Integer,
        verification_method: Lithic::Models::ExternalBankAccountListResponse::VerificationMethod,
        verification_state: Lithic::Models::ExternalBankAccountListResponse::VerificationState,
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

  def test_retry_micro_deposits
    response = @lithic.external_bank_accounts.retry_micro_deposits("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::ExternalBankAccountRetryMicroDepositsResponse
    end

    assert_pattern do
      response => {
        token: String,
        country: String,
        created: Time,
        currency: String,
        last_four: String,
        owner: String,
        owner_type: Lithic::Models::ExternalBankAccountRetryMicroDepositsResponse::OwnerType,
        routing_number: String,
        state: Lithic::Models::ExternalBankAccountRetryMicroDepositsResponse::State,
        type: Lithic::Models::ExternalBankAccountRetryMicroDepositsResponse::Type,
        verification_attempts: Integer,
        verification_method: Lithic::Models::ExternalBankAccountRetryMicroDepositsResponse::VerificationMethod,
        verification_state: Lithic::Models::ExternalBankAccountRetryMicroDepositsResponse::VerificationState,
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

  def test_retry_prenote
    response = @lithic.external_bank_accounts.retry_prenote("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::ExternalBankAccountRetryPrenoteResponse
    end

    assert_pattern do
      response => {
        token: String,
        country: String,
        created: Time,
        currency: String,
        last_four: String,
        owner: String,
        owner_type: Lithic::OwnerType,
        routing_number: String,
        state: Lithic::Models::ExternalBankAccountRetryPrenoteResponse::State,
        type: Lithic::Models::ExternalBankAccountRetryPrenoteResponse::Type,
        verification_attempts: Integer,
        verification_method: Lithic::VerificationMethod,
        verification_state: Lithic::Models::ExternalBankAccountRetryPrenoteResponse::VerificationState,
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
