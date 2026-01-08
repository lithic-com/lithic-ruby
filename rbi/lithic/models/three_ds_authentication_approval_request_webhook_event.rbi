# typed: strong

module Lithic
  module Models
    class ThreeDSAuthenticationApprovalRequestWebhookEvent < Lithic::Models::ThreeDSAuthentication
      OrHash =
        T.type_alias do
          T.any(
            Lithic::ThreeDSAuthenticationApprovalRequestWebhookEvent,
            Lithic::Internal::AnyHash
          )
        end

      sig { returns(Symbol) }
      attr_accessor :event_type

      # Represents a 3DS authentication
      sig { params(event_type: Symbol).returns(T.attached_class) }
      def self.new(event_type: :"three_ds_authentication.approval_request")
      end

      sig { override.returns({ event_type: Symbol }) }
      def to_hash
      end
    end
  end
end
