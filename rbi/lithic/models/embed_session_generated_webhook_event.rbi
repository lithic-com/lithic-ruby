# typed: strong

module Lithic
  module Models
    class EmbedSessionGeneratedWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::EmbedSessionGeneratedWebhookEvent,
            Lithic::Internal::AnyHash
          )
        end

      # The token of the account associated with the card
      sig { returns(String) }
      attr_accessor :account_token

      # The token of the card associated with the embed session
      sig { returns(String) }
      attr_accessor :card_token

      # Details about the request that generated the embed session
      sig { returns(Lithic::EmbedSessionGeneratedWebhookEvent::DeviceDetails) }
      attr_reader :device_details

      sig do
        params(
          device_details:
            Lithic::EmbedSessionGeneratedWebhookEvent::DeviceDetails::OrHash
        ).void
      end
      attr_writer :device_details

      # The type of event
      sig { returns(Symbol) }
      attr_accessor :event_type

      # The identifier shared by webhook events for the same embed session.
      sig { returns(String) }
      attr_accessor :session_id

      # The type of embed session that was generated
      sig do
        returns(
          Lithic::EmbedSessionGeneratedWebhookEvent::SessionType::TaggedSymbol
        )
      end
      attr_accessor :session_type

      sig do
        params(
          account_token: String,
          card_token: String,
          device_details:
            Lithic::EmbedSessionGeneratedWebhookEvent::DeviceDetails::OrHash,
          session_id: String,
          session_type:
            Lithic::EmbedSessionGeneratedWebhookEvent::SessionType::OrSymbol,
          event_type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The token of the account associated with the card
        account_token:,
        # The token of the card associated with the embed session
        card_token:,
        # Details about the request that generated the embed session
        device_details:,
        # The identifier shared by webhook events for the same embed session.
        session_id:,
        # The type of embed session that was generated
        session_type:,
        # The type of event
        event_type: :"embed.session_generated"
      )
      end

      sig do
        override.returns(
          {
            account_token: String,
            card_token: String,
            device_details:
              Lithic::EmbedSessionGeneratedWebhookEvent::DeviceDetails,
            event_type: Symbol,
            session_id: String,
            session_type:
              Lithic::EmbedSessionGeneratedWebhookEvent::SessionType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class DeviceDetails < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::EmbedSessionGeneratedWebhookEvent::DeviceDetails,
              Lithic::Internal::AnyHash
            )
          end

        # The IP address recorded for the request that generated the event
        sig { returns(String) }
        attr_accessor :ip_address

        # Details about the request that generated the embed session
        sig { params(ip_address: String).returns(T.attached_class) }
        def self.new(
          # The IP address recorded for the request that generated the event
          ip_address:
        )
        end

        sig { override.returns({ ip_address: String }) }
        def to_hash
        end
      end

      # The type of embed session that was generated
      module SessionType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::EmbedSessionGeneratedWebhookEvent::SessionType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CARD_EMBED =
          T.let(
            :CARD_EMBED,
            Lithic::EmbedSessionGeneratedWebhookEvent::SessionType::TaggedSymbol
          )
        PIN_SETTING_EMBED =
          T.let(
            :PIN_SETTING_EMBED,
            Lithic::EmbedSessionGeneratedWebhookEvent::SessionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::EmbedSessionGeneratedWebhookEvent::SessionType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
