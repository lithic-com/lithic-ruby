# typed: strong

module Lithic
  module Models
    class CardCreateParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

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
      sig { returns(Lithic::Models::CardCreateParams::Type::OrSymbol) }
      def type
      end

      sig do
        params(_: Lithic::Models::CardCreateParams::Type::OrSymbol)
          .returns(Lithic::Models::CardCreateParams::Type::OrSymbol)
      end
      def type=(_)
      end

      # Globally unique identifier for the account that the card will be associated
      #   with. Required for programs enrolling users using the
      #   [/account_holders endpoint](https://docs.lithic.com/docs/account-holders-kyc).
      #   See [Managing Your Program](doc:managing-your-program) for more information.
      sig { returns(T.nilable(String)) }
      def account_token
      end

      sig { params(_: String).returns(String) }
      def account_token=(_)
      end

      # For card programs with more than one BIN range. This must be configured with
      #   Lithic before use. Identifies the card program/BIN range under which to create
      #   the card. If omitted, will utilize the program's default `card_program_token`.
      #   In Sandbox, use 00000000-0000-0000-1000-000000000000 and
      #   00000000-0000-0000-2000-000000000000 to test creating cards on specific card
      #   programs.
      sig { returns(T.nilable(String)) }
      def card_program_token
      end

      sig { params(_: String).returns(String) }
      def card_program_token=(_)
      end

      sig { returns(T.nilable(Lithic::Models::Carrier)) }
      def carrier
      end

      sig do
        params(_: T.any(Lithic::Models::Carrier, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::Carrier, Lithic::Util::AnyHash))
      end
      def carrier=(_)
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

      # Two digit (MM) expiry month. If neither `exp_month` nor `exp_year` is provided,
      #   an expiration date will be generated.
      sig { returns(T.nilable(String)) }
      def exp_month
      end

      sig { params(_: String).returns(String) }
      def exp_month=(_)
      end

      # Four digit (yyyy) expiry year. If neither `exp_month` nor `exp_year` is
      #   provided, an expiration date will be generated.
      sig { returns(T.nilable(String)) }
      def exp_year
      end

      sig { params(_: String).returns(String) }
      def exp_year=(_)
      end

      # Friendly name to identify the card.
      sig { returns(T.nilable(String)) }
      def memo
      end

      sig { params(_: String).returns(String) }
      def memo=(_)
      end

      # Encrypted PIN block (in base64). Applies to cards of type `PHYSICAL` and
      #   `VIRTUAL`. See
      #   [Encrypted PIN Block](https://docs.lithic.com/docs/cards#encrypted-pin-block).
      sig { returns(T.nilable(String)) }
      def pin
      end

      sig { params(_: String).returns(String) }
      def pin=(_)
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

      # Restricted field limited to select use cases. Lithic will reach out directly if
      #   this field should be used. Globally unique identifier for the replacement card's
      #   account. If this field is specified, `replacement_for` must also be specified.
      #   If `replacement_for` is specified and this field is omitted, the replacement
      #   card's account will be inferred from the card being replaced.
      sig { returns(T.nilable(String)) }
      def replacement_account_token
      end

      sig { params(_: String).returns(String) }
      def replacement_account_token=(_)
      end

      # Globally unique identifier for the card that this card will replace. If the card
      #   type is `PHYSICAL` it will be replaced by a `PHYSICAL` card. If the card type is
      #   `VIRTUAL` it will be replaced by a `VIRTUAL` card.
      sig { returns(T.nilable(String)) }
      def replacement_for
      end

      sig { params(_: String).returns(String) }
      def replacement_for=(_)
      end

      sig { returns(T.nilable(Lithic::Models::ShippingAddress)) }
      def shipping_address
      end

      sig do
        params(_: T.any(Lithic::Models::ShippingAddress, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::ShippingAddress, Lithic::Util::AnyHash))
      end
      def shipping_address=(_)
      end

      # Shipping method for the card. Only applies to cards of type PHYSICAL. Use of
      #   options besides `STANDARD` require additional permissions.
      #
      #   - `STANDARD` - USPS regular mail or similar international option, with no
      #     tracking
      #   - `STANDARD_WITH_TRACKING` - USPS regular mail or similar international option,
      #     with tracking
      #   - `PRIORITY` - USPS Priority, 1-3 day shipping, with tracking
      #   - `EXPRESS` - FedEx Express, 3-day shipping, with tracking
      #   - `2_DAY` - FedEx 2-day shipping, with tracking
      #   - `EXPEDITED` - FedEx Standard Overnight or similar international option, with
      #     tracking
      sig { returns(T.nilable(Lithic::Models::CardCreateParams::ShippingMethod::OrSymbol)) }
      def shipping_method
      end

      sig do
        params(_: Lithic::Models::CardCreateParams::ShippingMethod::OrSymbol)
          .returns(Lithic::Models::CardCreateParams::ShippingMethod::OrSymbol)
      end
      def shipping_method=(_)
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
      #   - `OPEN` - Card will approve authorizations (if they match card and account
      #     parameters).
      #   - `PAUSED` - Card will decline authorizations, but can be resumed at a later
      #     time.
      sig { returns(T.nilable(Lithic::Models::CardCreateParams::State::OrSymbol)) }
      def state
      end

      sig do
        params(_: Lithic::Models::CardCreateParams::State::OrSymbol)
          .returns(Lithic::Models::CardCreateParams::State::OrSymbol)
      end
      def state=(_)
      end

      sig do
        params(
          type: Lithic::Models::CardCreateParams::Type::OrSymbol,
          account_token: String,
          card_program_token: String,
          carrier: T.any(Lithic::Models::Carrier, Lithic::Util::AnyHash),
          digital_card_art_token: String,
          exp_month: String,
          exp_year: String,
          memo: String,
          pin: String,
          product_id: String,
          replacement_account_token: String,
          replacement_for: String,
          shipping_address: T.any(Lithic::Models::ShippingAddress, Lithic::Util::AnyHash),
          shipping_method: Lithic::Models::CardCreateParams::ShippingMethod::OrSymbol,
          spend_limit: Integer,
          spend_limit_duration: Lithic::Models::SpendLimitDuration::OrSymbol,
          state: Lithic::Models::CardCreateParams::State::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        type:,
        account_token: nil,
        card_program_token: nil,
        carrier: nil,
        digital_card_art_token: nil,
        exp_month: nil,
        exp_year: nil,
        memo: nil,
        pin: nil,
        product_id: nil,
        replacement_account_token: nil,
        replacement_for: nil,
        shipping_address: nil,
        shipping_method: nil,
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
              type: Lithic::Models::CardCreateParams::Type::OrSymbol,
              account_token: String,
              card_program_token: String,
              carrier: Lithic::Models::Carrier,
              digital_card_art_token: String,
              exp_month: String,
              exp_year: String,
              memo: String,
              pin: String,
              product_id: String,
              replacement_account_token: String,
              replacement_for: String,
              shipping_address: Lithic::Models::ShippingAddress,
              shipping_method: Lithic::Models::CardCreateParams::ShippingMethod::OrSymbol,
              spend_limit: Integer,
              spend_limit_duration: Lithic::Models::SpendLimitDuration::OrSymbol,
              state: Lithic::Models::CardCreateParams::State::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
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

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::CardCreateParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::CardCreateParams::Type::TaggedSymbol) }

        MERCHANT_LOCKED = T.let(:MERCHANT_LOCKED, Lithic::Models::CardCreateParams::Type::TaggedSymbol)
        PHYSICAL = T.let(:PHYSICAL, Lithic::Models::CardCreateParams::Type::TaggedSymbol)
        SINGLE_USE = T.let(:SINGLE_USE, Lithic::Models::CardCreateParams::Type::TaggedSymbol)
        VIRTUAL = T.let(:VIRTUAL, Lithic::Models::CardCreateParams::Type::TaggedSymbol)
        UNLOCKED = T.let(:UNLOCKED, Lithic::Models::CardCreateParams::Type::TaggedSymbol)
        DIGITAL_WALLET = T.let(:DIGITAL_WALLET, Lithic::Models::CardCreateParams::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::CardCreateParams::Type::TaggedSymbol]) }
          def values
          end
        end
      end

      # Shipping method for the card. Only applies to cards of type PHYSICAL. Use of
      #   options besides `STANDARD` require additional permissions.
      #
      #   - `STANDARD` - USPS regular mail or similar international option, with no
      #     tracking
      #   - `STANDARD_WITH_TRACKING` - USPS regular mail or similar international option,
      #     with tracking
      #   - `PRIORITY` - USPS Priority, 1-3 day shipping, with tracking
      #   - `EXPRESS` - FedEx Express, 3-day shipping, with tracking
      #   - `2_DAY` - FedEx 2-day shipping, with tracking
      #   - `EXPEDITED` - FedEx Standard Overnight or similar international option, with
      #     tracking
      module ShippingMethod
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::CardCreateParams::ShippingMethod) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::CardCreateParams::ShippingMethod::TaggedSymbol) }

        NUMBER_2_DAY = T.let(:"2_DAY", Lithic::Models::CardCreateParams::ShippingMethod::TaggedSymbol)
        EXPEDITED = T.let(:EXPEDITED, Lithic::Models::CardCreateParams::ShippingMethod::TaggedSymbol)
        EXPRESS = T.let(:EXPRESS, Lithic::Models::CardCreateParams::ShippingMethod::TaggedSymbol)
        PRIORITY = T.let(:PRIORITY, Lithic::Models::CardCreateParams::ShippingMethod::TaggedSymbol)
        STANDARD = T.let(:STANDARD, Lithic::Models::CardCreateParams::ShippingMethod::TaggedSymbol)
        STANDARD_WITH_TRACKING =
          T.let(:STANDARD_WITH_TRACKING, Lithic::Models::CardCreateParams::ShippingMethod::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::CardCreateParams::ShippingMethod::TaggedSymbol]) }
          def values
          end
        end
      end

      # Card state values:
      #
      #   - `OPEN` - Card will approve authorizations (if they match card and account
      #     parameters).
      #   - `PAUSED` - Card will decline authorizations, but can be resumed at a later
      #     time.
      module State
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::CardCreateParams::State) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::CardCreateParams::State::TaggedSymbol) }

        OPEN = T.let(:OPEN, Lithic::Models::CardCreateParams::State::TaggedSymbol)
        PAUSED = T.let(:PAUSED, Lithic::Models::CardCreateParams::State::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::CardCreateParams::State::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
