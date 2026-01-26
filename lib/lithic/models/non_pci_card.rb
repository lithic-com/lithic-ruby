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
      #   @return [Lithic::Models::NonPCICard::Funding]
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
      #   @return [Symbol, Lithic::Models::NonPCICard::PinStatus]
      required :pin_status, enum: -> { Lithic::NonPCICard::PinStatus }

      # @!attribute spend_limit
      #   Amount (in cents) to limit approved authorizations (e.g. 100000 would be a
      #   $1,000 limit). Transaction requests above the spend limit will be declined.
      #
      #   @return [Integer]
      required :spend_limit, Integer

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
      #   @return [Symbol, Lithic::Models::SpendLimitDuration]
      required :spend_limit_duration, enum: -> { Lithic::SpendLimitDuration }

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
      #   @return [Symbol, Lithic::Models::NonPCICard::State]
      required :state, enum: -> { Lithic::NonPCICard::State }

      # @!attribute type
      #   Card types: _ `VIRTUAL` - Card will authorize at any merchant and can be added
      #   to a digital wallet like Apple Pay or Google Pay (if the card program is digital
      #   wallet-enabled). _ `PHYSICAL` - Manufactured and sent to the cardholder. We
      #   offer white label branding, credit, ATM, PIN debit, chip/EMV, NFC and magstripe
      #   functionality. _ `SINGLE_USE` - Card is closed upon first successful
      #   authorization. _ `MERCHANT_LOCKED` - Card is locked to the first merchant that
      #   successfully authorizes the card. _ `UNLOCKED` - _[Deprecated]_ Similar behavior
      #   to VIRTUAL cards, please use VIRTUAL instead. _ `DIGITAL_WALLET` -
      #   _[Deprecated]_ Similar behavior to VIRTUAL cards, please use VIRTUAL instead.
      #
      #   @return [Symbol, Lithic::Models::NonPCICard::Type]
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

      # @!attribute bulk_order_token
      #   Globally unique identifier for the bulk order associated with this card. Only
      #   applicable to physical cards that are part of a bulk shipment
      #
      #   @return [String, nil]
      optional :bulk_order_token, String, nil?: true

      # @!attribute cardholder_currency
      #   3-character alphabetic ISO 4217 code for the currency of the cardholder.
      #
      #   @return [String, nil]
      optional :cardholder_currency, String

      # @!attribute comment
      #   Additional context or information related to the card.
      #
      #   @return [String, nil]
      optional :comment, String

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

      # @!attribute network_program_token
      #   Globally unique identifier for the card's network program. Null if the card is
      #   not associated with a network program. Currently applicable to Visa cards
      #   participating in Account Level Management only
      #
      #   @return [String, nil]
      optional :network_program_token, String, nil?: true

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

      # @!attribute substatus
      #   Card state substatus values: _ `LOST` - The physical card is no longer in the
      #   cardholder's possession due to being lost or never received by the cardholder. _
      #   `COMPROMISED` - Card information has been exposed, potentially leading to
      #   unauthorized access. This may involve physical card theft, cloning, or online
      #   data breaches. _ `DAMAGED` - The physical card is not functioning properly, such
      #   as having chip failures or a demagnetized magnetic stripe. _
      #   `END_USER_REQUEST` - The cardholder requested the closure of the card for
      #   reasons unrelated to fraud or damage, such as switching to a different product
      #   or closing the account. _ `ISSUER_REQUEST` - The issuer closed the card for
      #   reasons unrelated to fraud or damage, such as account inactivity, product or
      #   policy changes, or technology upgrades. _ `NOT_ACTIVE` - The card hasn’t had any
      #   transaction activity for a specified period, applicable to statuses like
      #   `PAUSED` or `CLOSED`. _ `SUSPICIOUS_ACTIVITY` - The card has one or more
      #   suspicious transactions or activities that require review. This can involve
      #   prompting the cardholder to confirm legitimate use or report confirmed fraud. _
      #   `INTERNAL_REVIEW` - The card is temporarily paused pending further internal
      #   review. _ `EXPIRED` - The card has expired and has been closed without being
      #   reissued. _ `UNDELIVERABLE` - The card cannot be delivered to the cardholder and
      #   has been returned. \* `OTHER` - The reason for the status does not fall into any
      #   of the above categories. A comment can be provided to specify the reason.
      #
      #   @return [Symbol, Lithic::Models::NonPCICard::Substatus, nil]
      optional :substatus, enum: -> { Lithic::NonPCICard::Substatus }

      # @!method initialize(token:, account_token:, card_program_token:, created:, funding:, last_four:, pin_status:, spend_limit:, spend_limit_duration:, state:, type:, auth_rule_tokens: nil, bulk_order_token: nil, cardholder_currency: nil, comment: nil, digital_card_art_token: nil, exp_month: nil, exp_year: nil, hostname: nil, memo: nil, network_program_token: nil, pending_commands: nil, product_id: nil, replacement_for: nil, substatus: nil)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::NonPCICard} for more details.
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
      #   @param funding [Lithic::Models::NonPCICard::Funding] Deprecated: Funding account for the card.
      #
      #   @param last_four [String] Last four digits of the card number.
      #
      #   @param pin_status [Symbol, Lithic::Models::NonPCICard::PinStatus] Indicates if a card is blocked due a PIN status issue (e.g. excessive incorrect
      #
      #   @param spend_limit [Integer] Amount (in cents) to limit approved authorizations (e.g. 100000 would be a $1,00
      #
      #   @param spend_limit_duration [Symbol, Lithic::Models::SpendLimitDuration] Spend limit duration values:
      #
      #   @param state [Symbol, Lithic::Models::NonPCICard::State] Card state values: \* `CLOSED` - Card will no longer approve authorizations.
      #   Clos
      #
      #   @param type [Symbol, Lithic::Models::NonPCICard::Type] Card types: \* `VIRTUAL` - Card will authorize at any merchant and can be added
      #   t
      #
      #   @param auth_rule_tokens [Array<String>] List of identifiers for the Auth Rule(s) that are applied on the card. This fiel
      #
      #   @param bulk_order_token [String, nil] Globally unique identifier for the bulk order associated with this card. Only ap
      #
      #   @param cardholder_currency [String] 3-character alphabetic ISO 4217 code for the currency of the cardholder.
      #
      #   @param comment [String] Additional context or information related to the card.
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
      #   @param network_program_token [String, nil] Globally unique identifier for the card's network program. Null if the card is n
      #
      #   @param pending_commands [Array<String>] Indicates if there are offline PIN changes pending card interaction with an offl
      #
      #   @param product_id [String] Only applicable to cards of type `PHYSICAL`. This must be configured with Lithic
      #
      #   @param replacement_for [String, nil] If the card is a replacement for another card, the globally unique identifier fo
      #
      #   @param substatus [Symbol, Lithic::Models::NonPCICard::Substatus] Card state substatus values: \* `LOST` - The physical card is no longer in the
      #   ca

      # @see Lithic::Models::NonPCICard#funding
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
        #   @return [Symbol, Lithic::Models::NonPCICard::Funding::State]
        required :state, enum: -> { Lithic::NonPCICard::Funding::State }

        # @!attribute type
        #   Types of funding source: _ `DEPOSITORY_CHECKING` - Bank checking account. _
        #   `DEPOSITORY_SAVINGS` - Bank savings account.
        #
        #   @return [Symbol, Lithic::Models::NonPCICard::Funding::Type]
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
        #   {Lithic::Models::NonPCICard::Funding} for more details.
        #
        #   Deprecated: Funding account for the card.
        #
        #   @param token [String] A globally unique identifier for this FundingAccount.
        #
        #   @param created [Time] An RFC 3339 string representing when this funding source was added to the Lithic
        #
        #   @param last_four [String] The last 4 digits of the account (e.g. bank account, debit card) associated with
        #
        #   @param state [Symbol, Lithic::Models::NonPCICard::Funding::State] State of funding source. Funding source states: \* `ENABLED` - The funding
        #   accoun
        #
        #   @param type [Symbol, Lithic::Models::NonPCICard::Funding::Type] Types of funding source: _ `DEPOSITORY_CHECKING` - Bank checking account. _ `DEP
        #
        #   @param account_name [String] Account name identifying the funding source. This may be `null`.
        #
        #   @param nickname [String] The nickname given to the `FundingAccount` or `null` if it has no nickname.

        # State of funding source. Funding source states: _ `ENABLED` - The funding
        # account is available to use for card creation and transactions. _ `PENDING` -
        # The funding account is still being verified e.g. bank micro-deposits
        # verification. \* `DELETED` - The founding account has been deleted.
        #
        # @see Lithic::Models::NonPCICard::Funding#state
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
        # @see Lithic::Models::NonPCICard::Funding#type
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
      # @see Lithic::Models::NonPCICard#pin_status
      module PinStatus
        extend Lithic::Internal::Type::Enum

        OK = :OK
        BLOCKED = :BLOCKED
        NOT_SET = :NOT_SET

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
      # @see Lithic::Models::NonPCICard#state
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
      # authorization. _ `MERCHANT_LOCKED` - Card is locked to the first merchant that
      # successfully authorizes the card. _ `UNLOCKED` - _[Deprecated]_ Similar behavior
      # to VIRTUAL cards, please use VIRTUAL instead. _ `DIGITAL_WALLET` -
      # _[Deprecated]_ Similar behavior to VIRTUAL cards, please use VIRTUAL instead.
      #
      # @see Lithic::Models::NonPCICard#type
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

      # Card state substatus values: _ `LOST` - The physical card is no longer in the
      # cardholder's possession due to being lost or never received by the cardholder. _
      # `COMPROMISED` - Card information has been exposed, potentially leading to
      # unauthorized access. This may involve physical card theft, cloning, or online
      # data breaches. _ `DAMAGED` - The physical card is not functioning properly, such
      # as having chip failures or a demagnetized magnetic stripe. _
      # `END_USER_REQUEST` - The cardholder requested the closure of the card for
      # reasons unrelated to fraud or damage, such as switching to a different product
      # or closing the account. _ `ISSUER_REQUEST` - The issuer closed the card for
      # reasons unrelated to fraud or damage, such as account inactivity, product or
      # policy changes, or technology upgrades. _ `NOT_ACTIVE` - The card hasn’t had any
      # transaction activity for a specified period, applicable to statuses like
      # `PAUSED` or `CLOSED`. _ `SUSPICIOUS_ACTIVITY` - The card has one or more
      # suspicious transactions or activities that require review. This can involve
      # prompting the cardholder to confirm legitimate use or report confirmed fraud. _
      # `INTERNAL_REVIEW` - The card is temporarily paused pending further internal
      # review. _ `EXPIRED` - The card has expired and has been closed without being
      # reissued. _ `UNDELIVERABLE` - The card cannot be delivered to the cardholder and
      # has been returned. \* `OTHER` - The reason for the status does not fall into any
      # of the above categories. A comment can be provided to specify the reason.
      #
      # @see Lithic::Models::NonPCICard#substatus
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
