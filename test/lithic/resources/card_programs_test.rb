# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::CardProgramsTest < Lithic::Test::ResourceTest
  def test_retrieve
    response = @lithic.card_programs.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::CardProgram
    end

    assert_pattern do
      response => {
        token: String,
        created: Time,
        name: String,
        pan_range_end: String,
        pan_range_start: String,
        cardholder_currency: String | nil,
        settlement_currencies: ^(Lithic::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_list
    response = @lithic.card_programs.list

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::Models::CardProgram
    end

    assert_pattern do
      row => {
        token: String,
        created: Time,
        name: String,
        pan_range_end: String,
        pan_range_start: String,
        cardholder_currency: String | nil,
        settlement_currencies: ^(Lithic::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end
end
