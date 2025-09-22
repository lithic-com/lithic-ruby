# frozen_string_literal: true

require_relative "../../../test_helper"

class Lithic::Test::Resources::Transactions::Events::EnhancedCommercialDataTest < Lithic::Test::ResourceTest
  def test_retrieve
    response =
      @lithic.transactions.events.enhanced_commercial_data.retrieve("00000000-0000-0000-0000-000000000000")

    assert_pattern do
      response => Lithic::Transactions::Events::EnhancedData
    end

    assert_pattern do
      response => {
        token: String,
        common: Lithic::Transactions::Events::EnhancedData::Common,
        event_token: String,
        fleet: ^(Lithic::Internal::Type::ArrayOf[Lithic::Transactions::Events::EnhancedData::Fleet]),
        transaction_token: String
      }
    end
  end
end
