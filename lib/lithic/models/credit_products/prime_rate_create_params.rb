# frozen_string_literal: true

module Lithic
  module Models
    module CreditProducts
      # @see Lithic::Resources::CreditProducts::PrimeRates#create
      class PrimeRateCreateParams < Lithic::Internal::Type::BaseModel
        # @!parse
        #   extend Lithic::Internal::Type::RequestParameters::Converter
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

        # @!parse
        #   # @param effective_date [Date]
        #   # @param rate [String]
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(effective_date:, rate:, request_options: {}, **) = super

        # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
      end
    end
  end
end
