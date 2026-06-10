# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      # Status of a case as it progresses through the review workflow:
      #
      # - `OPEN` - The case has been created and is still collecting matching
      #   transactions
      # - `ASSIGNED` - An analyst has been assigned and transaction collection has
      #   stopped
      # - `IN_REVIEW` - The case is actively being investigated
      # - `ESCALATED` - The case has been reviewed and requires additional oversight
      # - `RESOLVED` - A determination has been made and a resolution recorded
      # - `CLOSED` - The case is finalized
      module CaseStatus
        extend Lithic::Internal::Type::Enum

        OPEN = :OPEN
        ASSIGNED = :ASSIGNED
        IN_REVIEW = :IN_REVIEW
        ESCALATED = :ESCALATED
        RESOLVED = :RESOLVED
        CLOSED = :CLOSED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
