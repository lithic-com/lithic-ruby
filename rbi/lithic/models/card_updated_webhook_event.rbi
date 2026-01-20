# typed: strong

module Lithic
  module Models
    class CardUpdatedWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::CardUpdatedWebhookEvent, Lithic::Internal::AnyHash)
        end

      # The token of the card that was updated.
      sig { returns(String) }
      attr_accessor :token

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      # The previous values of the fields that were updated.
      sig { returns(T.anything) }
      attr_accessor :previous_fields

      # The current state of the card.
      sig { returns(String) }
      attr_accessor :state

      sig do
        params(
          token: String,
          previous_fields: T.anything,
          state: String,
          event_type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The token of the card that was updated.
        token:,
        # The previous values of the fields that were updated.
        previous_fields:,
        # The current state of the card.
        state:,
        # The type of event that occurred.
        event_type: :"card.updated"
      )
      end

      sig do
        override.returns(
          {
            token: String,
            event_type: Symbol,
            previous_fields: T.anything,
            state: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
