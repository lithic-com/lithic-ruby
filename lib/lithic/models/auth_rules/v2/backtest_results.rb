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
            #   @return [Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion, nil]
            optional :current_version,
                     -> { Lithic::AuthRules::V2::BacktestResults::Results::CurrentVersion },
                     nil?: true

            # @!attribute draft_version
            #
            #   @return [Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion, nil]
            optional :draft_version,
                     -> {
                       Lithic::AuthRules::V2::BacktestResults::Results::DraftVersion
                     },
                     nil?: true

            # @!method initialize(current_version: nil, draft_version: nil)
            #   @param current_version [Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion, nil]
            #   @param draft_version [Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion, nil]

            # @see Lithic::Models::AuthRules::V2::BacktestResults::Results#current_version
            class CurrentVersion < Lithic::Internal::Type::BaseModel
              # @!attribute approved
              #   The total number of historical transactions approved by this rule during the
              #   relevant period, or the number of transactions that would have been approved if
              #   the rule was evaluated in shadow mode.
              #
              #   @return [Integer, nil]
              optional :approved, Integer

              # @!attribute challenged
              #   The total number of historical transactions challenged by this rule during the
              #   relevant period, or the number of transactions that would have been challenged
              #   if the rule was evaluated in shadow mode. Currently applicable only for 3DS Auth
              #   Rules.
              #
              #   @return [Integer, nil]
              optional :challenged, Integer

              # @!attribute declined
              #   The total number of historical transactions declined by this rule during the
              #   relevant period, or the number of transactions that would have been declined if
              #   the rule was evaluated in shadow mode.
              #
              #   @return [Integer, nil]
              optional :declined, Integer

              # @!attribute examples
              #   Example events and their outcomes.
              #
              #   @return [Array<Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example>, nil]
              optional :examples,
                       -> {
                         Lithic::Internal::Type::ArrayOf[Lithic::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example]
                       }

              response_only do
                # @!attribute version
                #   The version of the rule, this is incremented whenever the rule's parameters
                #   change.
                #
                #   @return [Integer, nil]
                optional :version, Integer
              end

              # @!method initialize(approved: nil, challenged: nil, declined: nil, examples: nil, version: nil)
              #   Some parameter documentations has been truncated, see
              #   {Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion} for
              #   more details.
              #
              #   @param approved [Integer] The total number of historical transactions approved by this rule during the rel
              #
              #   @param challenged [Integer] The total number of historical transactions challenged by this rule during the r
              #
              #   @param declined [Integer] The total number of historical transactions declined by this rule during the rel
              #
              #   @param examples [Array<Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example>] Example events and their outcomes.
              #
              #   @param version [Integer] The version of the rule, this is incremented whenever the rule's parameters chan

              class Example < Lithic::Internal::Type::BaseModel
                # @!attribute approved
                #   Whether the rule would have approved the request.
                #
                #   @return [Boolean, nil]
                optional :approved, Lithic::Internal::Type::Boolean

                # @!attribute decision
                #   The decision made by the rule for this event.
                #
                #   @return [Symbol, Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example::Decision, nil]
                optional :decision,
                         enum: -> {
                           Lithic::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example::Decision
                         }

                # @!attribute event_token
                #   The event token.
                #
                #   @return [String, nil]
                optional :event_token, String

                # @!attribute timestamp
                #   The timestamp of the event.
                #
                #   @return [Time, nil]
                optional :timestamp, Time

                # @!method initialize(approved: nil, decision: nil, event_token: nil, timestamp: nil)
                #   @param approved [Boolean] Whether the rule would have approved the request.
                #
                #   @param decision [Symbol, Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example::Decision] The decision made by the rule for this event.
                #
                #   @param event_token [String] The event token.
                #
                #   @param timestamp [Time] The timestamp of the event.

                # The decision made by the rule for this event.
                #
                # @see Lithic::Models::AuthRules::V2::BacktestResults::Results::CurrentVersion::Example#decision
                module Decision
                  extend Lithic::Internal::Type::Enum

                  APPROVED = :APPROVED
                  DECLINED = :DECLINED
                  CHALLENGED = :CHALLENGED

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end

            # @see Lithic::Models::AuthRules::V2::BacktestResults::Results#draft_version
            class DraftVersion < Lithic::Internal::Type::BaseModel
              # @!attribute approved
              #   The total number of historical transactions approved by this rule during the
              #   relevant period, or the number of transactions that would have been approved if
              #   the rule was evaluated in shadow mode.
              #
              #   @return [Integer, nil]
              optional :approved, Integer

              # @!attribute challenged
              #   The total number of historical transactions challenged by this rule during the
              #   relevant period, or the number of transactions that would have been challenged
              #   if the rule was evaluated in shadow mode. Currently applicable only for 3DS Auth
              #   Rules.
              #
              #   @return [Integer, nil]
              optional :challenged, Integer

              # @!attribute declined
              #   The total number of historical transactions declined by this rule during the
              #   relevant period, or the number of transactions that would have been declined if
              #   the rule was evaluated in shadow mode.
              #
              #   @return [Integer, nil]
              optional :declined, Integer

              # @!attribute examples
              #   Example events and their outcomes.
              #
              #   @return [Array<Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion::Example>, nil]
              optional :examples,
                       -> {
                         Lithic::Internal::Type::ArrayOf[Lithic::AuthRules::V2::BacktestResults::Results::DraftVersion::Example]
                       }

              response_only do
                # @!attribute version
                #   The version of the rule, this is incremented whenever the rule's parameters
                #   change.
                #
                #   @return [Integer, nil]
                optional :version, Integer
              end

              # @!method initialize(approved: nil, challenged: nil, declined: nil, examples: nil, version: nil)
              #   Some parameter documentations has been truncated, see
              #   {Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion} for more
              #   details.
              #
              #   @param approved [Integer] The total number of historical transactions approved by this rule during the rel
              #
              #   @param challenged [Integer] The total number of historical transactions challenged by this rule during the r
              #
              #   @param declined [Integer] The total number of historical transactions declined by this rule during the rel
              #
              #   @param examples [Array<Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion::Example>] Example events and their outcomes.
              #
              #   @param version [Integer] The version of the rule, this is incremented whenever the rule's parameters chan

              class Example < Lithic::Internal::Type::BaseModel
                # @!attribute approved
                #   Whether the rule would have approved the request.
                #
                #   @return [Boolean, nil]
                optional :approved, Lithic::Internal::Type::Boolean

                # @!attribute decision
                #   The decision made by the rule for this event.
                #
                #   @return [Symbol, Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion::Example::Decision, nil]
                optional :decision,
                         enum: -> {
                           Lithic::AuthRules::V2::BacktestResults::Results::DraftVersion::Example::Decision
                         }

                # @!attribute event_token
                #   The event token.
                #
                #   @return [String, nil]
                optional :event_token, String

                # @!attribute timestamp
                #   The timestamp of the event.
                #
                #   @return [Time, nil]
                optional :timestamp, Time

                # @!method initialize(approved: nil, decision: nil, event_token: nil, timestamp: nil)
                #   @param approved [Boolean] Whether the rule would have approved the request.
                #
                #   @param decision [Symbol, Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion::Example::Decision] The decision made by the rule for this event.
                #
                #   @param event_token [String] The event token.
                #
                #   @param timestamp [Time] The timestamp of the event.

                # The decision made by the rule for this event.
                #
                # @see Lithic::Models::AuthRules::V2::BacktestResults::Results::DraftVersion::Example#decision
                module Decision
                  extend Lithic::Internal::Type::Enum

                  APPROVED = :APPROVED
                  DECLINED = :DECLINED
                  CHALLENGED = :CHALLENGED

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end
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
