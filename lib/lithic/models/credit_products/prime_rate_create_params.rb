# frozen_string_literal: true

module Lithic
  module Models
    module CreditProducts
      # @see Lithic::Resources::CreditProducts::PrimeRates#create
      class PrimeRateCreateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute effective_date
        #   Date the rate goes into effect
        #
        #   @return [Date]
        required :effective_date, Date

        # @!attribute rate
        #   The rate in decimal format
        #
        #   @return [String]
        required :rate, String

        # @!method initialize(effective_date:, rate:, request_options: {})
        #   @param effective_date [Date] Date the rate goes into effect
        #
        #   @param rate [String] The rate in decimal format
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
