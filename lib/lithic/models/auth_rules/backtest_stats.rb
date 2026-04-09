# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class BacktestStats < Lithic::Internal::Type::BaseModel
        # @!attribute approved
        #   The total number of historical transactions approved by this rule during the
        #   backtest period, or the number of transactions that would have been approved if
        #   the rule was evaluated in shadow mode.
        #
        #   @return [Integer, nil]
        optional :approved, Integer

        # @!attribute challenged
        #   The total number of historical transactions challenged by this rule during the
        #   backtest period, or the number of transactions that would have been challenged
        #   if the rule was evaluated in shadow mode. Currently applicable only for 3DS Auth
        #   Rules.
        #
        #   @return [Integer, nil]
        optional :challenged, Integer

        # @!attribute declined
        #   The total number of historical transactions declined by this rule during the
        #   backtest period, or the number of transactions that would have been declined if
        #   the rule was evaluated in shadow mode.
        #
        #   @return [Integer, nil]
        optional :declined, Integer

        # @!attribute examples
        #   Example events and their outcomes.
        #
        #   @return [Array<Lithic::Models::AuthRules::BacktestStats::Example>, nil]
        optional :examples, -> { Lithic::Internal::Type::ArrayOf[Lithic::AuthRules::BacktestStats::Example] }

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
        #   {Lithic::Models::AuthRules::BacktestStats} for more details.
        #
        #   @param approved [Integer] The total number of historical transactions approved by this rule during the bac
        #
        #   @param challenged [Integer] The total number of historical transactions challenged by this rule during the b
        #
        #   @param declined [Integer] The total number of historical transactions declined by this rule during the bac
        #
        #   @param examples [Array<Lithic::Models::AuthRules::BacktestStats::Example>] Example events and their outcomes.
        #
        #   @param version [Integer] The version of the rule, this is incremented whenever the rule's parameters chan

        class Example < Lithic::Internal::Type::BaseModel
          # @!attribute decision
          #   The decision made by the rule for this event.
          #
          #   @return [Symbol, Lithic::Models::AuthRules::BacktestStats::Example::Decision, nil]
          optional :decision, enum: -> { Lithic::AuthRules::BacktestStats::Example::Decision }

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

          # @!attribute transaction_token
          #   The token of the transaction associated with the event
          #
          #   @return [String, nil]
          optional :transaction_token, String, nil?: true

          # @!method initialize(decision: nil, event_token: nil, timestamp: nil, transaction_token: nil)
          #   @param decision [Symbol, Lithic::Models::AuthRules::BacktestStats::Example::Decision] The decision made by the rule for this event.
          #
          #   @param event_token [String] The event token.
          #
          #   @param timestamp [Time] The timestamp of the event.
          #
          #   @param transaction_token [String, nil] The token of the transaction associated with the event

          # The decision made by the rule for this event.
          #
          # @see Lithic::Models::AuthRules::BacktestStats::Example#decision
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
  end
end
