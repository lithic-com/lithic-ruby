# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::TokenizationsTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response =
      @lithic.tokenizations.create(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        agent_token: "20f418a7-27c2-486c-aeee-3ad2beb87c91",
        type: :AGENT
      )

    assert_pattern do
      response => Lithic::Tokenization
    end

    assert_pattern do
      response => {
        token: String,
        account_token: String,
        card_token: String,
        created_at: Time,
        dpan: String | nil,
        status: Lithic::Tokenization::Status,
        token_requestor_name: Lithic::Tokenization::TokenRequestorName,
        token_unique_reference: String,
        tokenization_channel: Lithic::Tokenization::TokenizationChannel,
        updated_at: Time,
        device_id: String | nil,
        digital_card_art_token: String | nil,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::Tokenization::Event]) | nil,
        payment_account_reference_id: String | nil,
        tfa_methods: ^(Lithic::Internal::Type::ArrayOf[Lithic::Tokenization::TfaMethod]) | nil
      }
    end
  end

  def test_retrieve
    response = @lithic.tokenizations.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Tokenization
    end

    assert_pattern do
      response => {
        token: String,
        account_token: String,
        card_token: String,
        created_at: Time,
        dpan: String | nil,
        status: Lithic::Tokenization::Status,
        token_requestor_name: Lithic::Tokenization::TokenRequestorName,
        token_unique_reference: String,
        tokenization_channel: Lithic::Tokenization::TokenizationChannel,
        updated_at: Time,
        device_id: String | nil,
        digital_card_art_token: String | nil,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::Tokenization::Event]) | nil,
        payment_account_reference_id: String | nil,
        tfa_methods: ^(Lithic::Internal::Type::ArrayOf[Lithic::Tokenization::TfaMethod]) | nil
      }
    end
  end

  def test_list
    response = @lithic.tokenizations.list

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::Tokenization
    end

    assert_pattern do
      row => {
        token: String,
        account_token: String,
        card_token: String,
        created_at: Time,
        dpan: String | nil,
        status: Lithic::Tokenization::Status,
        token_requestor_name: Lithic::Tokenization::TokenRequestorName,
        token_unique_reference: String,
        tokenization_channel: Lithic::Tokenization::TokenizationChannel,
        updated_at: Time,
        device_id: String | nil,
        digital_card_art_token: String | nil,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::Tokenization::Event]) | nil,
        payment_account_reference_id: String | nil,
        tfa_methods: ^(Lithic::Internal::Type::ArrayOf[Lithic::Tokenization::TfaMethod]) | nil
      }
    end
  end

  def test_activate
    response = @lithic.tokenizations.activate("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end

  def test_create_payment_credentials_required_params
    response =
      @lithic.tokenizations.create_payment_credentials(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        device: {
          application_name: "Example app",
          brand: "Example brand",
          ip_address: "192.0.2.1",
          type: "Mobile"
        },
        mandate: {
          amount: 1250,
          expires_at: "2026-10-29T15:00:00Z",
          frequency: :ONE_TIME,
          merchant: {name: "Example merchant", url: "https://merchant.example"}
        },
        type: :HUMAN_IN_THE_LOOP
      )

    assert_pattern do
      response => Lithic::Models::TokenizationCreatePaymentCredentialsResponse
    end

    assert_pattern do
      response => {
        token: String,
        agent_token: String,
        created_at: Time,
        credentials: Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Credentials,
        mandate: Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate,
        status: Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Status,
        tokenization_token: String,
        type: Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Type,
        updated_at: Time
      }
    end
  end

  def test_deactivate
    response = @lithic.tokenizations.deactivate("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end

  def test_pause
    response = @lithic.tokenizations.pause("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end

  def test_resend_activation_code
    response = @lithic.tokenizations.resend_activation_code("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end

  def test_select_tfa_method_required_params
    response = @lithic.tokenizations.select_tfa_method("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", method_: :SMS)

    assert_pattern do
      response => Lithic::Models::TokenizationSelectTfaMethodResponse
    end

    assert_pattern do
      response => {
        success: Lithic::Internal::Type::Boolean
      }
    end
  end

  def test_simulate_required_params
    response =
      @lithic.tokenizations.simulate(
        cvv: "776",
        expiration_date: "08/29",
        pan: "4111111289144142",
        tokenization_source: :APPLE_PAY
      )

    assert_pattern do
      response => Lithic::Tokenization
    end

    assert_pattern do
      response => {
        token: String,
        account_token: String,
        card_token: String,
        created_at: Time,
        dpan: String | nil,
        status: Lithic::Tokenization::Status,
        token_requestor_name: Lithic::Tokenization::TokenRequestorName,
        token_unique_reference: String,
        tokenization_channel: Lithic::Tokenization::TokenizationChannel,
        updated_at: Time,
        device_id: String | nil,
        digital_card_art_token: String | nil,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::Tokenization::Event]) | nil,
        payment_account_reference_id: String | nil,
        tfa_methods: ^(Lithic::Internal::Type::ArrayOf[Lithic::Tokenization::TfaMethod]) | nil
      }
    end
  end

  def test_submit_tfa_required_params
    response = @lithic.tokenizations.submit_tfa("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", value: "01929")

    assert_pattern do
      response => Lithic::Models::TokenizationSubmitTfaResponse
    end

    assert_pattern do
      response => {
        success: Lithic::Internal::Type::Boolean
      }
    end
  end

  def test_unpause
    response = @lithic.tokenizations.unpause("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end

  def test_update_digital_card_art
    response = @lithic.tokenizations.update_digital_card_art("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Tokenization
    end

    assert_pattern do
      response => {
        token: String,
        account_token: String,
        card_token: String,
        created_at: Time,
        dpan: String | nil,
        status: Lithic::Tokenization::Status,
        token_requestor_name: Lithic::Tokenization::TokenRequestorName,
        token_unique_reference: String,
        tokenization_channel: Lithic::Tokenization::TokenizationChannel,
        updated_at: Time,
        device_id: String | nil,
        digital_card_art_token: String | nil,
        events: ^(Lithic::Internal::Type::ArrayOf[Lithic::Tokenization::Event]) | nil,
        payment_account_reference_id: String | nil,
        tfa_methods: ^(Lithic::Internal::Type::ArrayOf[Lithic::Tokenization::TfaMethod]) | nil
      }
    end
  end
end
