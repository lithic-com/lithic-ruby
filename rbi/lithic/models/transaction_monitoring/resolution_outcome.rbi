# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      # Outcome recorded when a case is resolved:
      #
      # - `CONFIRMED_FRAUD` - The reviewed activity was confirmed to be fraudulent
      # - `SUSPICIOUS_ACTIVITY` - The activity is suspicious but not confirmed fraud
      # - `FALSE_POSITIVE` - The activity was legitimate and the alert was a false
      #   positive
      # - `NO_ACTION_REQUIRED` - No further action is required
      # - `ESCALATED_EXTERNAL` - The case was escalated to an external party
      module ResolutionOutcome
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::TransactionMonitoring::ResolutionOutcome)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONFIRMED_FRAUD =
          T.let(
            :CONFIRMED_FRAUD,
            Lithic::TransactionMonitoring::ResolutionOutcome::TaggedSymbol
          )
        SUSPICIOUS_ACTIVITY =
          T.let(
            :SUSPICIOUS_ACTIVITY,
            Lithic::TransactionMonitoring::ResolutionOutcome::TaggedSymbol
          )
        FALSE_POSITIVE =
          T.let(
            :FALSE_POSITIVE,
            Lithic::TransactionMonitoring::ResolutionOutcome::TaggedSymbol
          )
        NO_ACTION_REQUIRED =
          T.let(
            :NO_ACTION_REQUIRED,
            Lithic::TransactionMonitoring::ResolutionOutcome::TaggedSymbol
          )
        ESCALATED_EXTERNAL =
          T.let(
            :ESCALATED_EXTERNAL,
            Lithic::TransactionMonitoring::ResolutionOutcome::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::TransactionMonitoring::ResolutionOutcome::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
