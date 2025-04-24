# frozen_string_literal: true

module Lithic
  module Models
    module CreditProducts
      # @see Lithic::Resources::CreditProducts::PrimeRates#retrieve
      class PrimeRateRetrieveResponse < Lithic::Internal::Type::BaseModel
        # @!attribute data
        #   List of prime rates
        #
        #   @return [Array<Lithic::Models::CreditProducts::PrimeRateRetrieveResponse::Data>]
        required :data,
                 -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::CreditProducts::PrimeRateRetrieveResponse::Data] }

        # @!attribute has_more
        #   Whether there are more prime rates
        #
        #   @return [Boolean]
        required :has_more, Lithic::Internal::Type::Boolean

        # @!method initialize(data:, has_more:)
        #   @param data [Array<Lithic::Models::CreditProducts::PrimeRateRetrieveResponse::Data>] List of prime rates
        #
        #   @param has_more [Boolean] Whether there are more prime rates

        class Data < Lithic::Internal::Type::BaseModel
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

          # @!method initialize(effective_date:, rate:)
          #   @param effective_date [Date] Date the rate goes into effect
          #
          #   @param rate [String] The rate in decimal format
        end
      end
    end
  end
end
