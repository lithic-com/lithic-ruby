# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      # @see Lithic::Resources::FinancialAccounts::InterestTierSchedule#list
      class InterestTierScheduleListParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute financial_account_token
        #
        #   @return [String]
        required :financial_account_token, String

        # @!attribute after_date
        #   Return schedules with effective_date >= after_date (ISO format YYYY-MM-DD)
        #
        #   @return [Date, nil]
        optional :after_date, Date

        # @!attribute before_date
        #   Return schedules with effective_date <= before_date (ISO format YYYY-MM-DD)
        #
        #   @return [Date, nil]
        optional :before_date, Date

        # @!attribute for_date
        #   Return schedule with effective_date == for_date (ISO format YYYY-MM-DD)
        #
        #   @return [Date, nil]
        optional :for_date, Date

        # @!method initialize(financial_account_token:, after_date: nil, before_date: nil, for_date: nil, request_options: {})
        #   @param financial_account_token [String]
        #
        #   @param after_date [Date] Return schedules with effective_date >= after_date (ISO format YYYY-MM-DD)
        #
        #   @param before_date [Date] Return schedules with effective_date <= before_date (ISO format YYYY-MM-DD)
        #
        #   @param for_date [Date] Return schedule with effective_date == for_date (ISO format YYYY-MM-DD)
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
