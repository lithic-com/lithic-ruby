# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::ResponderEndpointsTest < Lithic::Test::ResourceTest
  def test_create
    response = @lithic.responder_endpoints.create

    assert_pattern do
      response => Lithic::Models::ResponderEndpointCreateResponse
    end

    assert_pattern do
      response => {
        enrolled: Lithic::Internal::Type::Boolean | nil
      }
    end
  end

  def test_delete_required_params
    skip("Prism errors when accept header set but no request body is defined")

    response = @lithic.responder_endpoints.delete(type: :AUTH_STREAM_ACCESS)

    assert_pattern do
      response => nil
    end
  end

  def test_check_status_required_params
    response = @lithic.responder_endpoints.check_status(type: :AUTH_STREAM_ACCESS)

    assert_pattern do
      response => Lithic::Models::ResponderEndpointStatus
    end

    assert_pattern do
      response => {
        enrolled: Lithic::Internal::Type::Boolean | nil,
        url: String | nil
      }
    end
  end
end
