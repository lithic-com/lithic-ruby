# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      # @see Lithic::Resources::FinancialAccounts::InterestTierSchedule#retrieve
      class InterestTierScheduleRetrieveParams < Lithic::Internal::Type::BaseModel
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

        # @!method initialize(financial_account_token:, effective_date:, request_options: {})
        #   @param financial_account_token [String]
        #   @param effective_date [Date]
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
