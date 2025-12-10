# typed: strong

module Lithic
  module Models
    class TokenizationUpdatedWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::TokenizationUpdatedWebhookEvent,
            Lithic::Internal::AnyHash
          )
        end

      # Account token
      sig { returns(String) }
      attr_accessor :account_token

      # Card token
      sig { returns(String) }
      attr_accessor :card_token

      # Created date
      sig { returns(Time) }
      attr_accessor :created

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      sig { returns(Lithic::Tokenization) }
      attr_reader :tokenization

      sig { params(tokenization: Lithic::Tokenization::OrHash).void }
      attr_writer :tokenization

      sig do
        params(
          account_token: String,
          card_token: String,
          created: Time,
          tokenization: Lithic::Tokenization::OrHash,
          event_type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Account token
        account_token:,
        # Card token
        card_token:,
        # Created date
        created:,
        tokenization:,
        # The type of event that occurred.
        event_type: :"tokenization.updated"
      )
      end

      sig do
        override.returns(
          {
            account_token: String,
            card_token: String,
            created: Time,
            event_type: Symbol,
            tokenization: Lithic::Tokenization
          }
        )
      end
      def to_hash
      end
    end
  end
end
