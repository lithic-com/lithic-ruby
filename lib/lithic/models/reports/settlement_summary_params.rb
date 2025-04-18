# frozen_string_literal: true

module Lithic
  module Models
    module Reports
      # @see Lithic::Resources::Reports::Settlement#summary
      class SettlementSummaryParams < Lithic::Internal::Type::BaseModel
        # @!parse
        #   extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
