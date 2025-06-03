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

            sig do
              returns(
                T.nilable(
                  Lithic::AuthRules::V2::BacktestResults::Results::CurrentVersion
                )
              )
            end
            attr_reader :current_version

            sig do
              params(
                current_version:
                  T.nilable(
                    Lithic::AuthRules::V2::BacktestResults::Results::CurrentVersion::OrHash
                  )
              ).void
            end
            attr_writer :current_version

            sig do
              returns(
                T.nilable(
                  Lithic::AuthRules::V2::BacktestResults::Results::DraftVersion
                )
              )
            end
            attr_reader :draft_version

            sig do
              params(
                draft_version:
                  T.nilable(
                    Lithic::AuthRules::V2::BacktestResults::Results::DraftVersion::OrHash
                  )
              ).void
            end
            attr_writer :draft_version

            sig do
              params(
                current_version:
                  T.nilable(
                    Lithic::AuthRules::V2::BacktestResults::Results::CurrentVersion::OrHash
                  ),
                draft_version:
                  T.nilable(
                    Lithic::AuthRules::V2::BacktestResults::Results::DraftVersion::OrHash
                  )
              ).returns(T.attached_class)
            end
            def self.new(current_version: nil, draft_version: nil)
            end

            sig do
              override.returns(
                {
                  current_version:
                    T.nilable(
                      Lithic::AuthRules::V2::BacktestResults::Results::CurrentVersion
                    ),
                  draft_version:
                    T.nilable(
                      Lithic::AuthRules::V2::BacktestResults::Results::DraftVersion
                    )
                }
              )
            end
            def to_hash
            end

            class CurrentVersion < Lithic::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Lithic::AuthRules::V2::BacktestResults::Results::CurrentVersion,
                    Lithic::Internal::AnyHash
                  )
                end

              # The total number of historical transactions approved by this rule during the
              # relevant period, or the number of transactions that would have been approved if
              # the rule was evaluated in shadow mode.
              sig { returns(T.nilable(Integer)) }
              attr_reader :approved

              sig { params(approved: Integer).void }
              attr_writer :approved

              # The total number of historical transactions challenged by this rule during the
              # relevant period, or the number of transactions that would have been challenged
              # if the rule was evaluated in shadow mode. Currently applicable only for 3DS Auth
              # Rules.
              sig { returns(T.nilable(Integer)) }
              attr_reader :challenged

              sig { params(challenged: Integer).void }
              attr_writer :challenged

              # The total number of historical transactions declined by this rule during the
              # relevant period, or the number of transactions that would have been declined if
              # the rule was evaluated in shadow mode.
              sig { returns(T.nilable(Integer)) }
              attr_reader :declined

              sig { params(declined: Integer).void }
              attr_writer :declined

              # Example events and their outcomes.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Lithic::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example
                    ]
                  )
                )
              end
              attr_reader :examples

              sig do
                params(
                  examples:
                    T::Array[
                      Lithic::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example::OrHash
                    ]
                ).void
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
                  challenged: Integer,
                  declined: Integer,
                  examples:
                    T::Array[
                      Lithic::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example::OrHash
                    ],
                  version: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                # The total number of historical transactions approved by this rule during the
                # relevant period, or the number of transactions that would have been approved if
                # the rule was evaluated in shadow mode.
                approved: nil,
                # The total number of historical transactions challenged by this rule during the
                # relevant period, or the number of transactions that would have been challenged
                # if the rule was evaluated in shadow mode. Currently applicable only for 3DS Auth
                # Rules.
                challenged: nil,
                # The total number of historical transactions declined by this rule during the
                # relevant period, or the number of transactions that would have been declined if
                # the rule was evaluated in shadow mode.
                declined: nil,
                # Example events and their outcomes.
                examples: nil,
                # The version of the rule, this is incremented whenever the rule's parameters
                # change.
                version: nil
              )
              end

              sig do
                override.returns(
                  {
                    approved: Integer,
                    challenged: Integer,
                    declined: Integer,
                    examples:
                      T::Array[
                        Lithic::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example
                      ],
                    version: Integer
                  }
                )
              end
              def to_hash
              end

              class Example < Lithic::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Lithic::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example,
                      Lithic::Internal::AnyHash
                    )
                  end

                # Whether the rule would have approved the request.
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :approved

                sig { params(approved: T::Boolean).void }
                attr_writer :approved

                # The decision made by the rule for this event.
                sig do
                  returns(
                    T.nilable(
                      Lithic::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example::Decision::TaggedSymbol
                    )
                  )
                end
                attr_reader :decision

                sig do
                  params(
                    decision:
                      Lithic::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example::Decision::OrSymbol
                  ).void
                end
                attr_writer :decision

                # The event token.
                sig { returns(T.nilable(String)) }
                attr_reader :event_token

                sig { params(event_token: String).void }
                attr_writer :event_token

                # The timestamp of the event.
                sig { returns(T.nilable(Time)) }
                attr_reader :timestamp

                sig { params(timestamp: Time).void }
                attr_writer :timestamp

                sig do
                  params(
                    approved: T::Boolean,
                    decision:
                      Lithic::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example::Decision::OrSymbol,
                    event_token: String,
                    timestamp: Time
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Whether the rule would have approved the request.
                  approved: nil,
                  # The decision made by the rule for this event.
                  decision: nil,
                  # The event token.
                  event_token: nil,
                  # The timestamp of the event.
                  timestamp: nil
                )
                end

                sig do
                  override.returns(
                    {
                      approved: T::Boolean,
                      decision:
                        Lithic::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example::Decision::TaggedSymbol,
                      event_token: String,
                      timestamp: Time
                    }
                  )
                end
                def to_hash
                end

                # The decision made by the rule for this event.
                module Decision
                  extend Lithic::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Lithic::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example::Decision
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  APPROVED =
                    T.let(
                      :APPROVED,
                      Lithic::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example::Decision::TaggedSymbol
                    )
                  DECLINED =
                    T.let(
                      :DECLINED,
                      Lithic::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example::Decision::TaggedSymbol
                    )
                  CHALLENGED =
                    T.let(
                      :CHALLENGED,
                      Lithic::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example::Decision::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Lithic::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example::Decision::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end

            class DraftVersion < Lithic::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Lithic::AuthRules::V2::BacktestResults::Results::DraftVersion,
                    Lithic::Internal::AnyHash
                  )
                end

              # The total number of historical transactions approved by this rule during the
              # relevant period, or the number of transactions that would have been approved if
              # the rule was evaluated in shadow mode.
              sig { returns(T.nilable(Integer)) }
              attr_reader :approved

              sig { params(approved: Integer).void }
              attr_writer :approved

              # The total number of historical transactions challenged by this rule during the
              # relevant period, or the number of transactions that would have been challenged
              # if the rule was evaluated in shadow mode. Currently applicable only for 3DS Auth
              # Rules.
              sig { returns(T.nilable(Integer)) }
              attr_reader :challenged

              sig { params(challenged: Integer).void }
              attr_writer :challenged

              # The total number of historical transactions declined by this rule during the
              # relevant period, or the number of transactions that would have been declined if
              # the rule was evaluated in shadow mode.
              sig { returns(T.nilable(Integer)) }
              attr_reader :declined

              sig { params(declined: Integer).void }
              attr_writer :declined

              # Example events and their outcomes.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Lithic::AuthRules::V2::BacktestResults::Results::DraftVersion::Example
                    ]
                  )
                )
              end
              attr_reader :examples

              sig do
                params(
                  examples:
                    T::Array[
                      Lithic::AuthRules::V2::BacktestResults::Results::DraftVersion::Example::OrHash
                    ]
                ).void
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
                  challenged: Integer,
                  declined: Integer,
                  examples:
                    T::Array[
                      Lithic::AuthRules::V2::BacktestResults::Results::DraftVersion::Example::OrHash
                    ],
                  version: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                # The total number of historical transactions approved by this rule during the
                # relevant period, or the number of transactions that would have been approved if
                # the rule was evaluated in shadow mode.
                approved: nil,
                # The total number of historical transactions challenged by this rule during the
                # relevant period, or the number of transactions that would have been challenged
                # if the rule was evaluated in shadow mode. Currently applicable only for 3DS Auth
                # Rules.
                challenged: nil,
                # The total number of historical transactions declined by this rule during the
                # relevant period, or the number of transactions that would have been declined if
                # the rule was evaluated in shadow mode.
                declined: nil,
                # Example events and their outcomes.
                examples: nil,
                # The version of the rule, this is incremented whenever the rule's parameters
                # change.
                version: nil
              )
              end

              sig do
                override.returns(
                  {
                    approved: Integer,
                    challenged: Integer,
                    declined: Integer,
                    examples:
                      T::Array[
                        Lithic::AuthRules::V2::BacktestResults::Results::DraftVersion::Example
                      ],
                    version: Integer
                  }
                )
              end
              def to_hash
              end

              class Example < Lithic::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Lithic::AuthRules::V2::BacktestResults::Results::DraftVersion::Example,
                      Lithic::Internal::AnyHash
                    )
                  end

                # Whether the rule would have approved the request.
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :approved

                sig { params(approved: T::Boolean).void }
                attr_writer :approved

                # The decision made by the rule for this event.
                sig do
                  returns(
                    T.nilable(
                      Lithic::AuthRules::V2::BacktestResults::Results::DraftVersion::Example::Decision::TaggedSymbol
                    )
                  )
                end
                attr_reader :decision

                sig do
                  params(
                    decision:
                      Lithic::AuthRules::V2::BacktestResults::Results::DraftVersion::Example::Decision::OrSymbol
                  ).void
                end
                attr_writer :decision

                # The event token.
                sig { returns(T.nilable(String)) }
                attr_reader :event_token

                sig { params(event_token: String).void }
                attr_writer :event_token

                # The timestamp of the event.
                sig { returns(T.nilable(Time)) }
                attr_reader :timestamp

                sig { params(timestamp: Time).void }
                attr_writer :timestamp

                sig do
                  params(
                    approved: T::Boolean,
                    decision:
                      Lithic::AuthRules::V2::BacktestResults::Results::DraftVersion::Example::Decision::OrSymbol,
                    event_token: String,
                    timestamp: Time
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Whether the rule would have approved the request.
                  approved: nil,
                  # The decision made by the rule for this event.
                  decision: nil,
                  # The event token.
                  event_token: nil,
                  # The timestamp of the event.
                  timestamp: nil
                )
                end

                sig do
                  override.returns(
                    {
                      approved: T::Boolean,
                      decision:
                        Lithic::AuthRules::V2::BacktestResults::Results::DraftVersion::Example::Decision::TaggedSymbol,
                      event_token: String,
                      timestamp: Time
                    }
                  )
                end
                def to_hash
                end

                # The decision made by the rule for this event.
                module Decision
                  extend Lithic::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Lithic::AuthRules::V2::BacktestResults::Results::DraftVersion::Example::Decision
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  APPROVED =
                    T.let(
                      :APPROVED,
                      Lithic::AuthRules::V2::BacktestResults::Results::DraftVersion::Example::Decision::TaggedSymbol
                    )
                  DECLINED =
                    T.let(
                      :DECLINED,
                      Lithic::AuthRules::V2::BacktestResults::Results::DraftVersion::Example::Decision::TaggedSymbol
                    )
                  CHALLENGED =
                    T.let(
                      :CHALLENGED,
                      Lithic::AuthRules::V2::BacktestResults::Results::DraftVersion::Example::Decision::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Lithic::AuthRules::V2::BacktestResults::Results::DraftVersion::Example::Decision::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
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
