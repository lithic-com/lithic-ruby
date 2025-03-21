# frozen_string_literal: true

module Lithic
  module Models
    class CardCreateParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute type
      #   Card types:
      #
      #     - `VIRTUAL` - Card will authorize at any merchant and can be added to a digital
      #       wallet like Apple Pay or Google Pay (if the card program is digital
      #       wallet-enabled).
      #     - `PHYSICAL` - Manufactured and sent to the cardholder. We offer white label
      #       branding, credit, ATM, PIN debit, chip/EMV, NFC and magstripe functionality.
      #       Reach out at [lithic.com/contact](https://lithic.com/contact) for more
      #       information.
      #     - `SINGLE_USE` - Card is closed upon first successful authorization.
      #     - `MERCHANT_LOCKED` - _[Deprecated]_ Card is locked to the first merchant that
      #       successfully authorizes the card.
      #     - `UNLOCKED` - _[Deprecated]_ Similar behavior to VIRTUAL cards, please use
      #       VIRTUAL instead.
      #     - `DIGITAL_WALLET` - _[Deprecated]_ Similar behavior to VIRTUAL cards, please
      #       use VIRTUAL instead.
      #
      #   @return [Symbol, Lithic::Models::CardCreateParams::Type]
      required :type, enum: -> { Lithic::Models::CardCreateParams::Type }

      # @!attribute [r] account_token
      #   Globally unique identifier for the account that the card will be associated
      #     with. Required for programs enrolling users using the
      #     [/account_holders endpoint](https://docs.lithic.com/docs/account-holders-kyc).
      #     See [Managing Your Program](doc:managing-your-program) for more information.
      #
      #   @return [String, nil]
      optional :account_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_token

      # @!attribute [r] card_program_token
      #   For card programs with more than one BIN range. This must be configured with
      #     Lithic before use. Identifies the card program/BIN range under which to create
      #     the card. If omitted, will utilize the program's default `card_program_token`.
      #     In Sandbox, use 00000000-0000-0000-1000-000000000000 and
      #     00000000-0000-0000-2000-000000000000 to test creating cards on specific card
      #     programs.
      #
      #   @return [String, nil]
      optional :card_program_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :card_program_token

      # @!attribute [r] carrier
      #
      #   @return [Lithic::Models::Carrier, nil]
      optional :carrier, -> { Lithic::Models::Carrier }

      # @!parse
      #   # @return [Lithic::Models::Carrier]
      #   attr_writer :carrier

      # @!attribute [r] digital_card_art_token
      #   Specifies the digital card art to be displayed in the user’s digital wallet
      #     after tokenization. This artwork must be approved by Mastercard and configured
      #     by Lithic to use. See
      #     [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
      #
      #   @return [String, nil]
      optional :digital_card_art_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :digital_card_art_token

      # @!attribute [r] exp_month
      #   Two digit (MM) expiry month. If neither `exp_month` nor `exp_year` is provided,
      #     an expiration date will be generated.
      #
      #   @return [String, nil]
      optional :exp_month, String

      # @!parse
      #   # @return [String]
      #   attr_writer :exp_month

      # @!attribute [r] exp_year
      #   Four digit (yyyy) expiry year. If neither `exp_month` nor `exp_year` is
      #     provided, an expiration date will be generated.
      #
      #   @return [String, nil]
      optional :exp_year, String

      # @!parse
      #   # @return [String]
      #   attr_writer :exp_year

      # @!attribute [r] memo
      #   Friendly name to identify the card.
      #
      #   @return [String, nil]
      optional :memo, String

      # @!parse
      #   # @return [String]
      #   attr_writer :memo

      # @!attribute [r] pin
      #   Encrypted PIN block (in base64). Applies to cards of type `PHYSICAL` and
      #     `VIRTUAL`. See
      #     [Encrypted PIN Block](https://docs.lithic.com/docs/cards#encrypted-pin-block).
      #
      #   @return [String, nil]
      optional :pin, String

      # @!parse
      #   # @return [String]
      #   attr_writer :pin

      # @!attribute [r] product_id
      #   Only applicable to cards of type `PHYSICAL`. This must be configured with Lithic
      #     before use. Specifies the configuration (i.e., physical card art) that the card
      #     should be manufactured with.
      #
      #   @return [String, nil]
      optional :product_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :product_id

      # @!attribute [r] replacement_account_token
      #   Restricted field limited to select use cases. Lithic will reach out directly if
      #     this field should be used. Globally unique identifier for the replacement card's
      #     account. If this field is specified, `replacement_for` must also be specified.
      #     If `replacement_for` is specified and this field is omitted, the replacement
      #     card's account will be inferred from the card being replaced.
      #
      #   @return [String, nil]
      optional :replacement_account_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :replacement_account_token

      # @!attribute [r] replacement_for
      #   Globally unique identifier for the card that this card will replace. If the card
      #     type is `PHYSICAL` it will be replaced by a `PHYSICAL` card. If the card type is
      #     `VIRTUAL` it will be replaced by a `VIRTUAL` card.
      #
      #   @return [String, nil]
      optional :replacement_for, String

      # @!parse
      #   # @return [String]
      #   attr_writer :replacement_for

      # @!attribute [r] shipping_address
      #
      #   @return [Lithic::Models::ShippingAddress, nil]
      optional :shipping_address, -> { Lithic::Models::ShippingAddress }

      # @!parse
      #   # @return [Lithic::Models::ShippingAddress]
      #   attr_writer :shipping_address

      # @!attribute [r] shipping_method
      #   Shipping method for the card. Only applies to cards of type PHYSICAL. Use of
      #     options besides `STANDARD` require additional permissions.
      #
      #     - `STANDARD` - USPS regular mail or similar international option, with no
      #       tracking
      #     - `STANDARD_WITH_TRACKING` - USPS regular mail or similar international option,
      #       with tracking
      #     - `PRIORITY` - USPS Priority, 1-3 day shipping, with tracking
      #     - `EXPRESS` - FedEx Express, 3-day shipping, with tracking
      #     - `2_DAY` - FedEx 2-day shipping, with tracking
      #     - `EXPEDITED` - FedEx Standard Overnight or similar international option, with
      #       tracking
      #
      #   @return [Symbol, Lithic::Models::CardCreateParams::ShippingMethod, nil]
      optional :shipping_method, enum: -> { Lithic::Models::CardCreateParams::ShippingMethod }

      # @!parse
      #   # @return [Symbol, Lithic::Models::CardCreateParams::ShippingMethod]
      #   attr_writer :shipping_method

      # @!attribute [r] spend_limit
      #   Amount (in cents) to limit approved authorizations (e.g. 100000 would be a
      #     $1,000 limit). Transaction requests above the spend limit will be declined. Note
      #     that a spend limit of 0 is effectively no limit, and should only be used to
      #     reset or remove a prior limit. Only a limit of 1 or above will result in
      #     declined transactions due to checks against the card limit.
      #
      #   @return [Integer, nil]
      optional :spend_limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :spend_limit

      # @!attribute [r] spend_limit_duration
      #   Spend limit duration values:
      #
      #     - `ANNUALLY` - Card will authorize transactions up to spend limit for the
      #       trailing year.
      #     - `FOREVER` - Card will authorize only up to spend limit for the entire lifetime
      #       of the card.
      #     - `MONTHLY` - Card will authorize transactions up to spend limit for the
      #       trailing month. To support recurring monthly payments, which can occur on
      #       different day every month, the time window we consider for monthly velocity
      #       starts 6 days after the current calendar date one month prior.
      #     - `TRANSACTION` - Card will authorize multiple transactions if each individual
      #       transaction is under the spend limit.
      #
      #   @return [Symbol, Lithic::Models::SpendLimitDuration, nil]
      optional :spend_limit_duration, enum: -> { Lithic::Models::SpendLimitDuration }

      # @!parse
      #   # @return [Symbol, Lithic::Models::SpendLimitDuration]
      #   attr_writer :spend_limit_duration

      # @!attribute [r] state
      #   Card state values:
      #
      #     - `OPEN` - Card will approve authorizations (if they match card and account
      #       parameters).
      #     - `PAUSED` - Card will decline authorizations, but can be resumed at a later
      #       time.
      #
      #   @return [Symbol, Lithic::Models::CardCreateParams::State, nil]
      optional :state, enum: -> { Lithic::Models::CardCreateParams::State }

      # @!parse
      #   # @return [Symbol, Lithic::Models::CardCreateParams::State]
      #   attr_writer :state

      # @!parse
      #   # @param type [Symbol, Lithic::Models::CardCreateParams::Type]
      #   # @param account_token [String]
      #   # @param card_program_token [String]
      #   # @param carrier [Lithic::Models::Carrier]
      #   # @param digital_card_art_token [String]
      #   # @param exp_month [String]
      #   # @param exp_year [String]
      #   # @param memo [String]
      #   # @param pin [String]
      #   # @param product_id [String]
      #   # @param replacement_account_token [String]
      #   # @param replacement_for [String]
      #   # @param shipping_address [Lithic::Models::ShippingAddress]
      #   # @param shipping_method [Symbol, Lithic::Models::CardCreateParams::ShippingMethod]
      #   # @param spend_limit [Integer]
      #   # @param spend_limit_duration [Symbol, Lithic::Models::SpendLimitDuration]
      #   # @param state [Symbol, Lithic::Models::CardCreateParams::State]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     type:,
      #     account_token: nil,
      #     card_program_token: nil,
      #     carrier: nil,
      #     digital_card_art_token: nil,
      #     exp_month: nil,
      #     exp_year: nil,
      #     memo: nil,
      #     pin: nil,
      #     product_id: nil,
      #     replacement_account_token: nil,
      #     replacement_for: nil,
      #     shipping_address: nil,
      #     shipping_method: nil,
      #     spend_limit: nil,
      #     spend_limit_duration: nil,
      #     state: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

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

        MERCHANT_LOCKED = :MERCHANT_LOCKED
        PHYSICAL = :PHYSICAL
        SINGLE_USE = :SINGLE_USE
        VIRTUAL = :VIRTUAL
        UNLOCKED = :UNLOCKED
        DIGITAL_WALLET = :DIGITAL_WALLET

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
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

        NUMBER_2_DAY = :"2_DAY"
        EXPEDITED = :EXPEDITED
        EXPRESS = :EXPRESS
        PRIORITY = :PRIORITY
        STANDARD = :STANDARD
        STANDARD_WITH_TRACKING = :STANDARD_WITH_TRACKING

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # Card state values:
      #
      #   - `OPEN` - Card will approve authorizations (if they match card and account
      #     parameters).
      #   - `PAUSED` - Card will decline authorizations, but can be resumed at a later
      #     time.
      module State
        extend Lithic::Enum

        OPEN = :OPEN
        PAUSED = :PAUSED

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
