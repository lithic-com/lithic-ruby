# typed: strong

module Lithic
  module Models
    class FinancialAccountCreatedWebhookEvent < Lithic::Models::FinancialAccount
      OrHash =
        T.type_alias do
          T.any(
            Lithic::FinancialAccountCreatedWebhookEvent,
            Lithic::Internal::AnyHash
          )
        end

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      sig { params(event_type: Symbol).returns(T.attached_class) }
      def self.new(
        # The type of event that occurred.
        event_type: :"financial_account.created"
      )
      end

      sig { override.returns({ event_type: Symbol }) }
      def to_hash
      end
    end
  end
end
