# typed: strong

module Lithic
  module Models
    class SettlementReportUpdatedWebhookEvent < Lithic::Models::SettlementReport
      OrHash =
        T.type_alias do
          T.any(
            Lithic::SettlementReportUpdatedWebhookEvent,
            Lithic::Internal::AnyHash
          )
        end

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      sig { params(event_type: Symbol).returns(T.attached_class) }
      def self.new(
        # The type of event that occurred.
        event_type: :"settlement_report.updated"
      )
      end

      sig { override.returns({ event_type: Symbol }) }
      def to_hash
      end
    end
  end
end
