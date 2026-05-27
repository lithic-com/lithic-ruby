# typed: strong

module Lithic
  module Models
    class CardAuthorizationApprovalRequestWebhookEvent < Lithic::Models::CardAuthorization
      OrHash =
        T.type_alias do
          T.any(
            Lithic::CardAuthorizationApprovalRequestWebhookEvent,
            Lithic::Internal::AnyHash
          )
        end

      sig { returns(Symbol) }
      attr_accessor :event_type

      # The Auth Stream Access request payload that was sent to the ASA responder.
      sig { params(event_type: Symbol).returns(T.attached_class) }
      def self.new(event_type: :"card_authorization.approval_request")
      end

      sig { override.returns({ event_type: Symbol }) }
      def to_hash
      end
    end
  end
end
