# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::IPRangesTest < Lithic::Test::ResourceTest
  def test_retrieve
    response = @lithic.ip_ranges.retrieve

    assert_pattern do
      response => Lithic::Models::IPRangeRetrieveResponse
    end

    assert_pattern do
      response => {
        responders: ^(Lithic::Internal::Type::ArrayOf[String]),
        updated: Time
      }
    end
  end
end
