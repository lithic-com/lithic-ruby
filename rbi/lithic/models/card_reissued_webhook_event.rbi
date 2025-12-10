# typed: strong

module Lithic
  module Models
    class CardReissuedWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::CardReissuedWebhookEvent, Lithic::Internal::AnyHash)
        end

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      # The token of the card that was reissued.
      sig { returns(T.nilable(String)) }
      attr_reader :card_token

      sig { params(card_token: String).void }
      attr_writer :card_token

      sig do
        params(card_token: String, event_type: Symbol).returns(T.attached_class)
      end
      def self.new(
        # The token of the card that was reissued.
        card_token: nil,
        # The type of event that occurred.
        event_type: :"card.reissued"
      )
      end

      sig { override.returns({ event_type: Symbol, card_token: String }) }
      def to_hash
      end
    end
  end
end
