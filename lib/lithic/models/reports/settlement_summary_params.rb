# frozen_string_literal: true

module Lithic
  module Models
    module Reports
      # @see Lithic::Resources::Reports::Settlement#summary
      class SettlementSummaryParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute report_date
        #
        #   @return [Date]
        required :report_date, Date

        # @!method initialize(report_date:, request_options: {})
        #   @param report_date [Date]
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
