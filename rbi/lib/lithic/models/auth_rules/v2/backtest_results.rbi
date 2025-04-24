# typed: strong

module Lithic
  module Models
    module AuthRules
      module V2
        class BacktestResults < Lithic::Internal::Type::BaseModel
          # Auth Rule Backtest Token
          sig { returns(String) }
          attr_accessor :backtest_token

          sig { returns(Lithic::Models::AuthRules::V2::BacktestResults::Results) }
          attr_reader :results

          sig do
            params(results: T.any(Lithic::Models::AuthRules::V2::BacktestResults::Results, Lithic::Internal::AnyHash))
              .void
          end
          attr_writer :results

          sig { returns(Lithic::Models::AuthRules::V2::BacktestResults::SimulationParameters) }
          attr_reader :simulation_parameters

          sig do
            params(
              simulation_parameters: T.any(Lithic::Models::AuthRules::V2::BacktestResults::SimulationParameters, Lithic::Internal::AnyHash)
            )
              .void
          end
          attr_writer :simulation_parameters

          sig do
            params(
              backtest_token: String,
              results: T.any(Lithic::Models::AuthRules::V2::BacktestResults::Results, Lithic::Internal::AnyHash),
              simulation_parameters: T.any(Lithic::Models::AuthRules::V2::BacktestResults::SimulationParameters, Lithic::Internal::AnyHash)
            )
              .returns(T.attached_class)
          end
          def self.new(
            # Auth Rule Backtest Token
            backtest_token:,
            results:,
            simulation_parameters:
          ); end
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
          def to_hash; end

          class Results < Lithic::Internal::Type::BaseModel
            sig { returns(T.nilable(Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion)) }
            attr_reader :current_version

            sig do
              params(
                current_version: T.nilable(
                  T.any(Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion, Lithic::Internal::AnyHash)
                )
              )
                .void
            end
            attr_writer :current_version

            sig { returns(T.nilable(Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion)) }
            attr_reader :draft_version

            sig do
              params(
                draft_version: T.nilable(
                  T.any(Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion, Lithic::Internal::AnyHash)
                )
              )
                .void
            end
            attr_writer :draft_version

            sig do
              params(
                current_version: T.nilable(
                  T.any(Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion, Lithic::Internal::AnyHash)
                ),
                draft_version: T.nilable(
                  T.any(Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion, Lithic::Internal::AnyHash)
                )
              )
                .returns(T.attached_class)
            end
            def self.new(current_version: nil, draft_version: nil); end

            sig do
              override
                .returns(
                  {
                    current_version: T.nilable(Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion),
                    draft_version: T.nilable(Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion)
                  }
                )
            end
            def to_hash; end

            class CurrentVersion < Lithic::Internal::Type::BaseModel
              # The total number of historical transactions approved by this rule during the
              # backtest period, or the number of transactions that would have been approved if
              # the rule was evaluated in shadow mode.
              sig { returns(T.nilable(Integer)) }
              attr_reader :approved

              sig { params(approved: Integer).void }
              attr_writer :approved

              # The total number of historical transactions declined by this rule during the
              # backtest period, or the number of transactions that would have been declined if
              # the rule was evaluated in shadow mode.
              sig { returns(T.nilable(Integer)) }
              attr_reader :declined

              sig { params(declined: Integer).void }
              attr_writer :declined

              # Example authorization request events that would have been approved or declined.
              sig do
                returns(
                  T.nilable(T::Array[Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example])
                )
              end
              attr_reader :examples

              sig do
                params(
                  examples: T::Array[
                    T.any(
                      Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example,
                      Lithic::Internal::AnyHash
                    )
                  ]
                )
                  .void
              end
              attr_writer :examples

              # The version of the rule, this is incremented whenever the rule's parameters
              # change.
              sig { returns(T.nilable(Integer)) }
              attr_reader :version

              sig { params(version: Integer).void }
              attr_writer :version

              sig do
                params(
                  approved: Integer,
                  declined: Integer,
                  examples: T::Array[
                    T.any(
                      Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example,
                      Lithic::Internal::AnyHash
                    )
                  ],
                  version: Integer
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The total number of historical transactions approved by this rule during the
                # backtest period, or the number of transactions that would have been approved if
                # the rule was evaluated in shadow mode.
                approved: nil,
                # The total number of historical transactions declined by this rule during the
                # backtest period, or the number of transactions that would have been declined if
                # the rule was evaluated in shadow mode.
                declined: nil,
                # Example authorization request events that would have been approved or declined.
                examples: nil,
                # The version of the rule, this is incremented whenever the rule's parameters
                # change.
                version: nil
              ); end
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
              def to_hash; end

              class Example < Lithic::Internal::Type::BaseModel
                # Whether the rule would have approved the authorization request.
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :approved

                sig { params(approved: T::Boolean).void }
                attr_writer :approved

                # The authorization request event token.
                sig { returns(T.nilable(String)) }
                attr_reader :event_token

                sig { params(event_token: String).void }
                attr_writer :event_token

                # The timestamp of the authorization request event.
                sig { returns(T.nilable(Time)) }
                attr_reader :timestamp

                sig { params(timestamp: Time).void }
                attr_writer :timestamp

                sig do
                  params(approved: T::Boolean, event_token: String, timestamp: Time).returns(T.attached_class)
                end
                def self.new(
                  # Whether the rule would have approved the authorization request.
                  approved: nil,
                  # The authorization request event token.
                  event_token: nil,
                  # The timestamp of the authorization request event.
                  timestamp: nil
                ); end
                sig { override.returns({approved: T::Boolean, event_token: String, timestamp: Time}) }
                def to_hash; end
              end
            end

            class DraftVersion < Lithic::Internal::Type::BaseModel
              # The total number of historical transactions approved by this rule during the
              # backtest period, or the number of transactions that would have been approved if
              # the rule was evaluated in shadow mode.
              sig { returns(T.nilable(Integer)) }
              attr_reader :approved

              sig { params(approved: Integer).void }
              attr_writer :approved

              # The total number of historical transactions declined by this rule during the
              # backtest period, or the number of transactions that would have been declined if
              # the rule was evaluated in shadow mode.
              sig { returns(T.nilable(Integer)) }
              attr_reader :declined

              sig { params(declined: Integer).void }
              attr_writer :declined

              # Example authorization request events that would have been approved or declined.
              sig do
                returns(
                  T.nilable(T::Array[Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion::Example])
                )
              end
              attr_reader :examples

              sig do
                params(
                  examples: T::Array[
                    T.any(
                      Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion::Example,
                      Lithic::Internal::AnyHash
                    )
                  ]
                )
                  .void
              end
              attr_writer :examples

              # The version of the rule, this is incremented whenever the rule's parameters
              # change.
              sig { returns(T.nilable(Integer)) }
              attr_reader :version

              sig { params(version: Integer).void }
              attr_writer :version

              sig do
                params(
                  approved: Integer,
                  declined: Integer,
                  examples: T::Array[
                    T.any(
                      Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion::Example,
                      Lithic::Internal::AnyHash
                    )
                  ],
                  version: Integer
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The total number of historical transactions approved by this rule during the
                # backtest period, or the number of transactions that would have been approved if
                # the rule was evaluated in shadow mode.
                approved: nil,
                # The total number of historical transactions declined by this rule during the
                # backtest period, or the number of transactions that would have been declined if
                # the rule was evaluated in shadow mode.
                declined: nil,
                # Example authorization request events that would have been approved or declined.
                examples: nil,
                # The version of the rule, this is incremented whenever the rule's parameters
                # change.
                version: nil
              ); end
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
              def to_hash; end

              class Example < Lithic::Internal::Type::BaseModel
                # Whether the rule would have approved the authorization request.
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :approved

                sig { params(approved: T::Boolean).void }
                attr_writer :approved

                # The authorization request event token.
                sig { returns(T.nilable(String)) }
                attr_reader :event_token

                sig { params(event_token: String).void }
                attr_writer :event_token

                # The timestamp of the authorization request event.
                sig { returns(T.nilable(Time)) }
                attr_reader :timestamp

                sig { params(timestamp: Time).void }
                attr_writer :timestamp

                sig do
                  params(approved: T::Boolean, event_token: String, timestamp: Time).returns(T.attached_class)
                end
                def self.new(
                  # Whether the rule would have approved the authorization request.
                  approved: nil,
                  # The authorization request event token.
                  event_token: nil,
                  # The timestamp of the authorization request event.
                  timestamp: nil
                ); end
                sig { override.returns({approved: T::Boolean, event_token: String, timestamp: Time}) }
                def to_hash; end
              end
            end
          end

          class SimulationParameters < Lithic::Internal::Type::BaseModel
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

            sig { params(auth_rule_token: String, end_: Time, start: Time).returns(T.attached_class) }
            def self.new(
              # Auth Rule Token
              auth_rule_token: nil,
              # The end time of the simulation.
              end_: nil,
              # The start time of the simulation.
              start: nil
            ); end
            sig { override.returns({auth_rule_token: String, end_: Time, start: Time}) }
            def to_hash; end
          end
        end
      end
    end
  end
end
