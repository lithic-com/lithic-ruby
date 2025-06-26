# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::ThreeDS::AuthenticationTest < Lithic::Test::ResourceTest
  def test_retrieve
    response = @lithic.three_ds.authentication.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::ThreeDS::AuthenticationRetrieveResponse
    end

    assert_pattern do
      response => {
        token: String,
        account_type: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AccountType | nil,
        authentication_result: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationResult,
        card_expiry_check: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::CardExpiryCheck,
        card_token: String,
        cardholder: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder,
        channel: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Channel,
        created: Time,
        merchant: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant,
        message_category: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::MessageCategory,
        three_ds_requestor_challenge_indicator: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeDSRequestorChallengeIndicator,
        additional_data: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData | nil,
        app: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::App | nil,
        authentication_request_type: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationRequestType | nil,
        browser: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Browser | nil,
        challenge_metadata: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata | nil,
        challenge_orchestrated_by: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeOrchestratedBy | nil,
        decision_made_by: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::DecisionMadeBy | nil,
        three_ri_request_type: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType | nil,
        transaction: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction | nil
      }
    end
  end

  def test_simulate_required_params
    response =
      @lithic.three_ds.authentication.simulate(
        merchant: {id: "OODKZAPJVN4YS7O", country: "USA", mcc: "5812", name: "COFFEE SHOP"},
        pan: "4111111289144142",
        transaction: {amount: 0, currency: "GBP"}
      )

    assert_pattern do
      response => Lithic::Models::ThreeDS::AuthenticationSimulateResponse
    end

    assert_pattern do
      response => {
        token: String | nil
      }
    end
  end

  def test_simulate_otp_entry_required_params
    response =
      @lithic.three_ds.authentication.simulate_otp_entry(
        token: "fabd829d-7f7b-4432-a8f2-07ea4889aaac",
        otp: "123456"
      )

    assert_pattern do
      response => nil
    end
  end
end
