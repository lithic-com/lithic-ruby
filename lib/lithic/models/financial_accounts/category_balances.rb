# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      class CategoryBalances < Lithic::Internal::Type::BaseModel
        # @!attribute fees
        #
        #   @return [Integer]
        required :fees, Integer

        # @!attribute interest
        #
        #   @return [Integer]
        required :interest, Integer

        # @!attribute principal
        #
        #   @return [Integer]
        required :principal, Integer

        # @!method initialize(fees:, interest:, principal:)
        #   @param fees [Integer]
        #   @param interest [Integer]
        #   @param principal [Integer]
      end
    end
  end
end
