# typed: strong

module Lithic
  module Models
    class CardCreatedWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::CardCreatedWebhookEvent, Lithic::Internal::AnyHash)
        end

      # The token of the card that was created.
      sig { returns(String) }
      attr_accessor :card_token

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      # The token of the card that was replaced, if the new card is a replacement card.
      sig { returns(T.nilable(String)) }
      attr_accessor :replacement_for

      sig do
        params(
          card_token: String,
          replacement_for: T.nilable(String),
          event_type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The token of the card that was created.
        card_token:,
        # The token of the card that was replaced, if the new card is a replacement card.
        replacement_for: nil,
        # The type of event that occurred.
        event_type: :"card.created"
      )
      end

      sig do
        override.returns(
          {
            card_token: String,
            event_type: Symbol,
            replacement_for: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
