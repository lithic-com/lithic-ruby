# frozen_string_literal: true

module Lithic
  module Models
    module CreditProducts
      # @see Lithic::Resources::CreditProducts::PrimeRates#retrieve
      class PrimeRateRetrieveParams < Lithic::Internal::Type::BaseModel
        # @!parse
        #   extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute [r] ending_before
        #   The effective date that the prime rates ends before
        #
        #   @return [Date, nil]
        optional :ending_before, Date

        # @!parse
        #   # @return [Date]
        #   attr_writer :ending_before

        # @!attribute [r] starting_after
        #   The effective date that the prime rate starts after
        #
        #   @return [Date, nil]
        optional :starting_after, Date

        # @!parse
        #   # @return [Date]
        #   attr_writer :starting_after

        # @!method initialize(ending_before: nil, starting_after: nil, request_options: {})
        #   @param ending_before [Date]
        #   @param starting_after [Date]
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
