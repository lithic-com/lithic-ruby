# typed: strong

module Lithic
  module Models
    class CardCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::CardCreateParams, Lithic::Internal::AnyHash)
        end

      # Card types:
      #
      # - `VIRTUAL` - Card will authorize at any merchant and can be added to a digital
      #   wallet like Apple Pay or Google Pay (if the card program is digital
      #   wallet-enabled).
      # - `PHYSICAL` - Manufactured and sent to the cardholder. We offer white label
      #   branding, credit, ATM, PIN debit, chip/EMV, NFC and magstripe functionality.
      #   Reach out at [lithic.com/contact](https://lithic.com/contact) for more
      #   information.
      # - `SINGLE_USE` - Card is closed upon first successful authorization.
      # - `MERCHANT_LOCKED` - _[Deprecated]_ Card is locked to the first merchant that
      #   successfully authorizes the card.
      # - `UNLOCKED` - _[Deprecated]_ Similar behavior to VIRTUAL cards, please use
      #   VIRTUAL instead.
      # - `DIGITAL_WALLET` - _[Deprecated]_ Similar behavior to VIRTUAL cards, please
      #   use VIRTUAL instead.
      sig { returns(Lithic::CardCreateParams::Type::OrSymbol) }
      attr_accessor :type

      # Globally unique identifier for the account that the card will be associated
      # with. Required for programs enrolling users using the
      # [/account_holders endpoint](https://docs.lithic.com/docs/account-holders-kyc).
      # See [Managing Your Program](doc:managing-your-program) for more information.
      sig { returns(T.nilable(String)) }
      attr_reader :account_token

      sig { params(account_token: String).void }
      attr_writer :account_token

      # For card programs with more than one BIN range. This must be configured with
      # Lithic before use. Identifies the card program/BIN range under which to create
      # the card. If omitted, will utilize the program's default `card_program_token`.
      # In Sandbox, use 00000000-0000-0000-1000-000000000000 and
      # 00000000-0000-0000-2000-000000000000 to test creating cards on specific card
      # programs.
      sig { returns(T.nilable(String)) }
      attr_reader :card_program_token

      sig { params(card_program_token: String).void }
      attr_writer :card_program_token

      sig { returns(T.nilable(Lithic::Carrier)) }
      attr_reader :carrier

      sig { params(carrier: Lithic::Carrier::OrHash).void }
      attr_writer :carrier

      # Specifies the digital card art to be displayed in the user’s digital wallet
      # after tokenization. This artwork must be approved by Mastercard and configured
      # by Lithic to use. See
      # [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
      sig { returns(T.nilable(String)) }
      attr_reader :digital_card_art_token

      sig { params(digital_card_art_token: String).void }
      attr_writer :digital_card_art_token

      # Two digit (MM) expiry month. If neither `exp_month` nor `exp_year` is provided,
      # an expiration date will be generated.
      sig { returns(T.nilable(String)) }
      attr_reader :exp_month

      sig { params(exp_month: String).void }
      attr_writer :exp_month

      # Four digit (yyyy) expiry year. If neither `exp_month` nor `exp_year` is
      # provided, an expiration date will be generated.
      sig { returns(T.nilable(String)) }
      attr_reader :exp_year

      sig { params(exp_year: String).void }
      attr_writer :exp_year

      # Friendly name to identify the card.
      sig { returns(T.nilable(String)) }
      attr_reader :memo

      sig { params(memo: String).void }
      attr_writer :memo

      # Encrypted PIN block (in base64). Applies to cards of type `PHYSICAL` and
      # `VIRTUAL`. See
      # [Encrypted PIN Block](https://docs.lithic.com/docs/cards#encrypted-pin-block).
      sig { returns(T.nilable(String)) }
      attr_reader :pin

      sig { params(pin: String).void }
      attr_writer :pin

      # Only applicable to cards of type `PHYSICAL`. This must be configured with Lithic
      # before use. Specifies the configuration (i.e., physical card art) that the card
      # should be manufactured with.
      sig { returns(T.nilable(String)) }
      attr_reader :product_id

      sig { params(product_id: String).void }
      attr_writer :product_id

      # Restricted field limited to select use cases. Lithic will reach out directly if
      # this field should be used. Globally unique identifier for the replacement card's
      # account. If this field is specified, `replacement_for` must also be specified.
      # If `replacement_for` is specified and this field is omitted, the replacement
      # card's account will be inferred from the card being replaced.
      sig { returns(T.nilable(String)) }
      attr_reader :replacement_account_token

      sig { params(replacement_account_token: String).void }
      attr_writer :replacement_account_token

      # Additional context or information related to the card that this card will
      # replace.
      sig { returns(T.nilable(String)) }
      attr_reader :replacement_comment

      sig { params(replacement_comment: String).void }
      attr_writer :replacement_comment

      # Globally unique identifier for the card that this card will replace. If the card
      # type is `PHYSICAL` it will be replaced by a `PHYSICAL` card. If the card type is
      # `VIRTUAL` it will be replaced by a `VIRTUAL` card.
      sig { returns(T.nilable(String)) }
      attr_reader :replacement_for

      sig { params(replacement_for: String).void }
      attr_writer :replacement_for

      # Card state substatus values for the card that this card will replace:
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
      sig do
        returns(
          T.nilable(Lithic::CardCreateParams::ReplacementSubstatus::OrSymbol)
        )
      end
      attr_reader :replacement_substatus

      sig do
        params(
          replacement_substatus:
            Lithic::CardCreateParams::ReplacementSubstatus::OrSymbol
        ).void
      end
      attr_writer :replacement_substatus

      sig { returns(T.nilable(Lithic::ShippingAddress)) }
      attr_reader :shipping_address

      sig { params(shipping_address: Lithic::ShippingAddress::OrHash).void }
      attr_writer :shipping_address

      # Shipping method for the card. Only applies to cards of type PHYSICAL. Use of
      # options besides `STANDARD` require additional permissions.
      #
      # - `STANDARD` - USPS regular mail or similar international option, with no
      #   tracking
      # - `STANDARD_WITH_TRACKING` - USPS regular mail or similar international option,
      #   with tracking
      # - `PRIORITY` - USPS Priority, 1-3 day shipping, with tracking
      # - `EXPRESS` - FedEx or UPS depending on card manufacturer, Express, 3-day
      #   shipping, with tracking
      # - `2_DAY` - FedEx or UPS depending on card manufacturer, 2-day shipping, with
      #   tracking
      # - `EXPEDITED` - FedEx or UPS depending on card manufacturer, Standard Overnight
      #   or similar international option, with tracking
      sig do
        returns(T.nilable(Lithic::CardCreateParams::ShippingMethod::OrSymbol))
      end
      attr_reader :shipping_method

      sig do
        params(
          shipping_method: Lithic::CardCreateParams::ShippingMethod::OrSymbol
        ).void
      end
      attr_writer :shipping_method

      # Amount (in cents) to limit approved authorizations (e.g. 100000 would be a
      # $1,000 limit). Transaction requests above the spend limit will be declined. Note
      # that a spend limit of 0 is effectively no limit, and should only be used to
      # reset or remove a prior limit. Only a limit of 1 or above will result in
      # declined transactions due to checks against the card limit.
      sig { returns(T.nilable(Integer)) }
      attr_reader :spend_limit

      sig { params(spend_limit: Integer).void }
      attr_writer :spend_limit

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
      sig { returns(T.nilable(Lithic::SpendLimitDuration::OrSymbol)) }
      attr_reader :spend_limit_duration

      sig do
        params(spend_limit_duration: Lithic::SpendLimitDuration::OrSymbol).void
      end
      attr_writer :spend_limit_duration

      # Card state values:
      #
      # - `OPEN` - Card will approve authorizations (if they match card and account
      #   parameters).
      # - `PAUSED` - Card will decline authorizations, but can be resumed at a later
      #   time.
      sig { returns(T.nilable(Lithic::CardCreateParams::State::OrSymbol)) }
      attr_reader :state

      sig { params(state: Lithic::CardCreateParams::State::OrSymbol).void }
      attr_writer :state

      sig do
        params(
          type: Lithic::CardCreateParams::Type::OrSymbol,
          account_token: String,
          card_program_token: String,
          carrier: Lithic::Carrier::OrHash,
          digital_card_art_token: String,
          exp_month: String,
          exp_year: String,
          memo: String,
          pin: String,
          product_id: String,
          replacement_account_token: String,
          replacement_comment: String,
          replacement_for: String,
          replacement_substatus:
            Lithic::CardCreateParams::ReplacementSubstatus::OrSymbol,
          shipping_address: Lithic::ShippingAddress::OrHash,
          shipping_method: Lithic::CardCreateParams::ShippingMethod::OrSymbol,
          spend_limit: Integer,
          spend_limit_duration: Lithic::SpendLimitDuration::OrSymbol,
          state: Lithic::CardCreateParams::State::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Card types:
        #
        # - `VIRTUAL` - Card will authorize at any merchant and can be added to a digital
        #   wallet like Apple Pay or Google Pay (if the card program is digital
        #   wallet-enabled).
        # - `PHYSICAL` - Manufactured and sent to the cardholder. We offer white label
        #   branding, credit, ATM, PIN debit, chip/EMV, NFC and magstripe functionality.
        #   Reach out at [lithic.com/contact](https://lithic.com/contact) for more
        #   information.
        # - `SINGLE_USE` - Card is closed upon first successful authorization.
        # - `MERCHANT_LOCKED` - _[Deprecated]_ Card is locked to the first merchant that
        #   successfully authorizes the card.
        # - `UNLOCKED` - _[Deprecated]_ Similar behavior to VIRTUAL cards, please use
        #   VIRTUAL instead.
        # - `DIGITAL_WALLET` - _[Deprecated]_ Similar behavior to VIRTUAL cards, please
        #   use VIRTUAL instead.
        type:,
        # Globally unique identifier for the account that the card will be associated
        # with. Required for programs enrolling users using the
        # [/account_holders endpoint](https://docs.lithic.com/docs/account-holders-kyc).
        # See [Managing Your Program](doc:managing-your-program) for more information.
        account_token: nil,
        # For card programs with more than one BIN range. This must be configured with
        # Lithic before use. Identifies the card program/BIN range under which to create
        # the card. If omitted, will utilize the program's default `card_program_token`.
        # In Sandbox, use 00000000-0000-0000-1000-000000000000 and
        # 00000000-0000-0000-2000-000000000000 to test creating cards on specific card
        # programs.
        card_program_token: nil,
        carrier: nil,
        # Specifies the digital card art to be displayed in the user’s digital wallet
        # after tokenization. This artwork must be approved by Mastercard and configured
        # by Lithic to use. See
        # [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
        digital_card_art_token: nil,
        # Two digit (MM) expiry month. If neither `exp_month` nor `exp_year` is provided,
        # an expiration date will be generated.
        exp_month: nil,
        # Four digit (yyyy) expiry year. If neither `exp_month` nor `exp_year` is
        # provided, an expiration date will be generated.
        exp_year: nil,
        # Friendly name to identify the card.
        memo: nil,
        # Encrypted PIN block (in base64). Applies to cards of type `PHYSICAL` and
        # `VIRTUAL`. See
        # [Encrypted PIN Block](https://docs.lithic.com/docs/cards#encrypted-pin-block).
        pin: nil,
        # Only applicable to cards of type `PHYSICAL`. This must be configured with Lithic
        # before use. Specifies the configuration (i.e., physical card art) that the card
        # should be manufactured with.
        product_id: nil,
        # Restricted field limited to select use cases. Lithic will reach out directly if
        # this field should be used. Globally unique identifier for the replacement card's
        # account. If this field is specified, `replacement_for` must also be specified.
        # If `replacement_for` is specified and this field is omitted, the replacement
        # card's account will be inferred from the card being replaced.
        replacement_account_token: nil,
        # Additional context or information related to the card that this card will
        # replace.
        replacement_comment: nil,
        # Globally unique identifier for the card that this card will replace. If the card
        # type is `PHYSICAL` it will be replaced by a `PHYSICAL` card. If the card type is
        # `VIRTUAL` it will be replaced by a `VIRTUAL` card.
        replacement_for: nil,
        # Card state substatus values for the card that this card will replace:
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
        replacement_substatus: nil,
        shipping_address: nil,
        # Shipping method for the card. Only applies to cards of type PHYSICAL. Use of
        # options besides `STANDARD` require additional permissions.
        #
        # - `STANDARD` - USPS regular mail or similar international option, with no
        #   tracking
        # - `STANDARD_WITH_TRACKING` - USPS regular mail or similar international option,
        #   with tracking
        # - `PRIORITY` - USPS Priority, 1-3 day shipping, with tracking
        # - `EXPRESS` - FedEx or UPS depending on card manufacturer, Express, 3-day
        #   shipping, with tracking
        # - `2_DAY` - FedEx or UPS depending on card manufacturer, 2-day shipping, with
        #   tracking
        # - `EXPEDITED` - FedEx or UPS depending on card manufacturer, Standard Overnight
        #   or similar international option, with tracking
        shipping_method: nil,
        # Amount (in cents) to limit approved authorizations (e.g. 100000 would be a
        # $1,000 limit). Transaction requests above the spend limit will be declined. Note
        # that a spend limit of 0 is effectively no limit, and should only be used to
        # reset or remove a prior limit. Only a limit of 1 or above will result in
        # declined transactions due to checks against the card limit.
        spend_limit: nil,
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
        spend_limit_duration: nil,
        # Card state values:
        #
        # - `OPEN` - Card will approve authorizations (if they match card and account
        #   parameters).
        # - `PAUSED` - Card will decline authorizations, but can be resumed at a later
        #   time.
        state: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            type: Lithic::CardCreateParams::Type::OrSymbol,
            account_token: String,
            card_program_token: String,
            carrier: Lithic::Carrier,
            digital_card_art_token: String,
            exp_month: String,
            exp_year: String,
            memo: String,
            pin: String,
            product_id: String,
            replacement_account_token: String,
            replacement_comment: String,
            replacement_for: String,
            replacement_substatus:
              Lithic::CardCreateParams::ReplacementSubstatus::OrSymbol,
            shipping_address: Lithic::ShippingAddress,
            shipping_method: Lithic::CardCreateParams::ShippingMethod::OrSymbol,
            spend_limit: Integer,
            spend_limit_duration: Lithic::SpendLimitDuration::OrSymbol,
            state: Lithic::CardCreateParams::State::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Card types:
      #
      # - `VIRTUAL` - Card will authorize at any merchant and can be added to a digital
      #   wallet like Apple Pay or Google Pay (if the card program is digital
      #   wallet-enabled).
      # - `PHYSICAL` - Manufactured and sent to the cardholder. We offer white label
      #   branding, credit, ATM, PIN debit, chip/EMV, NFC and magstripe functionality.
      #   Reach out at [lithic.com/contact](https://lithic.com/contact) for more
      #   information.
      # - `SINGLE_USE` - Card is closed upon first successful authorization.
      # - `MERCHANT_LOCKED` - _[Deprecated]_ Card is locked to the first merchant that
      #   successfully authorizes the card.
      # - `UNLOCKED` - _[Deprecated]_ Similar behavior to VIRTUAL cards, please use
      #   VIRTUAL instead.
      # - `DIGITAL_WALLET` - _[Deprecated]_ Similar behavior to VIRTUAL cards, please
      #   use VIRTUAL instead.
      module Type
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::CardCreateParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MERCHANT_LOCKED =
          T.let(:MERCHANT_LOCKED, Lithic::CardCreateParams::Type::TaggedSymbol)
        PHYSICAL =
          T.let(:PHYSICAL, Lithic::CardCreateParams::Type::TaggedSymbol)
        SINGLE_USE =
          T.let(:SINGLE_USE, Lithic::CardCreateParams::Type::TaggedSymbol)
        VIRTUAL = T.let(:VIRTUAL, Lithic::CardCreateParams::Type::TaggedSymbol)
        UNLOCKED =
          T.let(:UNLOCKED, Lithic::CardCreateParams::Type::TaggedSymbol)
        DIGITAL_WALLET =
          T.let(:DIGITAL_WALLET, Lithic::CardCreateParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::CardCreateParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Card state substatus values for the card that this card will replace:
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
      module ReplacementSubstatus
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::CardCreateParams::ReplacementSubstatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOST =
          T.let(
            :LOST,
            Lithic::CardCreateParams::ReplacementSubstatus::TaggedSymbol
          )
        COMPROMISED =
          T.let(
            :COMPROMISED,
            Lithic::CardCreateParams::ReplacementSubstatus::TaggedSymbol
          )
        DAMAGED =
          T.let(
            :DAMAGED,
            Lithic::CardCreateParams::ReplacementSubstatus::TaggedSymbol
          )
        END_USER_REQUEST =
          T.let(
            :END_USER_REQUEST,
            Lithic::CardCreateParams::ReplacementSubstatus::TaggedSymbol
          )
        ISSUER_REQUEST =
          T.let(
            :ISSUER_REQUEST,
            Lithic::CardCreateParams::ReplacementSubstatus::TaggedSymbol
          )
        NOT_ACTIVE =
          T.let(
            :NOT_ACTIVE,
            Lithic::CardCreateParams::ReplacementSubstatus::TaggedSymbol
          )
        SUSPICIOUS_ACTIVITY =
          T.let(
            :SUSPICIOUS_ACTIVITY,
            Lithic::CardCreateParams::ReplacementSubstatus::TaggedSymbol
          )
        INTERNAL_REVIEW =
          T.let(
            :INTERNAL_REVIEW,
            Lithic::CardCreateParams::ReplacementSubstatus::TaggedSymbol
          )
        EXPIRED =
          T.let(
            :EXPIRED,
            Lithic::CardCreateParams::ReplacementSubstatus::TaggedSymbol
          )
        UNDELIVERABLE =
          T.let(
            :UNDELIVERABLE,
            Lithic::CardCreateParams::ReplacementSubstatus::TaggedSymbol
          )
        OTHER =
          T.let(
            :OTHER,
            Lithic::CardCreateParams::ReplacementSubstatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::CardCreateParams::ReplacementSubstatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Shipping method for the card. Only applies to cards of type PHYSICAL. Use of
      # options besides `STANDARD` require additional permissions.
      #
      # - `STANDARD` - USPS regular mail or similar international option, with no
      #   tracking
      # - `STANDARD_WITH_TRACKING` - USPS regular mail or similar international option,
      #   with tracking
      # - `PRIORITY` - USPS Priority, 1-3 day shipping, with tracking
      # - `EXPRESS` - FedEx or UPS depending on card manufacturer, Express, 3-day
      #   shipping, with tracking
      # - `2_DAY` - FedEx or UPS depending on card manufacturer, 2-day shipping, with
      #   tracking
      # - `EXPEDITED` - FedEx or UPS depending on card manufacturer, Standard Overnight
      #   or similar international option, with tracking
      module ShippingMethod
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::CardCreateParams::ShippingMethod)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SHIPPING_METHOD_2_DAY =
          T.let(
            :"2_DAY",
            Lithic::CardCreateParams::ShippingMethod::TaggedSymbol
          )
        EXPEDITED =
          T.let(
            :EXPEDITED,
            Lithic::CardCreateParams::ShippingMethod::TaggedSymbol
          )
        EXPRESS =
          T.let(
            :EXPRESS,
            Lithic::CardCreateParams::ShippingMethod::TaggedSymbol
          )
        PRIORITY =
          T.let(
            :PRIORITY,
            Lithic::CardCreateParams::ShippingMethod::TaggedSymbol
          )
        STANDARD =
          T.let(
            :STANDARD,
            Lithic::CardCreateParams::ShippingMethod::TaggedSymbol
          )
        STANDARD_WITH_TRACKING =
          T.let(
            :STANDARD_WITH_TRACKING,
            Lithic::CardCreateParams::ShippingMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::CardCreateParams::ShippingMethod::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Card state values:
      #
      # - `OPEN` - Card will approve authorizations (if they match card and account
      #   parameters).
      # - `PAUSED` - Card will decline authorizations, but can be resumed at a later
      #   time.
      module State
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::CardCreateParams::State) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OPEN = T.let(:OPEN, Lithic::CardCreateParams::State::TaggedSymbol)
        PAUSED = T.let(:PAUSED, Lithic::CardCreateParams::State::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::CardCreateParams::State::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
