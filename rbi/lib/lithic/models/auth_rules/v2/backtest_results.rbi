# typed: strong

module Lithic
  module Models
    module AuthRules
      module V2
        class BacktestResults < Lithic::BaseModel
          # Auth Rule Backtest Token
          sig { returns(String) }
          def backtest_token
          end

          sig { params(_: String).returns(String) }
          def backtest_token=(_)
          end

          sig { returns(Lithic::Models::AuthRules::V2::BacktestResults::Results) }
          def results
          end

          sig do
            params(_: T.any(Lithic::Models::AuthRules::V2::BacktestResults::Results, Lithic::Util::AnyHash))
              .returns(T.any(Lithic::Models::AuthRules::V2::BacktestResults::Results, Lithic::Util::AnyHash))
          end
          def results=(_)
          end

          sig { returns(Lithic::Models::AuthRules::V2::BacktestResults::SimulationParameters) }
          def simulation_parameters
          end

          sig do
            params(
              _: T.any(Lithic::Models::AuthRules::V2::BacktestResults::SimulationParameters, Lithic::Util::AnyHash)
            )
              .returns(
                T.any(Lithic::Models::AuthRules::V2::BacktestResults::SimulationParameters, Lithic::Util::AnyHash)
              )
          end
          def simulation_parameters=(_)
          end

          sig do
            params(
              backtest_token: String,
              results: T.any(Lithic::Models::AuthRules::V2::BacktestResults::Results, Lithic::Util::AnyHash),
              simulation_parameters: T.any(Lithic::Models::AuthRules::V2::BacktestResults::SimulationParameters, Lithic::Util::AnyHash)
            )
              .returns(T.attached_class)
          end
          def self.new(backtest_token:, results:, simulation_parameters:)
          end

          sig do
            override
              .returns(
                {
                  backtest_token: String,
                  results: Lithic::Models::AuthRules::V2::BacktestResults::Results,
                  simulation_parameters: Lithic::Models::AuthRules::V2::BacktestResults::SimulationParameters
                }
              )
          end
          def to_hash
          end

          class Results < Lithic::BaseModel
            sig { returns(T.nilable(Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion)) }
            def current_version
            end

            sig do
              params(
                _: T.nilable(
                  T.any(Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion, Lithic::Util::AnyHash)
                )
              )
                .returns(
                  T.nilable(
                    T.any(Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion, Lithic::Util::AnyHash)
                  )
                )
            end
            def current_version=(_)
            end

            sig { returns(T.nilable(Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion)) }
            def draft_version
            end

            sig do
              params(
                _: T.nilable(
                  T.any(Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion, Lithic::Util::AnyHash)
                )
              )
                .returns(
                  T.nilable(
                    T.any(Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion, Lithic::Util::AnyHash)
                  )
                )
            end
            def draft_version=(_)
            end

            sig do
              params(
                current_version: T.nilable(
                  T.any(Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion, Lithic::Util::AnyHash)
                ),
                draft_version: T.nilable(
                  T.any(Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion, Lithic::Util::AnyHash)
                )
              )
                .returns(T.attached_class)
            end
            def self.new(current_version: nil, draft_version: nil)
            end

            sig do
              override
                .returns(
                  {
                    current_version: T.nilable(Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion),
                    draft_version: T.nilable(Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion)
                  }
                )
            end
            def to_hash
            end

            class CurrentVersion < Lithic::BaseModel
              # The total number of historical transactions approved by this rule during the
              #   backtest period, or the number of transactions that would have been approved if
              #   the rule was evaluated in shadow mode.
              sig { returns(T.nilable(Integer)) }
              def approved
              end

              sig { params(_: Integer).returns(Integer) }
              def approved=(_)
              end

              # The total number of historical transactions declined by this rule during the
              #   backtest period, or the number of transactions that would have been declined if
              #   the rule was evaluated in shadow mode.
              sig { returns(T.nilable(Integer)) }
              def declined
              end

              sig { params(_: Integer).returns(Integer) }
              def declined=(_)
              end

              # Example authorization request events that would have been approved or declined.
              sig do
                returns(
                  T.nilable(T::Array[Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example])
                )
              end
              def examples
              end

              sig do
                params(_: T::Array[Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example])
                  .returns(T::Array[Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example])
              end
              def examples=(_)
              end

              # The version of the rule, this is incremented whenever the rule's parameters
              #   change.
              sig { returns(T.nilable(Integer)) }
              def version
              end

              sig { params(_: Integer).returns(Integer) }
              def version=(_)
              end

              sig do
                params(
                  approved: Integer,
                  declined: Integer,
                  examples: T::Array[Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example],
                  version: Integer
                )
                  .returns(T.attached_class)
              end
              def self.new(approved: nil, declined: nil, examples: nil, version: nil)
              end

              sig do
                override
                  .returns(
                    {
                      approved: Integer,
                      declined: Integer,
                      examples: T::Array[Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example],
                      version: Integer
                    }
                  )
              end
              def to_hash
              end

              class Example < Lithic::BaseModel
                # Whether the rule would have approved the authorization request.
                sig { returns(T.nilable(T::Boolean)) }
                def approved
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def approved=(_)
                end

                # The authorization request event token.
                sig { returns(T.nilable(String)) }
                def event_token
                end

                sig { params(_: String).returns(String) }
                def event_token=(_)
                end

                # The timestamp of the authorization request event.
                sig { returns(T.nilable(Time)) }
                def timestamp
                end

                sig { params(_: Time).returns(Time) }
                def timestamp=(_)
                end

                sig do
                  params(approved: T::Boolean, event_token: String, timestamp: Time).returns(T.attached_class)
                end
                def self.new(approved: nil, event_token: nil, timestamp: nil)
                end

                sig { override.returns({approved: T::Boolean, event_token: String, timestamp: Time}) }
                def to_hash
                end
              end
            end

            class DraftVersion < Lithic::BaseModel
              # The total number of historical transactions approved by this rule during the
              #   backtest period, or the number of transactions that would have been approved if
              #   the rule was evaluated in shadow mode.
              sig { returns(T.nilable(Integer)) }
              def approved
              end

              sig { params(_: Integer).returns(Integer) }
              def approved=(_)
              end

              # The total number of historical transactions declined by this rule during the
              #   backtest period, or the number of transactions that would have been declined if
              #   the rule was evaluated in shadow mode.
              sig { returns(T.nilable(Integer)) }
              def declined
              end

              sig { params(_: Integer).returns(Integer) }
              def declined=(_)
              end

              # Example authorization request events that would have been approved or declined.
              sig do
                returns(
                  T.nilable(T::Array[Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion::Example])
                )
              end
              def examples
              end

              sig do
                params(_: T::Array[Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion::Example])
                  .returns(T::Array[Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion::Example])
              end
              def examples=(_)
              end

              # The version of the rule, this is incremented whenever the rule's parameters
              #   change.
              sig { returns(T.nilable(Integer)) }
              def version
              end

              sig { params(_: Integer).returns(Integer) }
              def version=(_)
              end

              sig do
                params(
                  approved: Integer,
                  declined: Integer,
                  examples: T::Array[Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion::Example],
                  version: Integer
                )
                  .returns(T.attached_class)
              end
              def self.new(approved: nil, declined: nil, examples: nil, version: nil)
              end

              sig do
                override
                  .returns(
                    {
                      approved: Integer,
                      declined: Integer,
                      examples: T::Array[Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion::Example],
                      version: Integer
                    }
                  )
              end
              def to_hash
              end

              class Example < Lithic::BaseModel
                # Whether the rule would have approved the authorization request.
                sig { returns(T.nilable(T::Boolean)) }
                def approved
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def approved=(_)
                end

                # The authorization request event token.
                sig { returns(T.nilable(String)) }
                def event_token
                end

                sig { params(_: String).returns(String) }
                def event_token=(_)
                end

                # The timestamp of the authorization request event.
                sig { returns(T.nilable(Time)) }
                def timestamp
                end

                sig { params(_: Time).returns(Time) }
                def timestamp=(_)
                end

                sig do
                  params(approved: T::Boolean, event_token: String, timestamp: Time).returns(T.attached_class)
                end
                def self.new(approved: nil, event_token: nil, timestamp: nil)
                end

                sig { override.returns({approved: T::Boolean, event_token: String, timestamp: Time}) }
                def to_hash
                end
              end
            end
          end

          class SimulationParameters < Lithic::BaseModel
            # Auth Rule Token
            sig { returns(T.nilable(String)) }
            def auth_rule_token
            end

            sig { params(_: String).returns(String) }
            def auth_rule_token=(_)
            end

            # The end time of the simulation.
            sig { returns(T.nilable(Time)) }
            def end_
            end

            sig { params(_: Time).returns(Time) }
            def end_=(_)
            end

            # The start time of the simulation.
            sig { returns(T.nilable(Time)) }
            def start
            end

            sig { params(_: Time).returns(Time) }
            def start=(_)
            end

            sig { params(auth_rule_token: String, end_: Time, start: Time).returns(T.attached_class) }
            def self.new(auth_rule_token: nil, end_: nil, start: nil)
            end

            sig { override.returns({auth_rule_token: String, end_: Time, start: Time}) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
