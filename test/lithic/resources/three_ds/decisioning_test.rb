# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::ThreeDS::DecisioningTest < Lithic::Test::ResourceTest
  def test_challenge_response_required_params
    response =
      @lithic.three_ds.decisioning.challenge_response(
        token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        challenge_response: :APPROVE
      )

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve_secret
    response = @lithic.three_ds.decisioning.retrieve_secret

    assert_pattern do
      response => Lithic::Models::ThreeDS::DecisioningRetrieveSecretResponse
    end

    assert_pattern do
      response => {
        secret: String | nil
      }
    end
  end

  def test_rotate_secret
    response = @lithic.three_ds.decisioning.rotate_secret

    assert_pattern do
      response => nil
    end
  end
end
