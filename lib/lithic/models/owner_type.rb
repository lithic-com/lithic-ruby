# frozen_string_literal: true

module Lithic
  module Models
    module OwnerType
      extend Lithic::Enum

      INDIVIDUAL = :INDIVIDUAL
      BUSINESS = :BUSINESS

      finalize!

      class << self
        # @!parse
        #   # @return [Array<Symbol>]
        #   def values; end
      end
    end
  end
end
