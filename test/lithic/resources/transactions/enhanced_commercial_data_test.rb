# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::Transactions::EnhancedCommercialDataTest < Lithic::Test::ResourceTest
  def test_retrieve
    response = @lithic.transactions.enhanced_commercial_data.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::Transactions::EnhancedCommercialDataRetrieveResponse
    end

    assert_pattern do
      response => {
        data: ^(Lithic::ArrayOf[Lithic::Models::Transactions::Events::EnhancedData])
      }
    end
  end
end
