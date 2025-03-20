# typed: strong

module Lithic
  module Models
    class CardUpdateParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Specifies the digital card art to be displayed in the user’s digital wallet
      #   after tokenization. This artwork must be approved by Mastercard and configured
      #   by Lithic to use. See
      #   [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
      sig { returns(T.nilable(String)) }
      def digital_card_art_token
      end

      sig { params(_: String).returns(String) }
      def digital_card_art_token=(_)
      end

      # Friendly name to identify the card.
      sig { returns(T.nilable(String)) }
      def memo
      end

      sig { params(_: String).returns(String) }
      def memo=(_)
      end

      # Encrypted PIN block (in base64). Only applies to cards of type `PHYSICAL` and
      #   `VIRTUAL`. Changing PIN also resets PIN status to `OK`. See
      #   [Encrypted PIN Block](https://docs.lithic.com/docs/cards#encrypted-pin-block).
      sig { returns(T.nilable(String)) }
      def pin
      end

      sig { params(_: String).returns(String) }
      def pin=(_)
      end

      # Indicates if a card is blocked due a PIN status issue (e.g. excessive incorrect
      #   attempts). Can only be set to `OK` to unblock a card.
      sig { returns(T.nilable(Lithic::Models::CardUpdateParams::PinStatus::OrSymbol)) }
      def pin_status
      end

      sig do
        params(_: Lithic::Models::CardUpdateParams::PinStatus::OrSymbol)
          .returns(Lithic::Models::CardUpdateParams::PinStatus::OrSymbol)
      end
      def pin_status=(_)
      end

      # Amount (in cents) to limit approved authorizations (e.g. 100000 would be a
      #   $1,000 limit). Transaction requests above the spend limit will be declined. Note
      #   that a spend limit of 0 is effectively no limit, and should only be used to
      #   reset or remove a prior limit. Only a limit of 1 or above will result in
      #   declined transactions due to checks against the card limit.
      sig { returns(T.nilable(Integer)) }
      def spend_limit
      end

      sig { params(_: Integer).returns(Integer) }
      def spend_limit=(_)
      end

      # Spend limit duration values:
      #
      #   - `ANNUALLY` - Card will authorize transactions up to spend limit for the
      #     trailing year.
      #   - `FOREVER` - Card will authorize only up to spend limit for the entire lifetime
      #     of the card.
      #   - `MONTHLY` - Card will authorize transactions up to spend limit for the
      #     trailing month. To support recurring monthly payments, which can occur on
      #     different day every month, the time window we consider for monthly velocity
      #     starts 6 days after the current calendar date one month prior.
      #   - `TRANSACTION` - Card will authorize multiple transactions if each individual
      #     transaction is under the spend limit.
      sig { returns(T.nilable(Lithic::Models::SpendLimitDuration::OrSymbol)) }
      def spend_limit_duration
      end

      sig do
        params(_: Lithic::Models::SpendLimitDuration::OrSymbol)
          .returns(Lithic::Models::SpendLimitDuration::OrSymbol)
      end
      def spend_limit_duration=(_)
      end

      # Card state values:
      #
      #   - `CLOSED` - Card will no longer approve authorizations. Closing a card cannot
      #     be undone.
      #   - `OPEN` - Card will approve authorizations (if they match card and account
      #     parameters).
      #   - `PAUSED` - Card will decline authorizations, but can be resumed at a later
      #     time.
      sig { returns(T.nilable(Lithic::Models::CardUpdateParams::State::OrSymbol)) }
      def state
      end

      sig do
        params(_: Lithic::Models::CardUpdateParams::State::OrSymbol)
          .returns(Lithic::Models::CardUpdateParams::State::OrSymbol)
      end
      def state=(_)
      end

      sig do
        params(
          digital_card_art_token: String,
          memo: String,
          pin: String,
          pin_status: Lithic::Models::CardUpdateParams::PinStatus::OrSymbol,
          spend_limit: Integer,
          spend_limit_duration: Lithic::Models::SpendLimitDuration::OrSymbol,
          state: Lithic::Models::CardUpdateParams::State::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        digital_card_art_token: nil,
        memo: nil,
        pin: nil,
        pin_status: nil,
        spend_limit: nil,
        spend_limit_duration: nil,
        state: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              digital_card_art_token: String,
              memo: String,
              pin: String,
              pin_status: Lithic::Models::CardUpdateParams::PinStatus::OrSymbol,
              spend_limit: Integer,
              spend_limit_duration: Lithic::Models::SpendLimitDuration::OrSymbol,
              state: Lithic::Models::CardUpdateParams::State::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Indicates if a card is blocked due a PIN status issue (e.g. excessive incorrect
      #   attempts). Can only be set to `OK` to unblock a card.
      module PinStatus
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::CardUpdateParams::PinStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::CardUpdateParams::PinStatus::TaggedSymbol) }

        OK = T.let(:OK, Lithic::Models::CardUpdateParams::PinStatus::OrSymbol)
      end

      # Card state values:
      #
      #   - `CLOSED` - Card will no longer approve authorizations. Closing a card cannot
      #     be undone.
      #   - `OPEN` - Card will approve authorizations (if they match card and account
      #     parameters).
      #   - `PAUSED` - Card will decline authorizations, but can be resumed at a later
      #     time.
      module State
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::CardUpdateParams::State) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::CardUpdateParams::State::TaggedSymbol) }

        CLOSED = T.let(:CLOSED, Lithic::Models::CardUpdateParams::State::OrSymbol)
        OPEN = T.let(:OPEN, Lithic::Models::CardUpdateParams::State::OrSymbol)
        PAUSED = T.let(:PAUSED, Lithic::Models::CardUpdateParams::State::OrSymbol)
      end
    end
  end
end
