# typed: strong

module Lithic
  module Models
    module AuthRules
      module V2
        class BacktestResults < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::V2::BacktestResults,
                Lithic::Internal::AnyHash
              )
            end

          # Auth Rule Backtest Token
          sig { returns(String) }
          attr_accessor :backtest_token

          sig { returns(Lithic::AuthRules::V2::BacktestResults::Results) }
          attr_reader :results

          sig do
            params(
              results: Lithic::AuthRules::V2::BacktestResults::Results::OrHash
            ).void
          end
          attr_writer :results

          sig do
            returns(
              Lithic::AuthRules::V2::BacktestResults::SimulationParameters
            )
          end
          attr_reader :simulation_parameters

          sig do
            params(
              simulation_parameters:
                Lithic::AuthRules::V2::BacktestResults::SimulationParameters::OrHash
            ).void
          end
          attr_writer :simulation_parameters

          sig do
            params(
              backtest_token: String,
              results: Lithic::AuthRules::V2::BacktestResults::Results::OrHash,
              simulation_parameters:
                Lithic::AuthRules::V2::BacktestResults::SimulationParameters::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Auth Rule Backtest Token
            backtest_token:,
            results:,
            simulation_parameters:
          )
          end

          sig do
            override.returns(
              {
                backtest_token: String,
                results: Lithic::AuthRules::V2::BacktestResults::Results,
                simulation_parameters:
                  Lithic::AuthRules::V2::BacktestResults::SimulationParameters
              }
            )
          end
          def to_hash
          end

          class Results < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::AuthRules::V2::BacktestResults::Results,
                  Lithic::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Lithic::AuthRules::BacktestStats)) }
            attr_reader :current_version

            sig do
              params(
                current_version:
                  T.nilable(Lithic::AuthRules::BacktestStats::OrHash)
              ).void
            end
            attr_writer :current_version

            sig { returns(T.nilable(Lithic::AuthRules::BacktestStats)) }
            attr_reader :draft_version

            sig do
              params(
                draft_version:
                  T.nilable(Lithic::AuthRules::BacktestStats::OrHash)
              ).void
            end
            attr_writer :draft_version

            sig do
              params(
                current_version:
                  T.nilable(Lithic::AuthRules::BacktestStats::OrHash),
                draft_version:
                  T.nilable(Lithic::AuthRules::BacktestStats::OrHash)
              ).returns(T.attached_class)
            end
            def self.new(current_version: nil, draft_version: nil)
            end

            sig do
              override.returns(
                {
                  current_version: T.nilable(Lithic::AuthRules::BacktestStats),
                  draft_version: T.nilable(Lithic::AuthRules::BacktestStats)
                }
              )
            end
            def to_hash
            end
          end

          class SimulationParameters < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::AuthRules::V2::BacktestResults::SimulationParameters,
                  Lithic::Internal::AnyHash
                )
              end

            # The end time of the simulation
            sig { returns(Time) }
            attr_accessor :end_

            # The start time of the simulation
            sig { returns(Time) }
            attr_accessor :start

            sig { params(end_: Time, start: Time).returns(T.attached_class) }
            def self.new(
              # The end time of the simulation
              end_:,
              # The start time of the simulation
              start:
            )
            end

            sig { override.returns({ end_: Time, start: Time }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
