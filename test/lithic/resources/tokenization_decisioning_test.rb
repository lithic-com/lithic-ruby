# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::TokenizationDecisioningTest < Lithic::Test::ResourceTest
  def test_retrieve_secret
    response = @lithic.tokenization_decisioning.retrieve_secret

    assert_pattern do
      response => Lithic::Models::TokenizationSecret
    end

    assert_pattern do
      response => {
        secret: String | nil
      }
    end
  end

  def test_rotate_secret
    response = @lithic.tokenization_decisioning.rotate_secret

    assert_pattern do
      response => Lithic::Models::TokenizationDecisioningRotateSecretResponse
    end

    assert_pattern do
      response => {
        secret: String | nil
      }
    end
  end
end
