# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class SpendVelocityFilters < Lithic::Models::AuthRules::VelocityLimitFilters
        # @!attribute exclude_tags
        #   Tag key-value pairs to exclude from the velocity calculation. Transactions
        #   matching all specified tag key-value pairs will be excluded from the calculated
        #   velocity.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :exclude_tags, Lithic::Internal::Type::HashOf[String], nil?: true

        # @!attribute include_tags
        #   Tag key-value pairs to include in the velocity calculation. Only transactions
        #   matching all specified tag key-value pairs will be included in the calculated
        #   velocity.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :include_tags, Lithic::Internal::Type::HashOf[String], nil?: true

        # @!method initialize(exclude_tags: nil, include_tags: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::AuthRules::SpendVelocityFilters} for more details.
        #
        #   @param exclude_tags [Hash{Symbol=>String}, nil] Tag key-value pairs to exclude from the velocity calculation. Transactions match
        #
        #   @param include_tags [Hash{Symbol=>String}, nil] Tag key-value pairs to include in the velocity calculation. Only transactions ma
      end
    end
  end
end
