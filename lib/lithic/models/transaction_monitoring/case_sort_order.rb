# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      # Sort order for listing cases. Defaults to `CREATED_DESC` (newest first):
      #
      # - `CREATED_ASC` - Oldest first
      # - `CREATED_DESC` - Newest first
      # - `PRIORITY_DESC` - Highest priority first
      # - `PRIORITY_ASC` - Lowest priority first
      # - `STATUS_DESC` - Furthest workflow stage first
      # - `STATUS_ASC` - Earliest workflow stage first
      module CaseSortOrder
        extend Lithic::Internal::Type::Enum

        CREATED_ASC = :CREATED_ASC
        CREATED_DESC = :CREATED_DESC
        PRIORITY_DESC = :PRIORITY_DESC
        PRIORITY_ASC = :PRIORITY_ASC
        STATUS_DESC = :STATUS_DESC
        STATUS_ASC = :STATUS_ASC

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
