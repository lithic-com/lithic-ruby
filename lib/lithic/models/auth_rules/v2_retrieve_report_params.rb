# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#retrieve_report
      class V2RetrieveReportParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute auth_rule_token
        #
        #   @return [String]
        required :auth_rule_token, String

        # @!attribute begin_
        #   Start date for the report
        #
        #   @return [Date]
        required :begin_, Date

        # @!attribute end_
        #   End date for the report
        #
        #   @return [Date]
        required :end_, Date

        # @!method initialize(auth_rule_token:, begin_:, end_:, request_options: {})
        #   @param auth_rule_token [String]
        #
        #   @param begin_ [Date] Start date for the report
        #
        #   @param end_ [Date] End date for the report
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
