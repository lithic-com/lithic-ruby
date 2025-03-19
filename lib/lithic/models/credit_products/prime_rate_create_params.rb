# frozen_string_literal: true

module Lithic
  module Models
    module CreditProducts
      class PrimeRateCreateParams < Lithic::BaseModel
        # @!parse
        #   extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

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

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
