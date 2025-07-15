# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::NetworkProgramsTest < Lithic::Test::ResourceTest
  def test_retrieve
    response = @lithic.network_programs.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::NetworkProgram
    end

    assert_pattern do
      response => {
        token: String,
        default_product_code: String,
        name: String,
        registered_program_identification_number: String
      }
    end
  end

  def test_list
    response = @lithic.network_programs.list

    assert_pattern do
      response => Lithic::Internal::SinglePage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::NetworkProgram
    end

    assert_pattern do
      row => {
        token: String,
        default_product_code: String,
        name: String,
        registered_program_identification_number: String
      }
    end
  end
end
