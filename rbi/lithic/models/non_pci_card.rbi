# typed: strong

module Lithic
  module Models
    class NonPCICard < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Lithic::NonPCICard, Lithic::Internal::AnyHash) }

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
      sig { returns(Lithic::NonPCICard::Funding) }
      attr_reader :funding

      sig { params(funding: Lithic::NonPCICard::Funding::OrHash).void }
      attr_writer :funding

      # Last four digits of the card number.
      sig { returns(String) }
      attr_accessor :last_four

      # Indicates if a card is blocked due a PIN status issue (e.g. excessive incorrect
      # attempts).
      sig { returns(Lithic::NonPCICard::PinStatus::TaggedSymbol) }
      attr_accessor :pin_status

      # Amount (in cents) to limit approved authorizations (e.g. 100000 would be a
      # $1,000 limit). Transaction requests above the spend limit will be declined.
      sig { returns(Integer) }
      attr_accessor :spend_limit

      # Spend limit duration values:
      #
      # - `ANNUALLY` - Card will authorize transactions up to spend limit for the
      #   trailing year.
      # - `FOREVER` - Card will authorize only up to spend limit for the entire lifetime
      #   of the card.
      # - `MONTHLY` - Card will authorize transactions up to spend limit for the
      #   trailing month. To support recurring monthly payments, which can occur on
      #   different day every month, the time window we consider for monthly velocity
      #   starts 6 days after the current calendar date one month prior.
      # - `TRANSACTION` - Card will authorize multiple transactions if each individual
      #   transaction is under the spend limit.
      sig { returns(Lithic::SpendLimitDuration::TaggedSymbol) }
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
      sig { returns(Lithic::NonPCICard::State::TaggedSymbol) }
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
      sig { returns(Lithic::NonPCICard::Type::TaggedSymbol) }
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

      # Card details without PCI information
      sig do
        params(
          token: String,
          account_token: String,
          card_program_token: String,
          created: Time,
          funding: Lithic::NonPCICard::Funding::OrHash,
          last_four: String,
          pin_status: Lithic::NonPCICard::PinStatus::OrSymbol,
          spend_limit: Integer,
          spend_limit_duration: Lithic::SpendLimitDuration::OrSymbol,
          state: Lithic::NonPCICard::State::OrSymbol,
          type: Lithic::NonPCICard::Type::OrSymbol,
          auth_rule_tokens: T::Array[String],
          cardholder_currency: String,
          digital_card_art_token: String,
          exp_month: String,
          exp_year: String,
          hostname: String,
          memo: String,
          pending_commands: T::Array[String],
          product_id: String,
          replacement_for: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Globally unique identifier.
        token:,
        # Globally unique identifier for the account to which the card belongs.
        account_token:,
        # Globally unique identifier for the card program on which the card exists.
        card_program_token:,
        # An RFC 3339 timestamp for when the card was created. UTC time zone.
        created:,
        # Deprecated: Funding account for the card.
        funding:,
        # Last four digits of the card number.
        last_four:,
        # Indicates if a card is blocked due a PIN status issue (e.g. excessive incorrect
        # attempts).
        pin_status:,
        # Amount (in cents) to limit approved authorizations (e.g. 100000 would be a
        # $1,000 limit). Transaction requests above the spend limit will be declined.
        spend_limit:,
        # Spend limit duration values:
        #
        # - `ANNUALLY` - Card will authorize transactions up to spend limit for the
        #   trailing year.
        # - `FOREVER` - Card will authorize only up to spend limit for the entire lifetime
        #   of the card.
        # - `MONTHLY` - Card will authorize transactions up to spend limit for the
        #   trailing month. To support recurring monthly payments, which can occur on
        #   different day every month, the time window we consider for monthly velocity
        #   starts 6 days after the current calendar date one month prior.
        # - `TRANSACTION` - Card will authorize multiple transactions if each individual
        #   transaction is under the spend limit.
        spend_limit_duration:,
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
        state:,
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
        type:,
        # List of identifiers for the Auth Rule(s) that are applied on the card. This
        # field is deprecated and will no longer be populated in the `Card` object. The
        # key will be removed from the schema in a future release. Use the `/auth_rules`
        # endpoints to fetch Auth Rule information instead.
        auth_rule_tokens: nil,
        # 3-character alphabetic ISO 4217 code for the currency of the cardholder.
        cardholder_currency: nil,
        # Specifies the digital card art to be displayed in the user's digital wallet
        # after tokenization. This artwork must be approved by Mastercard and configured
        # by Lithic to use.
        digital_card_art_token: nil,
        # Two digit (MM) expiry month.
        exp_month: nil,
        # Four digit (yyyy) expiry year.
        exp_year: nil,
        # Hostname of card's locked merchant (will be empty if not applicable).
        hostname: nil,
        # Friendly name to identify the card.
        memo: nil,
        # Indicates if there are offline PIN changes pending card interaction with an
        # offline PIN terminal. Possible commands are: CHANGE_PIN, UNBLOCK_PIN. Applicable
        # only to cards issued in markets supporting offline PINs.
        pending_commands: nil,
        # Only applicable to cards of type `PHYSICAL`. This must be configured with Lithic
        # before use. Specifies the configuration (i.e., physical card art) that the card
        # should be manufactured with.
        product_id: nil,
        # If the card is a replacement for another card, the globally unique identifier
        # for the card that was replaced.
        replacement_for: nil
      )
      end

      sig do
        override.returns(
          {
            token: String,
            account_token: String,
            card_program_token: String,
            created: Time,
            funding: Lithic::NonPCICard::Funding,
            last_four: String,
            pin_status: Lithic::NonPCICard::PinStatus::TaggedSymbol,
            spend_limit: Integer,
            spend_limit_duration: Lithic::SpendLimitDuration::TaggedSymbol,
            state: Lithic::NonPCICard::State::TaggedSymbol,
            type: Lithic::NonPCICard::Type::TaggedSymbol,
            auth_rule_tokens: T::Array[String],
            cardholder_currency: String,
            digital_card_art_token: String,
            exp_month: String,
            exp_year: String,
            hostname: String,
            memo: String,
            pending_commands: T::Array[String],
            product_id: String,
            replacement_for: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Funding < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::NonPCICard::Funding, Lithic::Internal::AnyHash)
          end

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
        sig { returns(Lithic::NonPCICard::Funding::State::TaggedSymbol) }
        attr_accessor :state

        # Types of funding source: _ `DEPOSITORY_CHECKING` - Bank checking account. _
        # `DEPOSITORY_SAVINGS` - Bank savings account.
        sig { returns(Lithic::NonPCICard::Funding::Type::TaggedSymbol) }
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
            state: Lithic::NonPCICard::Funding::State::OrSymbol,
            type: Lithic::NonPCICard::Funding::Type::OrSymbol,
            account_name: String,
            nickname: String
          ).returns(T.attached_class)
        end
        def self.new(
          # A globally unique identifier for this FundingAccount.
          token:,
          # An RFC 3339 string representing when this funding source was added to the Lithic
          # account. This may be `null`. UTC time zone.
          created:,
          # The last 4 digits of the account (e.g. bank account, debit card) associated with
          # this FundingAccount. This may be null.
          last_four:,
          # State of funding source. Funding source states: _ `ENABLED` - The funding
          # account is available to use for card creation and transactions. _ `PENDING` -
          # The funding account is still being verified e.g. bank micro-deposits
          # verification. \* `DELETED` - The founding account has been deleted.
          state:,
          # Types of funding source: _ `DEPOSITORY_CHECKING` - Bank checking account. _
          # `DEPOSITORY_SAVINGS` - Bank savings account.
          type:,
          # Account name identifying the funding source. This may be `null`.
          account_name: nil,
          # The nickname given to the `FundingAccount` or `null` if it has no nickname.
          nickname: nil
        )
        end

        sig do
          override.returns(
            {
              token: String,
              created: Time,
              last_four: String,
              state: Lithic::NonPCICard::Funding::State::TaggedSymbol,
              type: Lithic::NonPCICard::Funding::Type::TaggedSymbol,
              account_name: String,
              nickname: String
            }
          )
        end
        def to_hash
        end

        # State of funding source. Funding source states: _ `ENABLED` - The funding
        # account is available to use for card creation and transactions. _ `PENDING` -
        # The funding account is still being verified e.g. bank micro-deposits
        # verification. \* `DELETED` - The founding account has been deleted.
        module State
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::NonPCICard::Funding::State) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DELETED =
            T.let(:DELETED, Lithic::NonPCICard::Funding::State::TaggedSymbol)
          ENABLED =
            T.let(:ENABLED, Lithic::NonPCICard::Funding::State::TaggedSymbol)
          PENDING =
            T.let(:PENDING, Lithic::NonPCICard::Funding::State::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Lithic::NonPCICard::Funding::State::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Types of funding source: _ `DEPOSITORY_CHECKING` - Bank checking account. _
        # `DEPOSITORY_SAVINGS` - Bank savings account.
        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::NonPCICard::Funding::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEPOSITORY_CHECKING =
            T.let(
              :DEPOSITORY_CHECKING,
              Lithic::NonPCICard::Funding::Type::TaggedSymbol
            )
          DEPOSITORY_SAVINGS =
            T.let(
              :DEPOSITORY_SAVINGS,
              Lithic::NonPCICard::Funding::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::NonPCICard::Funding::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      # Indicates if a card is blocked due a PIN status issue (e.g. excessive incorrect
      # attempts).
      module PinStatus
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::NonPCICard::PinStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OK = T.let(:OK, Lithic::NonPCICard::PinStatus::TaggedSymbol)
        BLOCKED = T.let(:BLOCKED, Lithic::NonPCICard::PinStatus::TaggedSymbol)
        NOT_SET = T.let(:NOT_SET, Lithic::NonPCICard::PinStatus::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::NonPCICard::PinStatus::TaggedSymbol]
          )
        end
        def self.values
        end
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

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::NonPCICard::State) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CLOSED = T.let(:CLOSED, Lithic::NonPCICard::State::TaggedSymbol)
        OPEN = T.let(:OPEN, Lithic::NonPCICard::State::TaggedSymbol)
        PAUSED = T.let(:PAUSED, Lithic::NonPCICard::State::TaggedSymbol)
        PENDING_ACTIVATION =
          T.let(:PENDING_ACTIVATION, Lithic::NonPCICard::State::TaggedSymbol)
        PENDING_FULFILLMENT =
          T.let(:PENDING_FULFILLMENT, Lithic::NonPCICard::State::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::NonPCICard::State::TaggedSymbol])
        end
        def self.values
        end
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

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::NonPCICard::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MERCHANT_LOCKED =
          T.let(:MERCHANT_LOCKED, Lithic::NonPCICard::Type::TaggedSymbol)
        PHYSICAL = T.let(:PHYSICAL, Lithic::NonPCICard::Type::TaggedSymbol)
        SINGLE_USE = T.let(:SINGLE_USE, Lithic::NonPCICard::Type::TaggedSymbol)
        VIRTUAL = T.let(:VIRTUAL, Lithic::NonPCICard::Type::TaggedSymbol)
        UNLOCKED = T.let(:UNLOCKED, Lithic::NonPCICard::Type::TaggedSymbol)
        DIGITAL_WALLET =
          T.let(:DIGITAL_WALLET, Lithic::NonPCICard::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::NonPCICard::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
