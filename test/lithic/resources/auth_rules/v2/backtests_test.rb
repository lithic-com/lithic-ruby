# frozen_string_literal: true

require_relative "../../../test_helper"

class Lithic::Test::Resources::AuthRules::V2::BacktestsTest < Lithic::Test::ResourceTest
  def test_create
    response = @lithic.auth_rules.v2.backtests.create("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::AuthRules::V2::BacktestCreateResponse
    end

    assert_pattern do
      response => {
        backtest_token: String | nil
      }
    end
  end

  def test_retrieve_required_params
    response =
      @lithic.auth_rules.v2.backtests.retrieve(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        auth_rule_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Lithic::AuthRules::V2::BacktestResults
    end

    assert_pattern do
      response => {
        backtest_token: String,
        results: Lithic::AuthRules::V2::BacktestResults::Results,
        simulation_parameters: Lithic::AuthRules::V2::BacktestResults::SimulationParameters
      }
    end
  end
end
