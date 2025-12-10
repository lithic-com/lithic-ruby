# frozen_string_literal: true

module Lithic
  module Models
    class SettlementReportUpdatedWebhookEvent < Lithic::Models::SettlementReport
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"settlement_report.updated"]
      required :event_type, const: :"settlement_report.updated"

      # @!method initialize(event_type: :"settlement_report.updated")
      #   @param event_type [Symbol, :"settlement_report.updated"] The type of event that occurred.
    end
  end
end
