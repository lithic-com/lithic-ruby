# typed: strong

module Lithic
  module Models
    class CardRenewedWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::CardRenewedWebhookEvent, Lithic::Internal::AnyHash)
        end

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      # The token of the card that was renewed.
      sig { returns(T.nilable(String)) }
      attr_reader :card_token

      sig { params(card_token: String).void }
      attr_writer :card_token

      # The new expiration month of the card.
      sig { returns(T.nilable(String)) }
      attr_reader :exp_month

      sig { params(exp_month: String).void }
      attr_writer :exp_month

      # The new expiration year of the card.
      sig { returns(T.nilable(String)) }
      attr_reader :exp_year

      sig { params(exp_year: String).void }
      attr_writer :exp_year

      # The previous expiration month of the card.
      sig { returns(T.nilable(String)) }
      attr_reader :previous_exp_month

      sig { params(previous_exp_month: String).void }
      attr_writer :previous_exp_month

      # The previous expiration year of the card.
      sig { returns(T.nilable(String)) }
      attr_reader :previous_exp_year

      sig { params(previous_exp_year: String).void }
      attr_writer :previous_exp_year

      sig do
        params(
          card_token: String,
          exp_month: String,
          exp_year: String,
          previous_exp_month: String,
          previous_exp_year: String,
          event_type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The token of the card that was renewed.
        card_token: nil,
        # The new expiration month of the card.
        exp_month: nil,
        # The new expiration year of the card.
        exp_year: nil,
        # The previous expiration month of the card.
        previous_exp_month: nil,
        # The previous expiration year of the card.
        previous_exp_year: nil,
        # The type of event that occurred.
        event_type: :"card.renewed"
      )
      end

      sig do
        override.returns(
          {
            event_type: Symbol,
            card_token: String,
            exp_month: String,
            exp_year: String,
            previous_exp_month: String,
            previous_exp_year: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
