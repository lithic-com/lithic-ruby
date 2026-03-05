# frozen_string_literal: true

module Lithic
  module Models
    module CreditProducts
      # @see Lithic::Resources::CreditProducts::PrimeRates#create
      class PrimeRateCreateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute credit_product_token
        #   Globally unique identifier for credit products.
        #
        #   @return [String]
        required :credit_product_token, String

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

        # @!method initialize(credit_product_token:, effective_date:, rate:, request_options: {})
        #   @param credit_product_token [String] Globally unique identifier for credit products.
        #
        #   @param effective_date [Date] Date the rate goes into effect
        #
        #   @param rate [String] The rate in decimal format
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
