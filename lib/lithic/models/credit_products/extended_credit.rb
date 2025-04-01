# frozen_string_literal: true

module Lithic
  module Models
    module CreditProducts
      # @see Lithic::Resources::CreditProducts::ExtendedCredit#retrieve
      class CreditProductsExtendedCredit < Lithic::BaseModel
        # @!attribute credit_extended
        #
        #   @return [Integer]
        required :credit_extended, Integer

        # @!parse
        #   # @param credit_extended [Integer]
        #   #
        #   def initialize(credit_extended:, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
