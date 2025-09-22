# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::Transactions::EnhancedCommercialDataTest < Lithic::Test::ResourceTest
  def test_retrieve
    response = @lithic.transactions.enhanced_commercial_data.retrieve("00000000-0000-0000-0000-000000000000")

    assert_pattern do
      response => Lithic::Models::Transactions::EnhancedCommercialDataRetrieveResponse
    end

    assert_pattern do
      response => {
        data: ^(Lithic::Internal::Type::ArrayOf[Lithic::Transactions::Events::EnhancedData])
      }
    end
  end
end
