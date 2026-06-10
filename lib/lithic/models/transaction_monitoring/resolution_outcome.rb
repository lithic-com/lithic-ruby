# frozen_string_literal: true

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

        CONFIRMED_FRAUD = :CONFIRMED_FRAUD
        SUSPICIOUS_ACTIVITY = :SUSPICIOUS_ACTIVITY
        FALSE_POSITIVE = :FALSE_POSITIVE
        NO_ACTION_REQUIRED = :NO_ACTION_REQUIRED
        ESCALATED_EXTERNAL = :ESCALATED_EXTERNAL

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
