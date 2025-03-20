# typed: strong

module Lithic
  module Models
    class Card < Lithic::BaseModel
      # Globally unique identifier.
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # Globally unique identifier for the account to which the card belongs.
      sig { returns(String) }
      def account_token
      end

      sig { params(_: String).returns(String) }
      def account_token=(_)
      end

      # Globally unique identifier for the card program on which the card exists.
      sig { returns(String) }
      def card_program_token
      end

      sig { params(_: String).returns(String) }
      def card_program_token=(_)
      end

      # An RFC 3339 timestamp for when the card was created. UTC time zone.
      sig { returns(Time) }
      def created
      end

      sig { params(_: Time).returns(Time) }
      def created=(_)
      end

      # Deprecated: Funding account for the card.
      sig { returns(Lithic::Models::Card::Funding) }
      def funding
      end

      sig do
        params(_: T.any(Lithic::Models::Card::Funding, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::Card::Funding, Lithic::Util::AnyHash))
      end
      def funding=(_)
      end

      # Last four digits of the card number.
      sig { returns(String) }
      def last_four
      end

      sig { params(_: String).returns(String) }
      def last_four=(_)
      end

      # Indicates if a card is blocked due a PIN status issue (e.g. excessive incorrect
      #   attempts).
      sig { returns(Lithic::Models::Card::PinStatus::TaggedSymbol) }
      def pin_status
      end

      sig do
        params(_: Lithic::Models::Card::PinStatus::TaggedSymbol)
          .returns(Lithic::Models::Card::PinStatus::TaggedSymbol)
      end
      def pin_status=(_)
      end

      # Amount (in cents) to limit approved authorizations (e.g. 100000 would be a
      #   $1,000 limit). Transaction requests above the spend limit will be declined.
      sig { returns(Integer) }
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
      sig { returns(Lithic::Models::SpendLimitDuration::TaggedSymbol) }
      def spend_limit_duration
      end

      sig do
        params(_: Lithic::Models::SpendLimitDuration::TaggedSymbol)
          .returns(Lithic::Models::SpendLimitDuration::TaggedSymbol)
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
      #   - `PENDING_FULFILLMENT` - The initial state for cards of type `PHYSICAL`. The
      #     card is provisioned pending manufacturing and fulfillment. Cards in this state
      #     can accept authorizations for e-commerce purchases, but not for "Card Present"
      #     purchases where the physical card itself is present.
      #   - `PENDING_ACTIVATION` - At regular intervals, cards of type `PHYSICAL` in state
      #     `PENDING_FULFILLMENT` are sent to the card production warehouse and updated to
      #     state `PENDING_ACTIVATION` . Similar to `PENDING_FULFILLMENT`, cards in this
      #     state can be used for e-commerce transactions or can be added to mobile
      #     wallets. API clients should update the card's state to `OPEN` only after the
      #     cardholder confirms receipt of the card.
      #
      #   In sandbox, the same daily batch fulfillment occurs, but no cards are actually
      #   manufactured.
      sig { returns(Lithic::Models::Card::State::TaggedSymbol) }
      def state
      end

      sig { params(_: Lithic::Models::Card::State::TaggedSymbol).returns(Lithic::Models::Card::State::TaggedSymbol) }
      def state=(_)
      end

      # Card types:
      #
      #   - `VIRTUAL` - Card will authorize at any merchant and can be added to a digital
      #     wallet like Apple Pay or Google Pay (if the card program is digital
      #     wallet-enabled).
      #   - `PHYSICAL` - Manufactured and sent to the cardholder. We offer white label
      #     branding, credit, ATM, PIN debit, chip/EMV, NFC and magstripe functionality.
      #     Reach out at [lithic.com/contact](https://lithic.com/contact) for more
      #     information.
      #   - `SINGLE_USE` - Card is closed upon first successful authorization.
      #   - `MERCHANT_LOCKED` - _[Deprecated]_ Card is locked to the first merchant that
      #     successfully authorizes the card.
      #   - `UNLOCKED` - _[Deprecated]_ Similar behavior to VIRTUAL cards, please use
      #     VIRTUAL instead.
      #   - `DIGITAL_WALLET` - _[Deprecated]_ Similar behavior to VIRTUAL cards, please
      #     use VIRTUAL instead.
      sig { returns(Lithic::Models::Card::Type::TaggedSymbol) }
      def type
      end

      sig { params(_: Lithic::Models::Card::Type::TaggedSymbol).returns(Lithic::Models::Card::Type::TaggedSymbol) }
      def type=(_)
      end

      # List of identifiers for the Auth Rule(s) that are applied on the card. This
      #   field is deprecated and will no longer be populated in the `Card` object. The
      #   key will be removed from the schema in a future release. Use the `/auth_rules`
      #   endpoints to fetch Auth Rule information instead.
      sig { returns(T.nilable(T::Array[String])) }
      def auth_rule_tokens
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def auth_rule_tokens=(_)
      end

      # 3-character alphabetic ISO 4217 code for the currency of the cardholder.
      sig { returns(T.nilable(String)) }
      def cardholder_currency
      end

      sig { params(_: String).returns(String) }
      def cardholder_currency=(_)
      end

      # Three digit cvv printed on the back of the card.
      sig { returns(T.nilable(String)) }
      def cvv
      end

      sig { params(_: String).returns(String) }
      def cvv=(_)
      end

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

      # Two digit (MM) expiry month.
      sig { returns(T.nilable(String)) }
      def exp_month
      end

      sig { params(_: String).returns(String) }
      def exp_month=(_)
      end

      # Four digit (yyyy) expiry year.
      sig { returns(T.nilable(String)) }
      def exp_year
      end

      sig { params(_: String).returns(String) }
      def exp_year=(_)
      end

      # Hostname of card’s locked merchant (will be empty if not applicable).
      sig { returns(T.nilable(String)) }
      def hostname
      end

      sig { params(_: String).returns(String) }
      def hostname=(_)
      end

      # Friendly name to identify the card.
      sig { returns(T.nilable(String)) }
      def memo
      end

      sig { params(_: String).returns(String) }
      def memo=(_)
      end

      # Primary Account Number (PAN) (i.e. the card number). Customers must be PCI
      #   compliant to have PAN returned as a field in production. Please contact
      #   [support@lithic.com](mailto:support@lithic.com) for questions.
      sig { returns(T.nilable(String)) }
      def pan
      end

      sig { params(_: String).returns(String) }
      def pan=(_)
      end

      # Indicates if there are offline PIN changes pending card interaction with an
      #   offline PIN terminal. Possible commands are: CHANGE_PIN, UNBLOCK_PIN. Applicable
      #   only to cards issued in markets supporting offline PINs.
      sig { returns(T.nilable(T::Array[String])) }
      def pending_commands
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def pending_commands=(_)
      end

      # Only applicable to cards of type `PHYSICAL`. This must be configured with Lithic
      #   before use. Specifies the configuration (i.e., physical card art) that the card
      #   should be manufactured with.
      sig { returns(T.nilable(String)) }
      def product_id
      end

      sig { params(_: String).returns(String) }
      def product_id=(_)
      end

      # If the card is a replacement for another card, the globally unique identifier
      #   for the card that was replaced.
      sig { returns(T.nilable(String)) }
      def replacement_for
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def replacement_for=(_)
      end

      sig do
        params(
          token: String,
          account_token: String,
          card_program_token: String,
          created: Time,
          funding: Lithic::Models::Card::Funding,
          last_four: String,
          pin_status: Lithic::Models::Card::PinStatus::TaggedSymbol,
          spend_limit: Integer,
          spend_limit_duration: Lithic::Models::SpendLimitDuration::TaggedSymbol,
          state: Lithic::Models::Card::State::TaggedSymbol,
          type: Lithic::Models::Card::Type::TaggedSymbol,
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
      )
      end

      sig do
        override
          .returns(
            {
              token: String,
              account_token: String,
              card_program_token: String,
              created: Time,
              funding: Lithic::Models::Card::Funding,
              last_four: String,
              pin_status: Lithic::Models::Card::PinStatus::TaggedSymbol,
              spend_limit: Integer,
              spend_limit_duration: Lithic::Models::SpendLimitDuration::TaggedSymbol,
              state: Lithic::Models::Card::State::TaggedSymbol,
              type: Lithic::Models::Card::Type::TaggedSymbol,
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
      def to_hash
      end

      class Funding < Lithic::BaseModel
        # A globally unique identifier for this FundingAccount.
        sig { returns(String) }
        def token
        end

        sig { params(_: String).returns(String) }
        def token=(_)
        end

        # An RFC 3339 string representing when this funding source was added to the Lithic
        #   account. This may be `null`. UTC time zone.
        sig { returns(Time) }
        def created
        end

        sig { params(_: Time).returns(Time) }
        def created=(_)
        end

        # The last 4 digits of the account (e.g. bank account, debit card) associated with
        #   this FundingAccount. This may be null.
        sig { returns(String) }
        def last_four
        end

        sig { params(_: String).returns(String) }
        def last_four=(_)
        end

        # State of funding source.
        #
        #   Funding source states:
        #
        #   - `ENABLED` - The funding account is available to use for card creation and
        #     transactions.
        #   - `PENDING` - The funding account is still being verified e.g. bank
        #     micro-deposits verification.
        #   - `DELETED` - The founding account has been deleted.
        sig { returns(Lithic::Models::Card::Funding::State::TaggedSymbol) }
        def state
        end

        sig do
          params(_: Lithic::Models::Card::Funding::State::TaggedSymbol)
            .returns(Lithic::Models::Card::Funding::State::TaggedSymbol)
        end
        def state=(_)
        end

        # Types of funding source:
        #
        #   - `DEPOSITORY_CHECKING` - Bank checking account.
        #   - `DEPOSITORY_SAVINGS` - Bank savings account.
        sig { returns(Lithic::Models::Card::Funding::Type::TaggedSymbol) }
        def type
        end

        sig do
          params(_: Lithic::Models::Card::Funding::Type::TaggedSymbol)
            .returns(Lithic::Models::Card::Funding::Type::TaggedSymbol)
        end
        def type=(_)
        end

        # Account name identifying the funding source. This may be `null`.
        sig { returns(T.nilable(String)) }
        def account_name
        end

        sig { params(_: String).returns(String) }
        def account_name=(_)
        end

        # The nickname given to the `FundingAccount` or `null` if it has no nickname.
        sig { returns(T.nilable(String)) }
        def nickname
        end

        sig { params(_: String).returns(String) }
        def nickname=(_)
        end

        # Deprecated: Funding account for the card.
        sig do
          params(
            token: String,
            created: Time,
            last_four: String,
            state: Lithic::Models::Card::Funding::State::TaggedSymbol,
            type: Lithic::Models::Card::Funding::Type::TaggedSymbol,
            account_name: String,
            nickname: String
          )
            .returns(T.attached_class)
        end
        def self.new(token:, created:, last_four:, state:, type:, account_name: nil, nickname: nil)
        end

        sig do
          override
            .returns(
              {
                token: String,
                created: Time,
                last_four: String,
                state: Lithic::Models::Card::Funding::State::TaggedSymbol,
                type: Lithic::Models::Card::Funding::Type::TaggedSymbol,
                account_name: String,
                nickname: String
              }
            )
        end
        def to_hash
        end

        # State of funding source.
        #
        #   Funding source states:
        #
        #   - `ENABLED` - The funding account is available to use for card creation and
        #     transactions.
        #   - `PENDING` - The funding account is still being verified e.g. bank
        #     micro-deposits verification.
        #   - `DELETED` - The founding account has been deleted.
        module State
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Card::Funding::State) }
          OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Card::Funding::State::TaggedSymbol) }

          DELETED = T.let(:DELETED, Lithic::Models::Card::Funding::State::TaggedSymbol)
          ENABLED = T.let(:ENABLED, Lithic::Models::Card::Funding::State::TaggedSymbol)
          PENDING = T.let(:PENDING, Lithic::Models::Card::Funding::State::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Lithic::Models::Card::Funding::State::TaggedSymbol]) }
            def values
            end
          end
        end

        # Types of funding source:
        #
        #   - `DEPOSITORY_CHECKING` - Bank checking account.
        #   - `DEPOSITORY_SAVINGS` - Bank savings account.
        module Type
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Card::Funding::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Card::Funding::Type::TaggedSymbol) }

          DEPOSITORY_CHECKING = T.let(:DEPOSITORY_CHECKING, Lithic::Models::Card::Funding::Type::TaggedSymbol)
          DEPOSITORY_SAVINGS = T.let(:DEPOSITORY_SAVINGS, Lithic::Models::Card::Funding::Type::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Lithic::Models::Card::Funding::Type::TaggedSymbol]) }
            def values
            end
          end
        end
      end

      # Indicates if a card is blocked due a PIN status issue (e.g. excessive incorrect
      #   attempts).
      module PinStatus
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Card::PinStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Card::PinStatus::TaggedSymbol) }

        OK = T.let(:OK, Lithic::Models::Card::PinStatus::TaggedSymbol)
        BLOCKED = T.let(:BLOCKED, Lithic::Models::Card::PinStatus::TaggedSymbol)
        NOT_SET = T.let(:NOT_SET, Lithic::Models::Card::PinStatus::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::Card::PinStatus::TaggedSymbol]) }
          def values
          end
        end
      end

      # Card state values:
      #
      #   - `CLOSED` - Card will no longer approve authorizations. Closing a card cannot
      #     be undone.
      #   - `OPEN` - Card will approve authorizations (if they match card and account
      #     parameters).
      #   - `PAUSED` - Card will decline authorizations, but can be resumed at a later
      #     time.
      #   - `PENDING_FULFILLMENT` - The initial state for cards of type `PHYSICAL`. The
      #     card is provisioned pending manufacturing and fulfillment. Cards in this state
      #     can accept authorizations for e-commerce purchases, but not for "Card Present"
      #     purchases where the physical card itself is present.
      #   - `PENDING_ACTIVATION` - At regular intervals, cards of type `PHYSICAL` in state
      #     `PENDING_FULFILLMENT` are sent to the card production warehouse and updated to
      #     state `PENDING_ACTIVATION` . Similar to `PENDING_FULFILLMENT`, cards in this
      #     state can be used for e-commerce transactions or can be added to mobile
      #     wallets. API clients should update the card's state to `OPEN` only after the
      #     cardholder confirms receipt of the card.
      #
      #   In sandbox, the same daily batch fulfillment occurs, but no cards are actually
      #   manufactured.
      module State
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Card::State) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Card::State::TaggedSymbol) }

        CLOSED = T.let(:CLOSED, Lithic::Models::Card::State::TaggedSymbol)
        OPEN = T.let(:OPEN, Lithic::Models::Card::State::TaggedSymbol)
        PAUSED = T.let(:PAUSED, Lithic::Models::Card::State::TaggedSymbol)
        PENDING_ACTIVATION = T.let(:PENDING_ACTIVATION, Lithic::Models::Card::State::TaggedSymbol)
        PENDING_FULFILLMENT = T.let(:PENDING_FULFILLMENT, Lithic::Models::Card::State::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::Card::State::TaggedSymbol]) }
          def values
          end
        end
      end

      # Card types:
      #
      #   - `VIRTUAL` - Card will authorize at any merchant and can be added to a digital
      #     wallet like Apple Pay or Google Pay (if the card program is digital
      #     wallet-enabled).
      #   - `PHYSICAL` - Manufactured and sent to the cardholder. We offer white label
      #     branding, credit, ATM, PIN debit, chip/EMV, NFC and magstripe functionality.
      #     Reach out at [lithic.com/contact](https://lithic.com/contact) for more
      #     information.
      #   - `SINGLE_USE` - Card is closed upon first successful authorization.
      #   - `MERCHANT_LOCKED` - _[Deprecated]_ Card is locked to the first merchant that
      #     successfully authorizes the card.
      #   - `UNLOCKED` - _[Deprecated]_ Similar behavior to VIRTUAL cards, please use
      #     VIRTUAL instead.
      #   - `DIGITAL_WALLET` - _[Deprecated]_ Similar behavior to VIRTUAL cards, please
      #     use VIRTUAL instead.
      module Type
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Card::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Card::Type::TaggedSymbol) }

        MERCHANT_LOCKED = T.let(:MERCHANT_LOCKED, Lithic::Models::Card::Type::TaggedSymbol)
        PHYSICAL = T.let(:PHYSICAL, Lithic::Models::Card::Type::TaggedSymbol)
        SINGLE_USE = T.let(:SINGLE_USE, Lithic::Models::Card::Type::TaggedSymbol)
        VIRTUAL = T.let(:VIRTUAL, Lithic::Models::Card::Type::TaggedSymbol)
        UNLOCKED = T.let(:UNLOCKED, Lithic::Models::Card::Type::TaggedSymbol)
        DIGITAL_WALLET = T.let(:DIGITAL_WALLET, Lithic::Models::Card::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::Card::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
