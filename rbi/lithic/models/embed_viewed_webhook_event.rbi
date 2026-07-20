# typed: strong

module Lithic
  module Models
    class EmbedViewedWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::EmbedViewedWebhookEvent, Lithic::Internal::AnyHash)
        end

      # The token of the account associated with the card
      sig { returns(String) }
      attr_accessor :account_token

      # The token of the card whose details were revealed
      sig { returns(String) }
      attr_accessor :card_token

      # Details about the request that revealed the card detail
      sig { returns(Lithic::EmbedViewedWebhookEvent::DeviceDetails) }
      attr_reader :device_details

      sig do
        params(
          device_details: Lithic::EmbedViewedWebhookEvent::DeviceDetails::OrHash
        ).void
      end
      attr_writer :device_details

      # The type of card detail that was revealed
      sig { returns(Lithic::EmbedViewedWebhookEvent::EmbedType::TaggedSymbol) }
      attr_accessor :embed_type

      # The type of event
      sig { returns(Symbol) }
      attr_accessor :event_type

      # The identifier shared by webhook events for the same embed session.
      sig { returns(String) }
      attr_accessor :session_id

      sig do
        params(
          account_token: String,
          card_token: String,
          device_details:
            Lithic::EmbedViewedWebhookEvent::DeviceDetails::OrHash,
          embed_type: Lithic::EmbedViewedWebhookEvent::EmbedType::OrSymbol,
          session_id: String,
          event_type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The token of the account associated with the card
        account_token:,
        # The token of the card whose details were revealed
        card_token:,
        # Details about the request that revealed the card detail
        device_details:,
        # The type of card detail that was revealed
        embed_type:,
        # The identifier shared by webhook events for the same embed session.
        session_id:,
        # The type of event
        event_type: :"embed.viewed"
      )
      end

      sig do
        override.returns(
          {
            account_token: String,
            card_token: String,
            device_details: Lithic::EmbedViewedWebhookEvent::DeviceDetails,
            embed_type:
              Lithic::EmbedViewedWebhookEvent::EmbedType::TaggedSymbol,
            event_type: Symbol,
            session_id: String
          }
        )
      end
      def to_hash
      end

      class DeviceDetails < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::EmbedViewedWebhookEvent::DeviceDetails,
              Lithic::Internal::AnyHash
            )
          end

        # The IP address recorded for the request that generated the event
        sig { returns(String) }
        attr_accessor :ip_address

        # Details about the request that revealed the card detail
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

      # The type of card detail that was revealed
      module EmbedType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::EmbedViewedWebhookEvent::EmbedType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAN =
          T.let(:PAN, Lithic::EmbedViewedWebhookEvent::EmbedType::TaggedSymbol)
        CVV =
          T.let(:CVV, Lithic::EmbedViewedWebhookEvent::EmbedType::TaggedSymbol)
        EXP_MONTH =
          T.let(
            :EXP_MONTH,
            Lithic::EmbedViewedWebhookEvent::EmbedType::TaggedSymbol
          )
        EXP_YEAR =
          T.let(
            :EXP_YEAR,
            Lithic::EmbedViewedWebhookEvent::EmbedType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::EmbedViewedWebhookEvent::EmbedType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
