# frozen_string_literal: true

require_relative "../../../test_helper"

class Lithic::Test::Resources::Transactions::Events::EnhancedCommercialDataTest < Lithic::Test::ResourceTest
  def test_retrieve
    response =
      @lithic.transactions.events.enhanced_commercial_data.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::Transactions::Events::EnhancedData
    end

    assert_pattern do
      response => {
        token: String,
        common: Lithic::Models::Transactions::Events::EnhancedData::Common,
        event_token: String,
        fleet: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::Transactions::Events::EnhancedData::Fleet]),
        transaction_token: String
      }
    end
  end
end
