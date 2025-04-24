# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Cards#update
    class CardUpdateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute digital_card_art_token
      #   Specifies the digital card art to be displayed in the user’s digital wallet
      #   after tokenization. This artwork must be approved by Mastercard and configured
      #   by Lithic to use. See
      #   [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
      #
      #   @return [String, nil]
      optional :digital_card_art_token, String

      # @!attribute memo
      #   Friendly name to identify the card.
      #
      #   @return [String, nil]
      optional :memo, String

      # @!attribute pin
      #   Encrypted PIN block (in base64). Only applies to cards of type `PHYSICAL` and
      #   `VIRTUAL`. Changing PIN also resets PIN status to `OK`. See
      #   [Encrypted PIN Block](https://docs.lithic.com/docs/cards#encrypted-pin-block).
      #
      #   @return [String, nil]
      optional :pin, String

      # @!attribute pin_status
      #   Indicates if a card is blocked due a PIN status issue (e.g. excessive incorrect
      #   attempts). Can only be set to `OK` to unblock a card.
      #
      #   @return [Symbol, Lithic::Models::CardUpdateParams::PinStatus, nil]
      optional :pin_status, enum: -> { Lithic::Models::CardUpdateParams::PinStatus }

      # @!attribute spend_limit
      #   Amount (in cents) to limit approved authorizations (e.g. 100000 would be a
      #   $1,000 limit). Transaction requests above the spend limit will be declined. Note
      #   that a spend limit of 0 is effectively no limit, and should only be used to
      #   reset or remove a prior limit. Only a limit of 1 or above will result in
      #   declined transactions due to checks against the card limit.
      #
      #   @return [Integer, nil]
      optional :spend_limit, Integer

      # @!attribute spend_limit_duration
      #   Spend limit duration values:
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
      #
      #   @return [Symbol, Lithic::Models::SpendLimitDuration, nil]
      optional :spend_limit_duration, enum: -> { Lithic::Models::SpendLimitDuration }

      # @!attribute state
      #   Card state values:
      #
      #   - `CLOSED` - Card will no longer approve authorizations. Closing a card cannot
      #     be undone.
      #   - `OPEN` - Card will approve authorizations (if they match card and account
      #     parameters).
      #   - `PAUSED` - Card will decline authorizations, but can be resumed at a later
      #     time.
      #
      #   @return [Symbol, Lithic::Models::CardUpdateParams::State, nil]
      optional :state, enum: -> { Lithic::Models::CardUpdateParams::State }

      # @!method initialize(digital_card_art_token: nil, memo: nil, pin: nil, pin_status: nil, spend_limit: nil, spend_limit_duration: nil, state: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::CardUpdateParams} for more details.
      #
      #   @param digital_card_art_token [String] Specifies the digital card art to be displayed in the user’s digital wallet afte
      #   ...
      #
      #   @param memo [String] Friendly name to identify the card.
      #
      #   @param pin [String] Encrypted PIN block (in base64). Only applies to cards of type `PHYSICAL` and `V
      #   ...
      #
      #   @param pin_status [Symbol, Lithic::Models::CardUpdateParams::PinStatus] Indicates if a card is blocked due a PIN status issue (e.g. excessive incorrect
      #   ...
      #
      #   @param spend_limit [Integer] Amount (in cents) to limit approved authorizations (e.g. 100000 would be a $1,00
      #   ...
      #
      #   @param spend_limit_duration [Symbol, Lithic::Models::SpendLimitDuration] Spend limit duration values: ...
      #
      #   @param state [Symbol, Lithic::Models::CardUpdateParams::State] Card state values: ...
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Indicates if a card is blocked due a PIN status issue (e.g. excessive incorrect
      # attempts). Can only be set to `OK` to unblock a card.
      module PinStatus
        extend Lithic::Internal::Type::Enum

        OK = :OK

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Card state values:
      #
      # - `CLOSED` - Card will no longer approve authorizations. Closing a card cannot
      #   be undone.
      # - `OPEN` - Card will approve authorizations (if they match card and account
      #   parameters).
      # - `PAUSED` - Card will decline authorizations, but can be resumed at a later
      #   time.
      module State
        extend Lithic::Internal::Type::Enum

        CLOSED = :CLOSED
        OPEN = :OPEN
        PAUSED = :PAUSED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
