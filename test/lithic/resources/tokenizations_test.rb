# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::TokenizationsTest < Lithic::Test::ResourceTest
  def test_retrieve
    response = @lithic.tokenizations.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::TokenizationRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Lithic::Models::Tokenization | nil
      }
    end
  end

  def test_list
    response = @lithic.tokenizations.list

    assert_pattern do
      response => Lithic::CursorPage
    end

    row = response.to_enum.first
    assert_pattern do
      row => Lithic::Models::Tokenization
    end

    assert_pattern do
      row => {
        token: String,
        account_token: String,
        card_token: String,
        created_at: Time,
        dpan: String | nil,
        status: Lithic::Models::Tokenization::Status,
        token_requestor_name: Lithic::Models::Tokenization::TokenRequestorName,
        token_unique_reference: String,
        tokenization_channel: Lithic::Models::Tokenization::TokenizationChannel,
        updated_at: Time,
        digital_card_art_token: String | nil,
        events: ^(Lithic::ArrayOf[Lithic::Models::Tokenization::Event]) | nil,
        payment_account_reference_id: String | nil
      }
    end
  end

  def test_activate
    response = @lithic.tokenizations.activate("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
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

  def test_simulate_required_params
    response =
      @lithic.tokenizations.simulate(
        cvv: "776",
        expiration_date: "08/29",
        pan: "4111111289144142",
        tokenization_source: :APPLE_PAY
      )

    assert_pattern do
      response => Lithic::Models::TokenizationSimulateResponse
    end

    assert_pattern do
      response => {
        data: ^(Lithic::ArrayOf[Lithic::Models::Tokenization]) | nil
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
      response => Lithic::Models::TokenizationUpdateDigitalCardArtResponse
    end

    assert_pattern do
      response => {
        data: Lithic::Models::Tokenization | nil
      }
    end
  end
end
