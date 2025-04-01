# frozen_string_literal: true

module Lithic
  module Resources
    class Cards
      # @return [Lithic::Resources::Cards::AggregateBalances]
      attr_reader :aggregate_balances

      # @return [Lithic::Resources::Cards::Balances]
      attr_reader :balances

      # @return [Lithic::Resources::Cards::FinancialTransactions]
      attr_reader :financial_transactions

      # Create a new virtual or physical card. Parameters `shipping_address` and
      #   `product_id` only apply to physical cards.
      #
      # @param params [Lithic::Models::CardCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, Lithic::Models::CardCreateParams::Type] :type Card types:
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
      #   @option params [String] :account_token Globally unique identifier for the account that the card will be associated
      #     with. Required for programs enrolling users using the
      #     [/account_holders endpoint](https://docs.lithic.com/docs/account-holders-kyc).
      #     See [Managing Your Program](doc:managing-your-program) for more information.
      #
      #   @option params [String] :card_program_token For card programs with more than one BIN range. This must be configured with
      #     Lithic before use. Identifies the card program/BIN range under which to create
      #     the card. If omitted, will utilize the program's default `card_program_token`.
      #     In Sandbox, use 00000000-0000-0000-1000-000000000000 and
      #     00000000-0000-0000-2000-000000000000 to test creating cards on specific card
      #     programs.
      #
      #   @option params [Lithic::Models::Carrier] :carrier
      #
      #   @option params [String] :digital_card_art_token Specifies the digital card art to be displayed in the user’s digital wallet
      #     after tokenization. This artwork must be approved by Mastercard and configured
      #     by Lithic to use. See
      #     [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
      #
      #   @option params [String] :exp_month Two digit (MM) expiry month. If neither `exp_month` nor `exp_year` is provided,
      #     an expiration date will be generated.
      #
      #   @option params [String] :exp_year Four digit (yyyy) expiry year. If neither `exp_month` nor `exp_year` is
      #     provided, an expiration date will be generated.
      #
      #   @option params [String] :memo Friendly name to identify the card.
      #
      #   @option params [String] :pin Encrypted PIN block (in base64). Applies to cards of type `PHYSICAL` and
      #     `VIRTUAL`. See
      #     [Encrypted PIN Block](https://docs.lithic.com/docs/cards#encrypted-pin-block).
      #
      #   @option params [String] :product_id Only applicable to cards of type `PHYSICAL`. This must be configured with Lithic
      #     before use. Specifies the configuration (i.e., physical card art) that the card
      #     should be manufactured with.
      #
      #   @option params [String] :replacement_account_token Restricted field limited to select use cases. Lithic will reach out directly if
      #     this field should be used. Globally unique identifier for the replacement card's
      #     account. If this field is specified, `replacement_for` must also be specified.
      #     If `replacement_for` is specified and this field is omitted, the replacement
      #     card's account will be inferred from the card being replaced.
      #
      #   @option params [String] :replacement_for Globally unique identifier for the card that this card will replace. If the card
      #     type is `PHYSICAL` it will be replaced by a `PHYSICAL` card. If the card type is
      #     `VIRTUAL` it will be replaced by a `VIRTUAL` card.
      #
      #   @option params [Lithic::Models::ShippingAddress] :shipping_address
      #
      #   @option params [Symbol, Lithic::Models::CardCreateParams::ShippingMethod] :shipping_method Shipping method for the card. Only applies to cards of type PHYSICAL. Use of
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
      #   @option params [Integer] :spend_limit Amount (in cents) to limit approved authorizations (e.g. 100000 would be a
      #     $1,000 limit). Transaction requests above the spend limit will be declined. Note
      #     that a spend limit of 0 is effectively no limit, and should only be used to
      #     reset or remove a prior limit. Only a limit of 1 or above will result in
      #     declined transactions due to checks against the card limit.
      #
      #   @option params [Symbol, Lithic::Models::SpendLimitDuration] :spend_limit_duration Spend limit duration values:
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
      #   @option params [Symbol, Lithic::Models::CardCreateParams::State] :state Card state values:
      #
      #     - `OPEN` - Card will approve authorizations (if they match card and account
      #       parameters).
      #     - `PAUSED` - Card will decline authorizations, but can be resumed at a later
      #       time.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::Card]
      #
      # @see Lithic::Models::CardCreateParams
      def create(params)
        parsed, options = Lithic::Models::CardCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/cards",
          body: parsed,
          model: Lithic::Models::Card,
          options: options
        )
      end

      # Get card configuration such as spend limit and state.
      #
      # @param card_token [String]
      #
      # @param params [Lithic::Models::CardRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::Card]
      #
      # @see Lithic::Models::CardRetrieveParams
      def retrieve(card_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/cards/%1$s", card_token],
          model: Lithic::Models::Card,
          options: params[:request_options]
        )
      end

      # Update the specified properties of the card. Unsupplied properties will remain
      #   unchanged.
      #
      #   _Note: setting a card to a `CLOSED` state is a final action that cannot be
      #   undone._
      #
      # @param card_token [String]
      #
      # @param params [Lithic::Models::CardUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :digital_card_art_token Specifies the digital card art to be displayed in the user’s digital wallet
      #     after tokenization. This artwork must be approved by Mastercard and configured
      #     by Lithic to use. See
      #     [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
      #
      #   @option params [String] :memo Friendly name to identify the card.
      #
      #   @option params [String] :pin Encrypted PIN block (in base64). Only applies to cards of type `PHYSICAL` and
      #     `VIRTUAL`. Changing PIN also resets PIN status to `OK`. See
      #     [Encrypted PIN Block](https://docs.lithic.com/docs/cards#encrypted-pin-block).
      #
      #   @option params [Symbol, Lithic::Models::CardUpdateParams::PinStatus] :pin_status Indicates if a card is blocked due a PIN status issue (e.g. excessive incorrect
      #     attempts). Can only be set to `OK` to unblock a card.
      #
      #   @option params [Integer] :spend_limit Amount (in cents) to limit approved authorizations (e.g. 100000 would be a
      #     $1,000 limit). Transaction requests above the spend limit will be declined. Note
      #     that a spend limit of 0 is effectively no limit, and should only be used to
      #     reset or remove a prior limit. Only a limit of 1 or above will result in
      #     declined transactions due to checks against the card limit.
      #
      #   @option params [Symbol, Lithic::Models::SpendLimitDuration] :spend_limit_duration Spend limit duration values:
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
      #   @option params [Symbol, Lithic::Models::CardUpdateParams::State] :state Card state values:
      #
      #     - `CLOSED` - Card will no longer approve authorizations. Closing a card cannot
      #       be undone.
      #     - `OPEN` - Card will approve authorizations (if they match card and account
      #       parameters).
      #     - `PAUSED` - Card will decline authorizations, but can be resumed at a later
      #       time.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::Card]
      #
      # @see Lithic::Models::CardUpdateParams
      def update(card_token, params = {})
        parsed, options = Lithic::Models::CardUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/cards/%1$s", card_token],
          body: parsed,
          model: Lithic::Models::Card,
          options: options
        )
      end

      # List cards.
      #
      # @param params [Lithic::Models::CardListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_token Returns cards associated with the specified account.
      #
      #   @option params [Time] :begin_ Date string in RFC 3339 format. Only entries created after the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [Time] :end_ Date string in RFC 3339 format. Only entries created before the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [String] :ending_before A cursor representing an item's token before which a page of results should end.
      #     Used to retrieve the previous page of results before this item.
      #
      #   @option params [Integer] :page_size Page size (for pagination).
      #
      #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
      #     begin. Used to retrieve the next page of results after this item.
      #
      #   @option params [Symbol, Lithic::Models::CardListParams::State] :state Returns cards with the specified state.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::CursorPage<Lithic::Models::Card>]
      #
      # @see Lithic::Models::CardListParams
      def list(params = {})
        parsed, options = Lithic::Models::CardListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/cards",
          query: parsed,
          page: Lithic::CursorPage,
          model: Lithic::Models::Card,
          options: options
        )
      end

      # Convert a virtual card into a physical card and manufacture it. Customer must
      #   supply relevant fields for physical card creation including `product_id`,
      #   `carrier`, `shipping_method`, and `shipping_address`. The card token will be
      #   unchanged. The card's type will be altered to `PHYSICAL`. The card will be set
      #   to state `PENDING_FULFILLMENT` and fulfilled at next fulfillment cycle. Virtual
      #   cards created on card programs which do not support physical cards cannot be
      #   converted. The card program cannot be changed as part of the conversion. Cards
      #   must be in an `OPEN` state to be converted. Only applies to cards of type
      #   `VIRTUAL` (or existing cards with deprecated types of `DIGITAL_WALLET` and
      #   `UNLOCKED`).
      #
      # @param card_token [String]
      #
      # @param params [Lithic::Models::CardConvertPhysicalParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::Models::ShippingAddress] :shipping_address The shipping address this card will be sent to.
      #
      #   @option params [Lithic::Models::Carrier] :carrier If omitted, the previous carrier will be used.
      #
      #   @option params [String] :product_id Specifies the configuration (e.g. physical card art) that the card should be
      #     manufactured with, and only applies to cards of type `PHYSICAL`. This must be
      #     configured with Lithic before use.
      #
      #   @option params [Symbol, Lithic::Models::CardConvertPhysicalParams::ShippingMethod] :shipping_method Shipping method for the card. Use of options besides `STANDARD` require
      #     additional permissions.
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
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::Card]
      #
      # @see Lithic::Models::CardConvertPhysicalParams
      def convert_physical(card_token, params)
        parsed, options = Lithic::Models::CardConvertPhysicalParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/cards/%1$s/convert_physical", card_token],
          body: parsed,
          model: Lithic::Models::Card,
          options: options
        )
      end

      # Handling full card PANs and CVV codes requires that you comply with the Payment
      #   Card Industry Data Security Standards (PCI DSS). Some clients choose to reduce
      #   their compliance obligations by leveraging our embedded card UI solution
      #   documented below.
      #
      #   In this setup, PANs and CVV codes are presented to the end-user via a card UI
      #   that we provide, optionally styled in the customer's branding using a specified
      #   css stylesheet. A user's browser makes the request directly to api.lithic.com,
      #   so card PANs and CVVs never touch the API customer's servers while full card
      #   data is displayed to their end-users. The response contains an HTML document
      #   (see Embedded Card UI or Changelog for upcoming changes in January). This means
      #   that the url for the request can be inserted straight into the `src` attribute
      #   of an iframe.
      #
      #   ```html
      #   <iframe
      #     id="card-iframe"
      #     src="https://sandbox.lithic.com/v1/embed/card?embed_request=eyJjc3MiO...;hmac=r8tx1..."
      #     allow="clipboard-write"
      #     class="content"
      #   ></iframe>
      #   ```
      #
      #   You should compute the request payload on the server side. You can render it (or
      #   the whole iframe) on the server or make an ajax call from your front end code,
      #   but **do not ever embed your API key into front end code, as doing so introduces
      #   a serious security vulnerability**.
      #
      # @param params [Lithic::Models::CardEmbedParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :embed_request A base64 encoded JSON string of an EmbedRequest to specify which card to load.
      #
      #   @option params [String] :hmac SHA256 HMAC of the embed_request JSON string with base64 digest.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [String]
      #
      # @see Lithic::Models::CardEmbedParams
      def embed(params)
        parsed, options = Lithic::Models::CardEmbedParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/embed/card",
          query: parsed,
          headers: {"accept" => "text/html"},
          model: String,
          options: options
        )
      end

      # Allow your cardholders to directly add payment cards to the device's digital
      #   wallet (e.g. Apple Pay) with one touch from your app.
      #
      #   This requires some additional setup and configuration. Please
      #   [Contact Us](https://lithic.com/contact) or your Customer Success representative
      #   for more information.
      #
      # @param card_token [String] The unique token of the card to add to the device's digital wallet.
      #
      # @param params [Lithic::Models::CardProvisionParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :certificate Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only
      #     `activationData` in the response. Apple's public leaf certificate. Base64
      #     encoded in PEM format with headers `(-----BEGIN CERTIFICATE-----)` and trailers
      #     omitted. Provided by the device's wallet.
      #
      #   @option params [String] :client_device_id Only applicable if `digital_wallet` is `GOOGLE_PAY` or `SAMSUNG_PAY` and the
      #     card is on the Visa network. Stable device identification set by the wallet
      #     provider.
      #
      #   @option params [String] :client_wallet_account_id Only applicable if `digital_wallet` is `GOOGLE_PAY` or `SAMSUNG_PAY` and the
      #     card is on the Visa network. Consumer ID that identifies the wallet account
      #     holder entity.
      #
      #   @option params [Symbol, Lithic::Models::CardProvisionParams::DigitalWallet] :digital_wallet Name of digital wallet provider.
      #
      #   @option params [String] :nonce Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only
      #     `activationData` in the response. Base64 cryptographic nonce provided by the
      #     device's wallet.
      #
      #   @option params [String] :nonce_signature Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only
      #     `activationData` in the response. Base64 cryptographic nonce provided by the
      #     device's wallet.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::CardProvisionResponse]
      #
      # @see Lithic::Models::CardProvisionParams
      def provision(card_token, params = {})
        parsed, options = Lithic::Models::CardProvisionParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/cards/%1$s/provision", card_token],
          body: parsed,
          model: Lithic::Models::CardProvisionResponse,
          options: options
        )
      end

      # Initiate print and shipment of a duplicate physical card (e.g. card is
      #   physically damaged). The PAN, expiry, and CVC2 will remain the same and the
      #   original card can continue to be used until the new card is activated. Only
      #   applies to cards of type `PHYSICAL`. A card can be replaced or renewed a total
      #   of 8 times.
      #
      # @param card_token [String]
      #
      # @param params [Lithic::Models::CardReissueParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::Models::Carrier] :carrier If omitted, the previous carrier will be used.
      #
      #   @option params [String] :product_id Specifies the configuration (e.g. physical card art) that the card should be
      #     manufactured with, and only applies to cards of type `PHYSICAL`. This must be
      #     configured with Lithic before use.
      #
      #   @option params [Lithic::Models::ShippingAddress] :shipping_address If omitted, the previous shipping address will be used.
      #
      #   @option params [Symbol, Lithic::Models::CardReissueParams::ShippingMethod] :shipping_method Shipping method for the card. Use of options besides `STANDARD` require
      #     additional permissions.
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
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::Card]
      #
      # @see Lithic::Models::CardReissueParams
      def reissue(card_token, params = {})
        parsed, options = Lithic::Models::CardReissueParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/cards/%1$s/reissue", card_token],
          body: parsed,
          model: Lithic::Models::Card,
          options: options
        )
      end

      # Creates a new card with the same card token and PAN, but updated expiry and CVC2
      #   code. The original card will keep working for card-present transactions until
      #   the new card is activated. For card-not-present transactions, the original card
      #   details (expiry, CVC2) will also keep working until the new card is activated.
      #   Applies to card types `PHYSICAL` and `VIRTUAL`. A card can be replaced or
      #   renewed a total of 8 times.
      #
      # @param card_token [String]
      #
      # @param params [Lithic::Models::CardRenewParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::Models::ShippingAddress] :shipping_address The shipping address this card will be sent to.
      #
      #   @option params [Lithic::Models::Carrier] :carrier If omitted, the previous carrier will be used.
      #
      #   @option params [String] :exp_month Two digit (MM) expiry month. If neither `exp_month` nor `exp_year` is provided,
      #     an expiration date six years in the future will be generated.
      #
      #   @option params [String] :exp_year Four digit (yyyy) expiry year. If neither `exp_month` nor `exp_year` is
      #     provided, an expiration date six years in the future will be generated.
      #
      #   @option params [String] :product_id Specifies the configuration (e.g. physical card art) that the card should be
      #     manufactured with, and only applies to cards of type `PHYSICAL`. This must be
      #     configured with Lithic before use.
      #
      #   @option params [Symbol, Lithic::Models::CardRenewParams::ShippingMethod] :shipping_method Shipping method for the card. Use of options besides `STANDARD` require
      #     additional permissions.
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
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::Card]
      #
      # @see Lithic::Models::CardRenewParams
      def renew(card_token, params)
        parsed, options = Lithic::Models::CardRenewParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/cards/%1$s/renew", card_token],
          body: parsed,
          model: Lithic::Models::Card,
          options: options
        )
      end

      # Get a Card's available spend limit, which is based on the spend limit configured
      #   on the Card and the amount already spent over the spend limit's duration. For
      #   example, if the Card has a monthly spend limit of $1000 configured, and has
      #   spent $600 in the last month, the available spend limit returned would be $400.
      #
      # @param card_token [String]
      #
      # @param params [Lithic::Models::CardRetrieveSpendLimitsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::CardSpendLimits]
      #
      # @see Lithic::Models::CardRetrieveSpendLimitsParams
      def retrieve_spend_limits(card_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/cards/%1$s/spend_limits", card_token],
          model: Lithic::Models::CardSpendLimits,
          options: params[:request_options]
        )
      end

      # Get card configuration such as spend limit and state. Customers must be PCI
      #   compliant to use this endpoint. Please contact
      #   [support@lithic.com](mailto:support@lithic.com) for questions. _Note: this is a
      #   `POST` endpoint because it is more secure to send sensitive data in a request
      #   body than in a URL._
      #
      # @param params [Lithic::Models::CardSearchByPanParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :pan The PAN for the card being retrieved.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::Card]
      #
      # @see Lithic::Models::CardSearchByPanParams
      def search_by_pan(params)
        parsed, options = Lithic::Models::CardSearchByPanParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/cards/search_by_pan",
          body: parsed,
          model: Lithic::Models::Card,
          options: options
        )
      end

      # @api private
      #
      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
        @aggregate_balances = Lithic::Resources::Cards::AggregateBalances.new(client: client)
        @balances = Lithic::Resources::Cards::Balances.new(client: client)
        @financial_transactions = Lithic::Resources::Cards::FinancialTransactions.new(client: client)
      end
    end
  end
end
