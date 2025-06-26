# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      module V2
        # @see Lithic::Resources::AuthRules::V2::Backtests#retrieve
        class BacktestResults < Lithic::Internal::Type::BaseModel
          # @!attribute backtest_token
          #   Auth Rule Backtest Token
          #
          #   @return [String]
          required :backtest_token, String

          # @!attribute results
          #
          #   @return [Lithic::Models::AuthRules::V2::BacktestResults::Results]
          required :results, -> { Lithic::AuthRules::V2::BacktestResults::Results }

          # @!attribute simulation_parameters
          #
          #   @return [Lithic::Models::AuthRules::V2::BacktestResults::SimulationParameters]
          required :simulation_parameters, -> { Lithic::AuthRules::V2::BacktestResults::SimulationParameters }

          # @!method initialize(backtest_token:, results:, simulation_parameters:)
          #   @param backtest_token [String] Auth Rule Backtest Token
          #
          #   @param results [Lithic::Models::AuthRules::V2::BacktestResults::Results]
          #
          #   @param simulation_parameters [Lithic::Models::AuthRules::V2::BacktestResults::SimulationParameters]

          # @see Lithic::Models::AuthRules::V2::BacktestResults#results
          class Results < Lithic::Internal::Type::BaseModel
            # @!attribute current_version
            #
            #   @return [Lithic::Models::AuthRules::RuleStats, nil]
            optional :current_version, -> { Lithic::AuthRules::RuleStats }, nil?: true

            # @!attribute draft_version
            #
            #   @return [Lithic::Models::AuthRules::RuleStats, nil]
            optional :draft_version, -> { Lithic::AuthRules::RuleStats }, nil?: true

            # @!method initialize(current_version: nil, draft_version: nil)
            #   @param current_version [Lithic::Models::AuthRules::RuleStats, nil]
            #   @param draft_version [Lithic::Models::AuthRules::RuleStats, nil]
          end

          # @see Lithic::Models::AuthRules::V2::BacktestResults#simulation_parameters
          class SimulationParameters < Lithic::Internal::Type::BaseModel
            # @!attribute auth_rule_token
            #   Auth Rule Token
            #
            #   @return [String, nil]
            optional :auth_rule_token, String

            # @!attribute end_
            #   The end time of the simulation.
            #
            #   @return [Time, nil]
            optional :end_, Time, api_name: :end

            # @!attribute start
            #   The start time of the simulation.
            #
            #   @return [Time, nil]
            optional :start, Time

            # @!method initialize(auth_rule_token: nil, end_: nil, start: nil)
            #   @param auth_rule_token [String] Auth Rule Token
            #
            #   @param end_ [Time] The end time of the simulation.
            #
            #   @param start [Time] The start time of the simulation.
          end
        end
      end
    end
  end
end
