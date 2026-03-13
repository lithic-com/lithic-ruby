# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      # @see Lithic::Resources::FinancialAccounts::InterestTierSchedule#update
      class InterestTierScheduleUpdateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute financial_account_token
        #
        #   @return [String]
        required :financial_account_token, String

        # @!attribute effective_date
        #
        #   @return [Date]
        required :effective_date, Date

        # @!attribute tier_name
        #   Name of a tier contained in the credit product. Mutually exclusive with
        #   tier_rates
        #
        #   @return [String, nil]
        optional :tier_name, String

        # @!attribute tier_rates
        #   Custom rates per category. Mutually exclusive with tier_name
        #
        #   @return [Object, nil]
        optional :tier_rates, Lithic::Internal::Type::Unknown

        # @!method initialize(financial_account_token:, effective_date:, tier_name: nil, tier_rates: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::FinancialAccounts::InterestTierScheduleUpdateParams} for more
        #   details.
        #
        #   @param financial_account_token [String]
        #
        #   @param effective_date [Date]
        #
        #   @param tier_name [String] Name of a tier contained in the credit product. Mutually exclusive with tier_rat
        #
        #   @param tier_rates [Object] Custom rates per category. Mutually exclusive with tier_name
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
