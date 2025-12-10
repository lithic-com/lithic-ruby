# typed: strong

module Lithic
  module Models
    class ThreeDSAuthenticationUpdatedWebhookEvent < Lithic::Models::ThreeDSAuthentication
      OrHash =
        T.type_alias do
          T.any(
            Lithic::ThreeDSAuthenticationUpdatedWebhookEvent,
            Lithic::Internal::AnyHash
          )
        end

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      # Represents a 3DS authentication
      sig { params(event_type: Symbol).returns(T.attached_class) }
      def self.new(
        # The type of event that occurred.
        event_type: :"three_ds_authentication.updated"
      )
      end

      sig { override.returns({ event_type: Symbol }) }
      def to_hash
      end
    end
  end
end
