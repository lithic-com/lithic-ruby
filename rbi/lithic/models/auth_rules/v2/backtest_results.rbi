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

            sig { returns(T.nilable(Lithic::AuthRules::RuleStats)) }
            attr_reader :current_version

            sig do
              params(
                current_version: T.nilable(Lithic::AuthRules::RuleStats::OrHash)
              ).void
            end
            attr_writer :current_version

            sig { returns(T.nilable(Lithic::AuthRules::RuleStats)) }
            attr_reader :draft_version

            sig do
              params(
                draft_version: T.nilable(Lithic::AuthRules::RuleStats::OrHash)
              ).void
            end
            attr_writer :draft_version

            sig do
              params(
                current_version:
                  T.nilable(Lithic::AuthRules::RuleStats::OrHash),
                draft_version: T.nilable(Lithic::AuthRules::RuleStats::OrHash)
              ).returns(T.attached_class)
            end
            def self.new(current_version: nil, draft_version: nil)
            end

            sig do
              override.returns(
                {
                  current_version: T.nilable(Lithic::AuthRules::RuleStats),
                  draft_version: T.nilable(Lithic::AuthRules::RuleStats)
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

            # Auth Rule Token
            sig { returns(T.nilable(String)) }
            attr_reader :auth_rule_token

            sig { params(auth_rule_token: String).void }
            attr_writer :auth_rule_token

            # The end time of the simulation.
            sig { returns(T.nilable(Time)) }
            attr_reader :end_

            sig { params(end_: Time).void }
            attr_writer :end_

            # The start time of the simulation.
            sig { returns(T.nilable(Time)) }
            attr_reader :start

            sig { params(start: Time).void }
            attr_writer :start

            sig do
              params(auth_rule_token: String, end_: Time, start: Time).returns(
                T.attached_class
              )
            end
            def self.new(
              # Auth Rule Token
              auth_rule_token: nil,
              # The end time of the simulation.
              end_: nil,
              # The start time of the simulation.
              start: nil
            )
            end

            sig do
              override.returns(
                { auth_rule_token: String, end_: Time, start: Time }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
