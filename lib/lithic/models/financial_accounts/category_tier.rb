# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      class CategoryTier < Lithic::Internal::Type::BaseModel
        # @!attribute cap_rate
        #   Maximum interest rate for this category, e.g. '0.0525' for 5.25%
        #
        #   @return [String, nil]
        optional :cap_rate, String

        # @!attribute rate
        #   Interest rate for this category, e.g. '0.0525' for 5.25%
        #
        #   @return [String, nil]
        optional :rate, String

        # @!method initialize(cap_rate: nil, rate: nil)
        #   Rate and rate cap for interest on a category
        #
        #   @param cap_rate [String] Maximum interest rate for this category, e.g. '0.0525' for 5.25%
        #
        #   @param rate [String] Interest rate for this category, e.g. '0.0525' for 5.25%
      end
    end
  end
end
