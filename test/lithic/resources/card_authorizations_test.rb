# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::CardAuthorizationsTest < Lithic::Test::ResourceTest
  def test_challenge_response_required_params
    response =
      @lithic.card_authorizations.challenge_response(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        response: :APPROVE
      )

    assert_pattern do
      response => nil
    end
  end
end
