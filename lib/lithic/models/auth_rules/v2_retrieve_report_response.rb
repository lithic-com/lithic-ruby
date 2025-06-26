# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#retrieve_report
      class V2RetrieveReportResponse < Lithic::Internal::Type::BaseModel
        # @!attribute auth_rule_token
        #   Auth Rule Token
        #
        #   @return [String]
        required :auth_rule_token, String

        # @!attribute begin_
        #   The start date (UTC) of the report.
        #
        #   @return [Date]
        required :begin_, Date, api_name: :begin

        # @!attribute daily_statistics
        #   Daily evaluation statistics for the Auth Rule.
        #
        #   @return [Array<Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic>]
        required :daily_statistics,
                 -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic] }

        # @!attribute end_
        #   The end date (UTC) of the report.
        #
        #   @return [Date]
        required :end_, Date, api_name: :end

        # @!method initialize(auth_rule_token:, begin_:, daily_statistics:, end_:)
        #   @param auth_rule_token [String] Auth Rule Token
        #
        #   @param begin_ [Date] The start date (UTC) of the report.
        #
        #   @param daily_statistics [Array<Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic>] Daily evaluation statistics for the Auth Rule.
        #
        #   @param end_ [Date] The end date (UTC) of the report.

        class DailyStatistic < Lithic::Internal::Type::BaseModel
          # @!attribute current_version_statistics
          #   Detailed statistics for the current version of the rule.
          #
          #   @return [Lithic::Models::AuthRules::RuleStats, nil]
          required :current_version_statistics, -> { Lithic::AuthRules::RuleStats }, nil?: true

          # @!attribute date
          #   The date (UTC) for which the statistics are reported.
          #
          #   @return [Date]
          required :date, Date

          # @!attribute draft_version_statistics
          #   Detailed statistics for the draft version of the rule.
          #
          #   @return [Lithic::Models::AuthRules::RuleStats, nil]
          required :draft_version_statistics, -> { Lithic::AuthRules::RuleStats }, nil?: true

          # @!method initialize(current_version_statistics:, date:, draft_version_statistics:)
          #   @param current_version_statistics [Lithic::Models::AuthRules::RuleStats, nil] Detailed statistics for the current version of the rule.
          #
          #   @param date [Date] The date (UTC) for which the statistics are reported.
          #
          #   @param draft_version_statistics [Lithic::Models::AuthRules::RuleStats, nil] Detailed statistics for the draft version of the rule.
        end
      end
    end
  end
end
