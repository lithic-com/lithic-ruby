# typed: strong

module Lithic
  module Models
    class CardConvertedWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::CardConvertedWebhookEvent, Lithic::Internal::AnyHash)
        end

      # The token of the card that was created.
      sig { returns(String) }
      attr_accessor :card_token

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      sig do
        params(card_token: String, event_type: Symbol).returns(T.attached_class)
      end
      def self.new(
        # The token of the card that was created.
        card_token:,
        # The type of event that occurred.
        event_type: :"card.converted"
      )
      end

      sig { override.returns({ card_token: String, event_type: Symbol }) }
      def to_hash
      end
    end
  end
end
