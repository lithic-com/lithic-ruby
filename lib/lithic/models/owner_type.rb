# frozen_string_literal: true

module Lithic
  module Models
    module OwnerType
      extend Lithic::Internal::Type::Enum

      INDIVIDUAL = :INDIVIDUAL
      BUSINESS = :BUSINESS

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
