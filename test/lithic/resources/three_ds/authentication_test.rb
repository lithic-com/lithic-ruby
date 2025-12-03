# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::ThreeDS::AuthenticationTest < Lithic::Test::ResourceTest
  def test_retrieve
    response = @lithic.three_ds.authentication.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::ThreeDSAuthentication
    end

    assert_pattern do
      response => {
        token: String,
        account_type: Lithic::ThreeDSAuthentication::AccountType | nil,
        authentication_result: Lithic::ThreeDSAuthentication::AuthenticationResult,
        card_expiry_check: Lithic::ThreeDSAuthentication::CardExpiryCheck,
        card_token: String,
        cardholder: Lithic::ThreeDSAuthentication::Cardholder,
        channel: Lithic::ThreeDSAuthentication::Channel,
        created: Time,
        merchant: Lithic::ThreeDSAuthentication::Merchant,
        message_category: Lithic::ThreeDSAuthentication::MessageCategory,
        three_ds_requestor_challenge_indicator: Lithic::ThreeDSAuthentication::ThreeDSRequestorChallengeIndicator,
        additional_data: Lithic::ThreeDSAuthentication::AdditionalData | nil,
        app: Lithic::ThreeDSAuthentication::App | nil,
        authentication_request_type: Lithic::ThreeDSAuthentication::AuthenticationRequestType | nil,
        browser: Lithic::ThreeDSAuthentication::Browser | nil,
        challenge_metadata: Lithic::ThreeDSAuthentication::ChallengeMetadata | nil,
        challenge_orchestrated_by: Lithic::ThreeDSAuthentication::ChallengeOrchestratedBy | nil,
        decision_made_by: Lithic::ThreeDSAuthentication::DecisionMadeBy | nil,
        three_ri_request_type: Lithic::ThreeDSAuthentication::ThreeRiRequestType | nil,
        transaction: Lithic::ThreeDSAuthentication::Transaction | nil
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
