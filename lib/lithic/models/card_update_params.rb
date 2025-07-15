# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Cards#update
    class CardUpdateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute comment
      #   Additional context or information related to the card.
      #
      #   @return [String, nil]
      optional :comment, String

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

      # @!attribute network_program_token
      #   Globally unique identifier for the card's network program. Currently applicable
      #   to Visa cards participating in Account Level Management only.
      #
      #   @return [String, nil]
      optional :network_program_token, String

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
      optional :pin_status, enum: -> { Lithic::CardUpdateParams::PinStatus }

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
      optional :spend_limit_duration, enum: -> { Lithic::SpendLimitDuration }

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
      optional :state, enum: -> { Lithic::CardUpdateParams::State }

      # @!attribute substatus
      #   Card state substatus values:
      #
      #   - `LOST` - The physical card is no longer in the cardholder's possession due to
      #     being lost or never received by the cardholder.
      #   - `COMPROMISED` - Card information has been exposed, potentially leading to
      #     unauthorized access. This may involve physical card theft, cloning, or online
      #     data breaches.
      #   - `DAMAGED` - The physical card is not functioning properly, such as having chip
      #     failures or a demagnetized magnetic stripe.
      #   - `END_USER_REQUEST` - The cardholder requested the closure of the card for
      #     reasons unrelated to fraud or damage, such as switching to a different product
      #     or closing the account.
      #   - `ISSUER_REQUEST` - The issuer closed the card for reasons unrelated to fraud
      #     or damage, such as account inactivity, product or policy changes, or
      #     technology upgrades.
      #   - `NOT_ACTIVE` - The card hasn’t had any transaction activity for a specified
      #     period, applicable to statuses like `PAUSED` or `CLOSED`.
      #   - `SUSPICIOUS_ACTIVITY` - The card has one or more suspicious transactions or
      #     activities that require review. This can involve prompting the cardholder to
      #     confirm legitimate use or report confirmed fraud.
      #   - `INTERNAL_REVIEW` - The card is temporarily paused pending further internal
      #     review.
      #   - `EXPIRED` - The card has expired and has been closed without being reissued.
      #   - `UNDELIVERABLE` - The card cannot be delivered to the cardholder and has been
      #     returned.
      #   - `OTHER` - The reason for the status does not fall into any of the above
      #     categories. A comment should be provided to specify the reason.
      #
      #   @return [Symbol, Lithic::Models::CardUpdateParams::Substatus, nil]
      optional :substatus, enum: -> { Lithic::CardUpdateParams::Substatus }

      # @!method initialize(comment: nil, digital_card_art_token: nil, memo: nil, network_program_token: nil, pin: nil, pin_status: nil, spend_limit: nil, spend_limit_duration: nil, state: nil, substatus: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::CardUpdateParams} for more details.
      #
      #   @param comment [String] Additional context or information related to the card.
      #
      #   @param digital_card_art_token [String] Specifies the digital card art to be displayed in the user’s digital wallet afte
      #
      #   @param memo [String] Friendly name to identify the card.
      #
      #   @param network_program_token [String] Globally unique identifier for the card's network program. Currently applicable
      #
      #   @param pin [String] Encrypted PIN block (in base64). Only applies to cards of type `PHYSICAL` and `V
      #
      #   @param pin_status [Symbol, Lithic::Models::CardUpdateParams::PinStatus] Indicates if a card is blocked due a PIN status issue (e.g. excessive incorrect
      #
      #   @param spend_limit [Integer] Amount (in cents) to limit approved authorizations (e.g. 100000 would be a $1,00
      #
      #   @param spend_limit_duration [Symbol, Lithic::Models::SpendLimitDuration] Spend limit duration values:
      #
      #   @param state [Symbol, Lithic::Models::CardUpdateParams::State] Card state values:
      #
      #   @param substatus [Symbol, Lithic::Models::CardUpdateParams::Substatus] Card state substatus values:
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

      # Card state substatus values:
      #
      # - `LOST` - The physical card is no longer in the cardholder's possession due to
      #   being lost or never received by the cardholder.
      # - `COMPROMISED` - Card information has been exposed, potentially leading to
      #   unauthorized access. This may involve physical card theft, cloning, or online
      #   data breaches.
      # - `DAMAGED` - The physical card is not functioning properly, such as having chip
      #   failures or a demagnetized magnetic stripe.
      # - `END_USER_REQUEST` - The cardholder requested the closure of the card for
      #   reasons unrelated to fraud or damage, such as switching to a different product
      #   or closing the account.
      # - `ISSUER_REQUEST` - The issuer closed the card for reasons unrelated to fraud
      #   or damage, such as account inactivity, product or policy changes, or
      #   technology upgrades.
      # - `NOT_ACTIVE` - The card hasn’t had any transaction activity for a specified
      #   period, applicable to statuses like `PAUSED` or `CLOSED`.
      # - `SUSPICIOUS_ACTIVITY` - The card has one or more suspicious transactions or
      #   activities that require review. This can involve prompting the cardholder to
      #   confirm legitimate use or report confirmed fraud.
      # - `INTERNAL_REVIEW` - The card is temporarily paused pending further internal
      #   review.
      # - `EXPIRED` - The card has expired and has been closed without being reissued.
      # - `UNDELIVERABLE` - The card cannot be delivered to the cardholder and has been
      #   returned.
      # - `OTHER` - The reason for the status does not fall into any of the above
      #   categories. A comment should be provided to specify the reason.
      module Substatus
        extend Lithic::Internal::Type::Enum

        LOST = :LOST
        COMPROMISED = :COMPROMISED
        DAMAGED = :DAMAGED
        END_USER_REQUEST = :END_USER_REQUEST
        ISSUER_REQUEST = :ISSUER_REQUEST
        NOT_ACTIVE = :NOT_ACTIVE
        SUSPICIOUS_ACTIVITY = :SUSPICIOUS_ACTIVITY
        INTERNAL_REVIEW = :INTERNAL_REVIEW
        EXPIRED = :EXPIRED
        UNDELIVERABLE = :UNDELIVERABLE
        OTHER = :OTHER

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
