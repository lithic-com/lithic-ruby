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
          required :results, -> { Lithic::Models::AuthRules::V2::BacktestResults::Results }

          # @!attribute simulation_parameters
          #
          #   @return [Lithic::Models::AuthRules::V2::BacktestResults::SimulationParameters]
          required :simulation_parameters,
                   -> { Lithic::Models::AuthRules::V2::BacktestResults::SimulationParameters }

          # @!parse
          #   # @param backtest_token [String]
          #   # @param results [Lithic::Models::AuthRules::V2::BacktestResults::Results]
          #   # @param simulation_parameters [Lithic::Models::AuthRules::V2::BacktestResults::SimulationParameters]
          #   #
          #   def initialize(backtest_token:, results:, simulation_parameters:, **) = super

          # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

          # @see Lithic::Models::AuthRules::V2::BacktestResults#results
          class Results < Lithic::Internal::Type::BaseModel
            # @!attribute current_version
            #
            #   @return [Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion, nil]
            optional :current_version,
                     -> { Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion },
                     nil?: true

            # @!attribute draft_version
            #
            #   @return [Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion, nil]
            optional :draft_version,
                     -> { Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion },
                     nil?: true

            # @!parse
            #   # @param current_version [Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion, nil]
            #   # @param draft_version [Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion, nil]
            #   #
            #   def initialize(current_version: nil, draft_version: nil, **) = super

            # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

            # @see Lithic::Models::AuthRules::V2::BacktestResults::Results#current_version
            class CurrentVersion < Lithic::Internal::Type::BaseModel
              # @!attribute [r] approved
              #   The total number of historical transactions approved by this rule during the
              #     backtest period, or the number of transactions that would have been approved if
              #     the rule was evaluated in shadow mode.
              #
              #   @return [Integer, nil]
              optional :approved, Integer

              # @!parse
              #   # @return [Integer]
              #   attr_writer :approved

              # @!attribute [r] declined
              #   The total number of historical transactions declined by this rule during the
              #     backtest period, or the number of transactions that would have been declined if
              #     the rule was evaluated in shadow mode.
              #
              #   @return [Integer, nil]
              optional :declined, Integer

              # @!parse
              #   # @return [Integer]
              #   attr_writer :declined

              # @!attribute [r] examples
              #   Example authorization request events that would have been approved or declined.
              #
              #   @return [Array<Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example>, nil]
              optional :examples,
                       -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example] }

              # @!parse
              #   # @return [Array<Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example>]
              #   attr_writer :examples

              response_only do
                # @!attribute [r] version
                #   The version of the rule, this is incremented whenever the rule's parameters
                #     change.
                #
                #   @return [Integer, nil]
                optional :version, Integer

                # @!parse
                #   # @return [Integer]
                #   attr_writer :version
              end

              # @!parse
              #   # @param approved [Integer]
              #   # @param declined [Integer]
              #   # @param examples [Array<Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example>]
              #   # @param version [Integer]
              #   #
              #   def initialize(approved: nil, declined: nil, examples: nil, version: nil, **) = super

              # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

              class Example < Lithic::Internal::Type::BaseModel
                # @!attribute [r] approved
                #   Whether the rule would have approved the authorization request.
                #
                #   @return [Boolean, nil]
                optional :approved, Lithic::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :approved

                # @!attribute [r] event_token
                #   The authorization request event token.
                #
                #   @return [String, nil]
                optional :event_token, String

                # @!parse
                #   # @return [String]
                #   attr_writer :event_token

                # @!attribute [r] timestamp
                #   The timestamp of the authorization request event.
                #
                #   @return [Time, nil]
                optional :timestamp, Time

                # @!parse
                #   # @return [Time]
                #   attr_writer :timestamp

                # @!parse
                #   # @param approved [Boolean]
                #   # @param event_token [String]
                #   # @param timestamp [Time]
                #   #
                #   def initialize(approved: nil, event_token: nil, timestamp: nil, **) = super

                # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
              end
            end

            # @see Lithic::Models::AuthRules::V2::BacktestResults::Results#draft_version
            class DraftVersion < Lithic::Internal::Type::BaseModel
              # @!attribute [r] approved
              #   The total number of historical transactions approved by this rule during the
              #     backtest period, or the number of transactions that would have been approved if
              #     the rule was evaluated in shadow mode.
              #
              #   @return [Integer, nil]
              optional :approved, Integer

              # @!parse
              #   # @return [Integer]
              #   attr_writer :approved

              # @!attribute [r] declined
              #   The total number of historical transactions declined by this rule during the
              #     backtest period, or the number of transactions that would have been declined if
              #     the rule was evaluated in shadow mode.
              #
              #   @return [Integer, nil]
              optional :declined, Integer

              # @!parse
              #   # @return [Integer]
              #   attr_writer :declined

              # @!attribute [r] examples
              #   Example authorization request events that would have been approved or declined.
              #
              #   @return [Array<Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion::Example>, nil]
              optional :examples,
                       -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion::Example] }

              # @!parse
              #   # @return [Array<Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion::Example>]
              #   attr_writer :examples

              response_only do
                # @!attribute [r] version
                #   The version of the rule, this is incremented whenever the rule's parameters
                #     change.
                #
                #   @return [Integer, nil]
                optional :version, Integer

                # @!parse
                #   # @return [Integer]
                #   attr_writer :version
              end

              # @!parse
              #   # @param approved [Integer]
              #   # @param declined [Integer]
              #   # @param examples [Array<Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion::Example>]
              #   # @param version [Integer]
              #   #
              #   def initialize(approved: nil, declined: nil, examples: nil, version: nil, **) = super

              # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

              class Example < Lithic::Internal::Type::BaseModel
                # @!attribute [r] approved
                #   Whether the rule would have approved the authorization request.
                #
                #   @return [Boolean, nil]
                optional :approved, Lithic::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :approved

                # @!attribute [r] event_token
                #   The authorization request event token.
                #
                #   @return [String, nil]
                optional :event_token, String

                # @!parse
                #   # @return [String]
                #   attr_writer :event_token

                # @!attribute [r] timestamp
                #   The timestamp of the authorization request event.
                #
                #   @return [Time, nil]
                optional :timestamp, Time

                # @!parse
                #   # @return [Time]
                #   attr_writer :timestamp

                # @!parse
                #   # @param approved [Boolean]
                #   # @param event_token [String]
                #   # @param timestamp [Time]
                #   #
                #   def initialize(approved: nil, event_token: nil, timestamp: nil, **) = super

                # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
              end
            end
          end

          # @see Lithic::Models::AuthRules::V2::BacktestResults#simulation_parameters
          class SimulationParameters < Lithic::Internal::Type::BaseModel
            # @!attribute [r] auth_rule_token
            #   Auth Rule Token
            #
            #   @return [String, nil]
            optional :auth_rule_token, String

            # @!parse
            #   # @return [String]
            #   attr_writer :auth_rule_token

            # @!attribute [r] end_
            #   The end time of the simulation.
            #
            #   @return [Time, nil]
            optional :end_, Time, api_name: :end

            # @!parse
            #   # @return [Time]
            #   attr_writer :end_

            # @!attribute [r] start
            #   The start time of the simulation.
            #
            #   @return [Time, nil]
            optional :start, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :start

            # @!parse
            #   # @param auth_rule_token [String]
            #   # @param end_ [Time]
            #   # @param start [Time]
            #   #
            #   def initialize(auth_rule_token: nil, end_: nil, start: nil, **) = super

            # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
          end
        end
      end
    end
  end
end
