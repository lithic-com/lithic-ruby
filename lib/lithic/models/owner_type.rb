# frozen_string_literal: true

module Lithic
  module Models
    module OwnerType
      extend Lithic::Enum

      INDIVIDUAL = :INDIVIDUAL
      BUSINESS = :BUSINESS

      finalize!

      # @!parse
      #   # @return [Array<Symbol>]
      #   def self.values; end
    end
  end
end
