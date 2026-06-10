# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      # Priority level of a case, controlling queue ordering and SLA urgency
      module CasePriority
        extend Lithic::Internal::Type::Enum

        LOW = :LOW
        MEDIUM = :MEDIUM
        HIGH = :HIGH
        CRITICAL = :CRITICAL

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
