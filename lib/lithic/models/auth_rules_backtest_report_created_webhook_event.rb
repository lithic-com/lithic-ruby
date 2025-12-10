# frozen_string_literal: true

module Lithic
  module Models
    class AuthRulesBacktestReportCreatedWebhookEvent < Lithic::Models::AuthRules::V2::BacktestResults
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"auth_rules.backtest_report.created"]
      required :event_type, const: :"auth_rules.backtest_report.created"

      # @!method initialize(event_type: :"auth_rules.backtest_report.created")
      #   @param event_type [Symbol, :"auth_rules.backtest_report.created"] The type of event that occurred.
    end
  end
end
