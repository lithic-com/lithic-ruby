# typed: strong

module Lithic
  module Models
    class CardPinUpdatedWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::CardPinUpdatedWebhookEvent, Lithic::Internal::AnyHash)
        end

      # The token of the card whose PIN or PIN status was updated
      sig { returns(String) }
      attr_accessor :card_token

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      # The card's PIN status after the update
      sig do
        returns(Lithic::CardPinUpdatedWebhookEvent::PinStatus::TaggedSymbol)
      end
      attr_accessor :pin_status

      # The reason for the PIN update:
      #
      # - `PIN_SET` - The PIN was set for the first time; `pin_status` is `OK`
      # - `PIN_CHANGED` - The PIN was changed, including when changing a blocked PIN;
      #   `pin_status` is `OK`
      # - `PIN_UNBLOCKED` - The PIN was unblocked without changing it; `pin_status` is
      #   `OK`
      # - `EXCESSIVE_PIN_ATTEMPTS` - The PIN was blocked due to excessive incorrect PIN
      #   attempts; `pin_status` is `BLOCKED`
      sig do
        returns(Lithic::CardPinUpdatedWebhookEvent::StatusReason::TaggedSymbol)
      end
      attr_accessor :status_reason

      sig do
        params(
          card_token: String,
          pin_status: Lithic::CardPinUpdatedWebhookEvent::PinStatus::OrSymbol,
          status_reason:
            Lithic::CardPinUpdatedWebhookEvent::StatusReason::OrSymbol,
          event_type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The token of the card whose PIN or PIN status was updated
        card_token:,
        # The card's PIN status after the update
        pin_status:,
        # The reason for the PIN update:
        #
        # - `PIN_SET` - The PIN was set for the first time; `pin_status` is `OK`
        # - `PIN_CHANGED` - The PIN was changed, including when changing a blocked PIN;
        #   `pin_status` is `OK`
        # - `PIN_UNBLOCKED` - The PIN was unblocked without changing it; `pin_status` is
        #   `OK`
        # - `EXCESSIVE_PIN_ATTEMPTS` - The PIN was blocked due to excessive incorrect PIN
        #   attempts; `pin_status` is `BLOCKED`
        status_reason:,
        # The type of event that occurred.
        event_type: :"card.pin_updated"
      )
      end

      sig do
        override.returns(
          {
            card_token: String,
            event_type: Symbol,
            pin_status:
              Lithic::CardPinUpdatedWebhookEvent::PinStatus::TaggedSymbol,
            status_reason:
              Lithic::CardPinUpdatedWebhookEvent::StatusReason::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The card's PIN status after the update
      module PinStatus
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::CardPinUpdatedWebhookEvent::PinStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OK =
          T.let(
            :OK,
            Lithic::CardPinUpdatedWebhookEvent::PinStatus::TaggedSymbol
          )
        BLOCKED =
          T.let(
            :BLOCKED,
            Lithic::CardPinUpdatedWebhookEvent::PinStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::CardPinUpdatedWebhookEvent::PinStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The reason for the PIN update:
      #
      # - `PIN_SET` - The PIN was set for the first time; `pin_status` is `OK`
      # - `PIN_CHANGED` - The PIN was changed, including when changing a blocked PIN;
      #   `pin_status` is `OK`
      # - `PIN_UNBLOCKED` - The PIN was unblocked without changing it; `pin_status` is
      #   `OK`
      # - `EXCESSIVE_PIN_ATTEMPTS` - The PIN was blocked due to excessive incorrect PIN
      #   attempts; `pin_status` is `BLOCKED`
      module StatusReason
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::CardPinUpdatedWebhookEvent::StatusReason)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PIN_SET =
          T.let(
            :PIN_SET,
            Lithic::CardPinUpdatedWebhookEvent::StatusReason::TaggedSymbol
          )
        PIN_CHANGED =
          T.let(
            :PIN_CHANGED,
            Lithic::CardPinUpdatedWebhookEvent::StatusReason::TaggedSymbol
          )
        PIN_UNBLOCKED =
          T.let(
            :PIN_UNBLOCKED,
            Lithic::CardPinUpdatedWebhookEvent::StatusReason::TaggedSymbol
          )
        EXCESSIVE_PIN_ATTEMPTS =
          T.let(
            :EXCESSIVE_PIN_ATTEMPTS,
            Lithic::CardPinUpdatedWebhookEvent::StatusReason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::CardPinUpdatedWebhookEvent::StatusReason::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
