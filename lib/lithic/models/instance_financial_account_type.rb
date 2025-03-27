# frozen_string_literal: true

module Lithic
  module Models
    # Type of instance financial account
    module InstanceFinancialAccountType
      extend Lithic::Enum

      ISSUING = :ISSUING
      RESERVE = :RESERVE
      OPERATING = :OPERATING

      finalize!

      # @!parse
      #   # @return [Array<Symbol>]
      #   def self.values; end
    end
  end
end
