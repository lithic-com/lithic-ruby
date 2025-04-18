# frozen_string_literal: true

module Lithic
  module Models
    module CreditProducts
      # @see Lithic::Resources::CreditProducts::ExtendedCredit#retrieve
      class CreditProductsExtendedCredit < Lithic::Internal::Type::BaseModel
        # @!attribute credit_extended
        #
        #   @return [Integer]
        required :credit_extended, Integer

        # @!method initialize(credit_extended:)
        #   @param credit_extended [Integer]
      end
    end
  end
end
