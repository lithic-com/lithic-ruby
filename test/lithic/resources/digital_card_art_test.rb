# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::DigitalCardArtTest < Lithic::Test::ResourceTest
  def test_retrieve
    response = @lithic.digital_card_art.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::DigitalCardArtAPI
    end

    assert_pattern do
      response => {
        token: String,
        card_program_token: String,
        created: Time,
        description: String,
        is_enabled: Lithic::BooleanModel,
        network: Lithic::Models::DigitalCardArtAPI::Network,
        is_card_program_default: Lithic::BooleanModel | nil
      }
    end
  end

  def test_list
    response = @lithic.digital_card_art.list

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::Models::DigitalCardArtAPI
    end

    assert_pattern do
      row => {
        token: String,
        card_program_token: String,
        created: Time,
        description: String,
        is_enabled: Lithic::BooleanModel,
        network: Lithic::Models::DigitalCardArtAPI::Network,
        is_card_program_default: Lithic::BooleanModel | nil
      }
    end
  end
end
