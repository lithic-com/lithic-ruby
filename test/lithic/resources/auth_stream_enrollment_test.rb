# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::AuthStreamEnrollmentTest < Lithic::Test::ResourceTest
  def test_retrieve_secret
    response = @lithic.auth_stream_enrollment.retrieve_secret

    assert_pattern do
      response => Lithic::AuthStreamSecret
    end

    assert_pattern do
      response => {
        secret: String | nil
      }
    end
  end

  def test_rotate_secret
    response = @lithic.auth_stream_enrollment.rotate_secret

    assert_pattern do
      response => nil
    end
  end
end
