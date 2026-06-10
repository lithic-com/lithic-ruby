# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      # The case field that changed, or the action that was taken, in an activity entry:
      #
      # - `STATUS` - The case status changed
      # - `TITLE` - The case title changed
      # - `ASSIGNED_TO` - The case assignee changed
      # - `RESOLUTION_OUTCOME` - The resolution outcome was set or changed
      # - `RESOLUTION_NOTES` - The resolution notes were set or changed
      # - `TAGS` - The case tags changed
      # - `PRIORITY` - The case priority changed
      # - `COMMENT` - A comment was added or edited
      # - `FILE` - A file was attached to the case
      module CaseActivityType
        extend Lithic::Internal::Type::Enum

        STATUS = :STATUS
        TITLE = :TITLE
        ASSIGNED_TO = :ASSIGNED_TO
        RESOLUTION_OUTCOME = :RESOLUTION_OUTCOME
        RESOLUTION_NOTES = :RESOLUTION_NOTES
        TAGS = :TAGS
        PRIORITY = :PRIORITY
        COMMENT = :COMMENT
        FILE = :FILE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
