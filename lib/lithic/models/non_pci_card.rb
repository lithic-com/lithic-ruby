# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Cards#list
    class NonPCICard < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Globally unique identifier.
      #
      #   @return [String]
      required :token, String

      # @!attribute account_token
      #   Globally unique identifier for the account to which the card belongs.
      #
      #   @return [String]
      required :account_token, String

      # @!attribute card_program_token
      #   Globally unique identifier for the card program on which the card exists.
      #
      #   @return [String]
      required :card_program_token, String

      # @!attribute created
      #   An RFC 3339 timestamp for when the card was created. UTC time zone.
      #
      #   @return [Time]
      required :created, Time

      # @!attribute funding
      #   Deprecated: Funding account for the card.
      #
      #   @return [Lithic::NonPCICard::Funding]
      required :funding, -> { Lithic::NonPCICard::Funding }

      # @!attribute last_four
      #   Last four digits of the card number.
      #
      #   @return [String]
      required :last_four, String

      # @!attribute pin_status
      #   Indicates if a card is blocked due a PIN status issue (e.g. excessive incorrect
      #   attempts).
      #
      #   @return [Symbol, Lithic::NonPCICard::PinStatus]
      required :pin_status, enum: -> { Lithic::NonPCICard::PinStatus }

      # @!attribute spend_limit
      #   Amount (in cents) to limit approved authorizations (e.g. 100000 would be a
      #   $1,000 limit). Transaction requests above the spend limit will be declined.
      #
      #   @return [Integer]
      required :spend_limit, Integer

      # @!attribute spend_limit_duration
      #   Spend limit duration
      #
      #   @return [Symbol, Lithic::NonPCICard::SpendLimitDuration]
      required :spend_limit_duration, enum: -> { Lithic::NonPCICard::SpendLimitDuration }

      # @!attribute state
      #   Card state values: _ `CLOSED` - Card will no longer approve authorizations.
      #   Closing a card cannot be undone. _ `OPEN` - Card will approve authorizations (if
      #   they match card and account parameters). _ `PAUSED` - Card will decline
      #   authorizations, but can be resumed at a later time. _ `PENDING_FULFILLMENT` -
      #   The initial state for cards of type `PHYSICAL`. The card is provisioned pending
      #   manufacturing and fulfillment. Cards in this state can accept authorizations for
      #   e-commerce purchases, but not for "Card Present" purchases where the physical
      #   card itself is present. \* `PENDING_ACTIVATION` - At regular intervals, cards of
      #   type `PHYSICAL` in state `PENDING_FULFILLMENT` are sent to the card production
      #   warehouse and updated to state `PENDING_ACTIVATION`. Similar to
      #   `PENDING_FULFILLMENT`, cards in this state can be used for e-commerce
      #   transactions or can be added to mobile wallets. API clients should update the
      #   card's state to `OPEN` only after the cardholder confirms receipt of the card.
      #   In sandbox, the same daily batch fulfillment occurs, but no cards are actually
      #   manufactured.
      #
      #   @return [Symbol, Lithic::NonPCICard::State]
      required :state, enum: -> { Lithic::NonPCICard::State }

      # @!attribute type
      #   Card types: _ `VIRTUAL` - Card will authorize at any merchant and can be added
      #   to a digital wallet like Apple Pay or Google Pay (if the card program is digital
      #   wallet-enabled). _ `PHYSICAL` - Manufactured and sent to the cardholder. We
      #   offer white label branding, credit, ATM, PIN debit, chip/EMV, NFC and magstripe
      #   functionality. _ `SINGLE_USE` - Card is closed upon first successful
      #   authorization. _ `MERCHANT_LOCKED` - _[Deprecated]_ Card is locked to the first
      #   merchant that successfully authorizes the card. _ `UNLOCKED` - _[Deprecated]_
      #   Similar behavior to VIRTUAL cards, please use VIRTUAL instead. _
      #   `DIGITAL_WALLET` - _[Deprecated]_ Similar behavior to VIRTUAL cards, please use
      #   VIRTUAL instead.
      #
      #   @return [Symbol, Lithic::NonPCICard::Type]
      required :type, enum: -> { Lithic::NonPCICard::Type }

      # @!attribute auth_rule_tokens
      #   @deprecated
      #
      #   List of identifiers for the Auth Rule(s) that are applied on the card. This
      #   field is deprecated and will no longer be populated in the `Card` object. The
      #   key will be removed from the schema in a future release. Use the `/auth_rules`
      #   endpoints to fetch Auth Rule information instead.
      #
      #   @return [Array<String>, nil]
      optional :auth_rule_tokens, Lithic::Internal::Type::ArrayOf[String]

      # @!attribute cardholder_currency
      #   3-character alphabetic ISO 4217 code for the currency of the cardholder.
      #
      #   @return [String, nil]
      optional :cardholder_currency, String

      # @!attribute digital_card_art_token
      #   Specifies the digital card art to be displayed in the user's digital wallet
      #   after tokenization. This artwork must be approved by Mastercard and configured
      #   by Lithic to use.
      #
      #   @return [String, nil]
      optional :digital_card_art_token, String

      # @!attribute exp_month
      #   Two digit (MM) expiry month.
      #
      #   @return [String, nil]
      optional :exp_month, String

      # @!attribute exp_year
      #   Four digit (yyyy) expiry year.
      #
      #   @return [String, nil]
      optional :exp_year, String

      # @!attribute hostname
      #   Hostname of card's locked merchant (will be empty if not applicable).
      #
      #   @return [String, nil]
      optional :hostname, String

      # @!attribute memo
      #   Friendly name to identify the card.
      #
      #   @return [String, nil]
      optional :memo, String

      # @!attribute pending_commands
      #   Indicates if there are offline PIN changes pending card interaction with an
      #   offline PIN terminal. Possible commands are: CHANGE_PIN, UNBLOCK_PIN. Applicable
      #   only to cards issued in markets supporting offline PINs.
      #
      #   @return [Array<String>, nil]
      optional :pending_commands, Lithic::Internal::Type::ArrayOf[String]

      # @!attribute product_id
      #   Only applicable to cards of type `PHYSICAL`. This must be configured with Lithic
      #   before use. Specifies the configuration (i.e., physical card art) that the card
      #   should be manufactured with.
      #
      #   @return [String, nil]
      optional :product_id, String

      # @!attribute replacement_for
      #   If the card is a replacement for another card, the globally unique identifier
      #   for the card that was replaced.
      #
      #   @return [String, nil]
      optional :replacement_for, String, nil?: true

      # @!method initialize(token:, account_token:, card_program_token:, created:, funding:, last_four:, pin_status:, spend_limit:, spend_limit_duration:, state:, type:, auth_rule_tokens: nil, cardholder_currency: nil, digital_card_art_token: nil, exp_month: nil, exp_year: nil, hostname: nil, memo: nil, pending_commands: nil, product_id: nil, replacement_for: nil)
      #   Some parameter documentations has been truncated, see {Lithic::NonPCICard} for
      #   more details.
      #
      #   Card details without PCI information
      #
      #   @param token [String] Globally unique identifier.
      #
      #   @param account_token [String] Globally unique identifier for the account to which the card belongs.
      #
      #   @param card_program_token [String] Globally unique identifier for the card program on which the card exists.
      #
      #   @param created [Time] An RFC 3339 timestamp for when the card was created. UTC time zone.
      #
      #   @param funding [Lithic::NonPCICard::Funding] Deprecated: Funding account for the card.
      #
      #   @param last_four [String] Last four digits of the card number.
      #
      #   @param pin_status [Symbol, Lithic::NonPCICard::PinStatus] Indicates if a card is blocked due a PIN status issue (e.g. excessive incorrect
      #
      #   @param spend_limit [Integer] Amount (in cents) to limit approved authorizations (e.g. 100000 would be a $1,00
      #
      #   @param spend_limit_duration [Symbol, Lithic::NonPCICard::SpendLimitDuration] Spend limit duration
      #
      #   @param state [Symbol, Lithic::NonPCICard::State] Card state values: \* `CLOSED` - Card will no longer approve authorizations.
      #   Clos
      #
      #   @param type [Symbol, Lithic::NonPCICard::Type] Card types: \* `VIRTUAL` - Card will authorize at any merchant and can be added
      #   t
      #
      #   @param auth_rule_tokens [Array<String>] List of identifiers for the Auth Rule(s) that are applied on the card. This fiel
      #
      #   @param cardholder_currency [String] 3-character alphabetic ISO 4217 code for the currency of the cardholder.
      #
      #   @param digital_card_art_token [String] Specifies the digital card art to be displayed in the user's digital wallet afte
      #
      #   @param exp_month [String] Two digit (MM) expiry month.
      #
      #   @param exp_year [String] Four digit (yyyy) expiry year.
      #
      #   @param hostname [String] Hostname of card's locked merchant (will be empty if not applicable).
      #
      #   @param memo [String] Friendly name to identify the card.
      #
      #   @param pending_commands [Array<String>] Indicates if there are offline PIN changes pending card interaction with an offl
      #
      #   @param product_id [String] Only applicable to cards of type `PHYSICAL`. This must be configured with Lithic
      #
      #   @param replacement_for [String, nil] If the card is a replacement for another card, the globally unique identifier fo

      # @see Lithic::NonPCICard#funding
      class Funding < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   A globally unique identifier for this FundingAccount.
        #
        #   @return [String]
        required :token, String

        # @!attribute created
        #   An RFC 3339 string representing when this funding source was added to the Lithic
        #   account. This may be `null`. UTC time zone.
        #
        #   @return [Time]
        required :created, Time

        # @!attribute last_four
        #   The last 4 digits of the account (e.g. bank account, debit card) associated with
        #   this FundingAccount. This may be null.
        #
        #   @return [String]
        required :last_four, String

        # @!attribute state
        #   State of funding source. Funding source states: _ `ENABLED` - The funding
        #   account is available to use for card creation and transactions. _ `PENDING` -
        #   The funding account is still being verified e.g. bank micro-deposits
        #   verification. \* `DELETED` - The founding account has been deleted.
        #
        #   @return [Symbol, Lithic::NonPCICard::Funding::State]
        required :state, enum: -> { Lithic::NonPCICard::Funding::State }

        # @!attribute type
        #   Types of funding source: _ `DEPOSITORY_CHECKING` - Bank checking account. _
        #   `DEPOSITORY_SAVINGS` - Bank savings account.
        #
        #   @return [Symbol, Lithic::NonPCICard::Funding::Type]
        required :type, enum: -> { Lithic::NonPCICard::Funding::Type }

        # @!attribute account_name
        #   Account name identifying the funding source. This may be `null`.
        #
        #   @return [String, nil]
        optional :account_name, String

        # @!attribute nickname
        #   The nickname given to the `FundingAccount` or `null` if it has no nickname.
        #
        #   @return [String, nil]
        optional :nickname, String

        # @!method initialize(token:, created:, last_four:, state:, type:, account_name: nil, nickname: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::NonPCICard::Funding} for more details.
        #
        #   Deprecated: Funding account for the card.
        #
        #   @param token [String] A globally unique identifier for this FundingAccount.
        #
        #   @param created [Time] An RFC 3339 string representing when this funding source was added to the Lithic
        #
        #   @param last_four [String] The last 4 digits of the account (e.g. bank account, debit card) associated with
        #
        #   @param state [Symbol, Lithic::NonPCICard::Funding::State] State of funding source. Funding source states: \* `ENABLED` - The funding
        #   accoun
        #
        #   @param type [Symbol, Lithic::NonPCICard::Funding::Type] Types of funding source: _ `DEPOSITORY_CHECKING` - Bank checking account. _ `DEP
        #
        #   @param account_name [String] Account name identifying the funding source. This may be `null`.
        #
        #   @param nickname [String] The nickname given to the `FundingAccount` or `null` if it has no nickname.

        # State of funding source. Funding source states: _ `ENABLED` - The funding
        # account is available to use for card creation and transactions. _ `PENDING` -
        # The funding account is still being verified e.g. bank micro-deposits
        # verification. \* `DELETED` - The founding account has been deleted.
        #
        # @see Lithic::NonPCICard::Funding#state
        module State
          extend Lithic::Internal::Type::Enum

          DELETED = :DELETED
          ENABLED = :ENABLED
          PENDING = :PENDING

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Types of funding source: _ `DEPOSITORY_CHECKING` - Bank checking account. _
        # `DEPOSITORY_SAVINGS` - Bank savings account.
        #
        # @see Lithic::NonPCICard::Funding#type
        module Type
          extend Lithic::Internal::Type::Enum

          DEPOSITORY_CHECKING = :DEPOSITORY_CHECKING
          DEPOSITORY_SAVINGS = :DEPOSITORY_SAVINGS

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Indicates if a card is blocked due a PIN status issue (e.g. excessive incorrect
      # attempts).
      #
      # @see Lithic::NonPCICard#pin_status
      module PinStatus
        extend Lithic::Internal::Type::Enum

        OK = :OK
        BLOCKED = :BLOCKED
        NOT_SET = :NOT_SET

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Spend limit duration
      #
      # @see Lithic::NonPCICard#spend_limit_duration
      module SpendLimitDuration
        extend Lithic::Internal::Type::Enum

        ANNUALLY = :ANNUALLY
        FOREVER = :FOREVER
        MONTHLY = :MONTHLY
        TRANSACTION = :TRANSACTION
        DAILY = :DAILY

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Card state values: _ `CLOSED` - Card will no longer approve authorizations.
      # Closing a card cannot be undone. _ `OPEN` - Card will approve authorizations (if
      # they match card and account parameters). _ `PAUSED` - Card will decline
      # authorizations, but can be resumed at a later time. _ `PENDING_FULFILLMENT` -
      # The initial state for cards of type `PHYSICAL`. The card is provisioned pending
      # manufacturing and fulfillment. Cards in this state can accept authorizations for
      # e-commerce purchases, but not for "Card Present" purchases where the physical
      # card itself is present. \* `PENDING_ACTIVATION` - At regular intervals, cards of
      # type `PHYSICAL` in state `PENDING_FULFILLMENT` are sent to the card production
      # warehouse and updated to state `PENDING_ACTIVATION`. Similar to
      # `PENDING_FULFILLMENT`, cards in this state can be used for e-commerce
      # transactions or can be added to mobile wallets. API clients should update the
      # card's state to `OPEN` only after the cardholder confirms receipt of the card.
      # In sandbox, the same daily batch fulfillment occurs, but no cards are actually
      # manufactured.
      #
      # @see Lithic::NonPCICard#state
      module State
        extend Lithic::Internal::Type::Enum

        CLOSED = :CLOSED
        OPEN = :OPEN
        PAUSED = :PAUSED
        PENDING_ACTIVATION = :PENDING_ACTIVATION
        PENDING_FULFILLMENT = :PENDING_FULFILLMENT

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Card types: _ `VIRTUAL` - Card will authorize at any merchant and can be added
      # to a digital wallet like Apple Pay or Google Pay (if the card program is digital
      # wallet-enabled). _ `PHYSICAL` - Manufactured and sent to the cardholder. We
      # offer white label branding, credit, ATM, PIN debit, chip/EMV, NFC and magstripe
      # functionality. _ `SINGLE_USE` - Card is closed upon first successful
      # authorization. _ `MERCHANT_LOCKED` - _[Deprecated]_ Card is locked to the first
      # merchant that successfully authorizes the card. _ `UNLOCKED` - _[Deprecated]_
      # Similar behavior to VIRTUAL cards, please use VIRTUAL instead. _
      # `DIGITAL_WALLET` - _[Deprecated]_ Similar behavior to VIRTUAL cards, please use
      # VIRTUAL instead.
      #
      # @see Lithic::NonPCICard#type
      module Type
        extend Lithic::Internal::Type::Enum

        MERCHANT_LOCKED = :MERCHANT_LOCKED
        PHYSICAL = :PHYSICAL
        SINGLE_USE = :SINGLE_USE
        VIRTUAL = :VIRTUAL
        UNLOCKED = :UNLOCKED
        DIGITAL_WALLET = :DIGITAL_WALLET

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
