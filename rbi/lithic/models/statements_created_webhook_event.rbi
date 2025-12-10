# typed: strong

module Lithic
  module Models
    class StatementsCreatedWebhookEvent < Lithic::Models::FinancialAccounts::Statement
      OrHash =
        T.type_alias do
          T.any(
            Lithic::StatementsCreatedWebhookEvent,
            Lithic::Internal::AnyHash
          )
        end

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      sig { params(event_type: Symbol).returns(T.attached_class) }
      def self.new(
        # The type of event that occurred.
        event_type: :"statements.created"
      )
      end

      sig { override.returns({ event_type: Symbol }) }
      def to_hash
      end
    end
  end
end
