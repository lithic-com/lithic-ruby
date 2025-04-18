# typed: strong

module Lithic
  module Models
    class CardRenewResponse < Lithic::Internal::Type::BaseModel
      # Globally unique identifier.
      sig { returns(String) }
      attr_accessor :token

      # Globally unique identifier for the account to which the card belongs.
      sig { returns(String) }
      attr_accessor :account_token

      # Globally unique identifier for the card program on which the card exists.
      sig { returns(String) }
      attr_accessor :card_program_token

      # An RFC 3339 timestamp for when the card was created. UTC time zone.
      sig { returns(Time) }
      attr_accessor :created

      # Deprecated: Funding account for the card.
      sig { returns(Lithic::Models::CardRenewResponse::Funding) }
      attr_reader :funding

      sig { params(funding: T.any(Lithic::Models::CardRenewResponse::Funding, Lithic::Internal::AnyHash)).void }
      attr_writer :funding

      # Last four digits of the card number.
      sig { returns(String) }
      attr_accessor :last_four

      # Indicates if a card is blocked due a PIN status issue (e.g. excessive incorrect
      # attempts).
      sig { returns(Lithic::Models::CardRenewResponse::PinStatus::TaggedSymbol) }
      attr_accessor :pin_status

      # Amount (in cents) to limit approved authorizations (e.g. 100000 would be a
      # $1,000 limit). Transaction requests above the spend limit will be declined.
      sig { returns(Integer) }
      attr_accessor :spend_limit

      # Spend limit duration
      sig { returns(Lithic::Models::CardRenewResponse::SpendLimitDuration::TaggedSymbol) }
      attr_accessor :spend_limit_duration

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
      sig { returns(Lithic::Models::CardRenewResponse::State::TaggedSymbol) }
      attr_accessor :state

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
      sig { returns(Lithic::Models::CardRenewResponse::Type::TaggedSymbol) }
      attr_accessor :type

      # List of identifiers for the Auth Rule(s) that are applied on the card. This
      # field is deprecated and will no longer be populated in the `Card` object. The
      # key will be removed from the schema in a future release. Use the `/auth_rules`
      # endpoints to fetch Auth Rule information instead.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :auth_rule_tokens

      sig { params(auth_rule_tokens: T::Array[String]).void }
      attr_writer :auth_rule_tokens

      # 3-character alphabetic ISO 4217 code for the currency of the cardholder.
      sig { returns(T.nilable(String)) }
      attr_reader :cardholder_currency

      sig { params(cardholder_currency: String).void }
      attr_writer :cardholder_currency

      # Three digit cvv printed on the back of the card.
      sig { returns(T.nilable(String)) }
      attr_reader :cvv

      sig { params(cvv: String).void }
      attr_writer :cvv

      # Specifies the digital card art to be displayed in the user's digital wallet
      # after tokenization. This artwork must be approved by Mastercard and configured
      # by Lithic to use.
      sig { returns(T.nilable(String)) }
      attr_reader :digital_card_art_token

      sig { params(digital_card_art_token: String).void }
      attr_writer :digital_card_art_token

      # Two digit (MM) expiry month.
      sig { returns(T.nilable(String)) }
      attr_reader :exp_month

      sig { params(exp_month: String).void }
      attr_writer :exp_month

      # Four digit (yyyy) expiry year.
      sig { returns(T.nilable(String)) }
      attr_reader :exp_year

      sig { params(exp_year: String).void }
      attr_writer :exp_year

      # Hostname of card's locked merchant (will be empty if not applicable).
      sig { returns(T.nilable(String)) }
      attr_reader :hostname

      sig { params(hostname: String).void }
      attr_writer :hostname

      # Friendly name to identify the card.
      sig { returns(T.nilable(String)) }
      attr_reader :memo

      sig { params(memo: String).void }
      attr_writer :memo

      # Primary Account Number (PAN) (i.e. the card number). Customers must be PCI
      # compliant to have PAN returned as a field in production. Please contact
      # support@lithic.com for questions.
      sig { returns(T.nilable(String)) }
      attr_reader :pan

      sig { params(pan: String).void }
      attr_writer :pan

      # Indicates if there are offline PIN changes pending card interaction with an
      # offline PIN terminal. Possible commands are: CHANGE_PIN, UNBLOCK_PIN. Applicable
      # only to cards issued in markets supporting offline PINs.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :pending_commands

      sig { params(pending_commands: T::Array[String]).void }
      attr_writer :pending_commands

      # Only applicable to cards of type `PHYSICAL`. This must be configured with Lithic
      # before use. Specifies the configuration (i.e., physical card art) that the card
      # should be manufactured with.
      sig { returns(T.nilable(String)) }
      attr_reader :product_id

      sig { params(product_id: String).void }
      attr_writer :product_id

      # If the card is a replacement for another card, the globally unique identifier
      # for the card that was replaced.
      sig { returns(T.nilable(String)) }
      attr_accessor :replacement_for

      # Card details with potentially PCI sensitive information for Enterprise customers
      sig do
        params(
          token: String,
          account_token: String,
          card_program_token: String,
          created: Time,
          funding: T.any(Lithic::Models::CardRenewResponse::Funding, Lithic::Internal::AnyHash),
          last_four: String,
          pin_status: Lithic::Models::CardRenewResponse::PinStatus::OrSymbol,
          spend_limit: Integer,
          spend_limit_duration: Lithic::Models::CardRenewResponse::SpendLimitDuration::OrSymbol,
          state: Lithic::Models::CardRenewResponse::State::OrSymbol,
          type: Lithic::Models::CardRenewResponse::Type::OrSymbol,
          auth_rule_tokens: T::Array[String],
          cardholder_currency: String,
          cvv: String,
          digital_card_art_token: String,
          exp_month: String,
          exp_year: String,
          hostname: String,
          memo: String,
          pan: String,
          pending_commands: T::Array[String],
          product_id: String,
          replacement_for: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        token:,
        account_token:,
        card_program_token:,
        created:,
        funding:,
        last_four:,
        pin_status:,
        spend_limit:,
        spend_limit_duration:,
        state:,
        type:,
        auth_rule_tokens: nil,
        cardholder_currency: nil,
        cvv: nil,
        digital_card_art_token: nil,
        exp_month: nil,
        exp_year: nil,
        hostname: nil,
        memo: nil,
        pan: nil,
        pending_commands: nil,
        product_id: nil,
        replacement_for: nil
      ); end
      sig do
        override
          .returns(
            {
              token: String,
              account_token: String,
              card_program_token: String,
              created: Time,
              funding: Lithic::Models::CardRenewResponse::Funding,
              last_four: String,
              pin_status: Lithic::Models::CardRenewResponse::PinStatus::TaggedSymbol,
              spend_limit: Integer,
              spend_limit_duration: Lithic::Models::CardRenewResponse::SpendLimitDuration::TaggedSymbol,
              state: Lithic::Models::CardRenewResponse::State::TaggedSymbol,
              type: Lithic::Models::CardRenewResponse::Type::TaggedSymbol,
              auth_rule_tokens: T::Array[String],
              cardholder_currency: String,
              cvv: String,
              digital_card_art_token: String,
              exp_month: String,
              exp_year: String,
              hostname: String,
              memo: String,
              pan: String,
              pending_commands: T::Array[String],
              product_id: String,
              replacement_for: T.nilable(String)
            }
          )
      end
      def to_hash; end

      class Funding < Lithic::Internal::Type::BaseModel
        # A globally unique identifier for this FundingAccount.
        sig { returns(String) }
        attr_accessor :token

        # An RFC 3339 string representing when this funding source was added to the Lithic
        # account. This may be `null`. UTC time zone.
        sig { returns(Time) }
        attr_accessor :created

        # The last 4 digits of the account (e.g. bank account, debit card) associated with
        # this FundingAccount. This may be null.
        sig { returns(String) }
        attr_accessor :last_four

        # State of funding source. Funding source states: _ `ENABLED` - The funding
        # account is available to use for card creation and transactions. _ `PENDING` -
        # The funding account is still being verified e.g. bank micro-deposits
        # verification. \* `DELETED` - The founding account has been deleted.
        sig { returns(Lithic::Models::CardRenewResponse::Funding::State::TaggedSymbol) }
        attr_accessor :state

        # Types of funding source: _ `DEPOSITORY_CHECKING` - Bank checking account. _
        # `DEPOSITORY_SAVINGS` - Bank savings account.
        sig { returns(Lithic::Models::CardRenewResponse::Funding::Type::TaggedSymbol) }
        attr_accessor :type

        # Account name identifying the funding source. This may be `null`.
        sig { returns(T.nilable(String)) }
        attr_reader :account_name

        sig { params(account_name: String).void }
        attr_writer :account_name

        # The nickname given to the `FundingAccount` or `null` if it has no nickname.
        sig { returns(T.nilable(String)) }
        attr_reader :nickname

        sig { params(nickname: String).void }
        attr_writer :nickname

        # Deprecated: Funding account for the card.
        sig do
          params(
            token: String,
            created: Time,
            last_four: String,
            state: Lithic::Models::CardRenewResponse::Funding::State::OrSymbol,
            type: Lithic::Models::CardRenewResponse::Funding::Type::OrSymbol,
            account_name: String,
            nickname: String
          )
            .returns(T.attached_class)
        end
        def self.new(token:, created:, last_four:, state:, type:, account_name: nil, nickname: nil); end

        sig do
          override
            .returns(
              {
                token: String,
                created: Time,
                last_four: String,
                state: Lithic::Models::CardRenewResponse::Funding::State::TaggedSymbol,
                type: Lithic::Models::CardRenewResponse::Funding::Type::TaggedSymbol,
                account_name: String,
                nickname: String
              }
            )
        end
        def to_hash; end

        # State of funding source. Funding source states: _ `ENABLED` - The funding
        # account is available to use for card creation and transactions. _ `PENDING` -
        # The funding account is still being verified e.g. bank micro-deposits
        # verification. \* `DELETED` - The founding account has been deleted.
        module State
          extend Lithic::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::CardRenewResponse::Funding::State) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DELETED = T.let(:DELETED, Lithic::Models::CardRenewResponse::Funding::State::TaggedSymbol)
          ENABLED = T.let(:ENABLED, Lithic::Models::CardRenewResponse::Funding::State::TaggedSymbol)
          PENDING = T.let(:PENDING, Lithic::Models::CardRenewResponse::Funding::State::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::CardRenewResponse::Funding::State::TaggedSymbol]) }
          def self.values; end
        end

        # Types of funding source: _ `DEPOSITORY_CHECKING` - Bank checking account. _
        # `DEPOSITORY_SAVINGS` - Bank savings account.
        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::CardRenewResponse::Funding::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEPOSITORY_CHECKING =
            T.let(:DEPOSITORY_CHECKING, Lithic::Models::CardRenewResponse::Funding::Type::TaggedSymbol)
          DEPOSITORY_SAVINGS =
            T.let(:DEPOSITORY_SAVINGS, Lithic::Models::CardRenewResponse::Funding::Type::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::CardRenewResponse::Funding::Type::TaggedSymbol]) }
          def self.values; end
        end
      end

      # Indicates if a card is blocked due a PIN status issue (e.g. excessive incorrect
      # attempts).
      module PinStatus
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::CardRenewResponse::PinStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OK = T.let(:OK, Lithic::Models::CardRenewResponse::PinStatus::TaggedSymbol)
        BLOCKED = T.let(:BLOCKED, Lithic::Models::CardRenewResponse::PinStatus::TaggedSymbol)
        NOT_SET = T.let(:NOT_SET, Lithic::Models::CardRenewResponse::PinStatus::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::CardRenewResponse::PinStatus::TaggedSymbol]) }
        def self.values; end
      end

      # Spend limit duration
      module SpendLimitDuration
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::CardRenewResponse::SpendLimitDuration) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ANNUALLY = T.let(:ANNUALLY, Lithic::Models::CardRenewResponse::SpendLimitDuration::TaggedSymbol)
        FOREVER = T.let(:FOREVER, Lithic::Models::CardRenewResponse::SpendLimitDuration::TaggedSymbol)
        MONTHLY = T.let(:MONTHLY, Lithic::Models::CardRenewResponse::SpendLimitDuration::TaggedSymbol)
        TRANSACTION = T.let(:TRANSACTION, Lithic::Models::CardRenewResponse::SpendLimitDuration::TaggedSymbol)
        DAILY = T.let(:DAILY, Lithic::Models::CardRenewResponse::SpendLimitDuration::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::CardRenewResponse::SpendLimitDuration::TaggedSymbol]) }
        def self.values; end
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
      module State
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::CardRenewResponse::State) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CLOSED = T.let(:CLOSED, Lithic::Models::CardRenewResponse::State::TaggedSymbol)
        OPEN = T.let(:OPEN, Lithic::Models::CardRenewResponse::State::TaggedSymbol)
        PAUSED = T.let(:PAUSED, Lithic::Models::CardRenewResponse::State::TaggedSymbol)
        PENDING_ACTIVATION = T.let(:PENDING_ACTIVATION, Lithic::Models::CardRenewResponse::State::TaggedSymbol)
        PENDING_FULFILLMENT = T.let(:PENDING_FULFILLMENT, Lithic::Models::CardRenewResponse::State::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::CardRenewResponse::State::TaggedSymbol]) }
        def self.values; end
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
      module Type
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::CardRenewResponse::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MERCHANT_LOCKED = T.let(:MERCHANT_LOCKED, Lithic::Models::CardRenewResponse::Type::TaggedSymbol)
        PHYSICAL = T.let(:PHYSICAL, Lithic::Models::CardRenewResponse::Type::TaggedSymbol)
        SINGLE_USE = T.let(:SINGLE_USE, Lithic::Models::CardRenewResponse::Type::TaggedSymbol)
        VIRTUAL = T.let(:VIRTUAL, Lithic::Models::CardRenewResponse::Type::TaggedSymbol)
        UNLOCKED = T.let(:UNLOCKED, Lithic::Models::CardRenewResponse::Type::TaggedSymbol)
        DIGITAL_WALLET = T.let(:DIGITAL_WALLET, Lithic::Models::CardRenewResponse::Type::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::CardRenewResponse::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
