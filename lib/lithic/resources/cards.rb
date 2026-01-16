# frozen_string_literal: true

module Lithic
  module Resources
    class Cards
      # @return [Lithic::Resources::Cards::Balances]
      attr_reader :balances

      # @return [Lithic::Resources::Cards::FinancialTransactions]
      attr_reader :financial_transactions

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::CardCreateParams} for more details.
      #
      # Create a new virtual or physical card. Parameters `shipping_address` and
      # `product_id` only apply to physical cards.
      #
      # @overload create(type:, account_token: nil, bulk_order_token: nil, card_program_token: nil, carrier: nil, digital_card_art_token: nil, exp_month: nil, exp_year: nil, memo: nil, pin: nil, product_id: nil, replacement_account_token: nil, replacement_comment: nil, replacement_for: nil, replacement_substatus: nil, shipping_address: nil, shipping_method: nil, spend_limit: nil, spend_limit_duration: nil, state: nil, idempotency_key: nil, request_options: {})
      #
      # @param type [Symbol, Lithic::Models::CardCreateParams::Type] Body param: Card types:
      #
      # @param account_token [String] Body param: Globally unique identifier for the account that the card will be ass
      #
      # @param bulk_order_token [String] Body param: Globally unique identifier for an existing bulk order to associate t
      #
      # @param card_program_token [String] Body param: For card programs with more than one BIN range. This must be configu
      #
      # @param carrier [Lithic::Models::Carrier] Body param
      #
      # @param digital_card_art_token [String] Body param: Specifies the digital card art to be displayed in the user’s digital
      #
      # @param exp_month [String] Body param: Two digit (MM) expiry month. If neither `exp_month` nor `exp_year` i
      #
      # @param exp_year [String] Body param: Four digit (yyyy) expiry year. If neither `exp_month` nor `exp_year`
      #
      # @param memo [String] Body param: Friendly name to identify the card.
      #
      # @param pin [String] Body param: Encrypted PIN block (in base64). Applies to cards of type `PHYSICAL`
      #
      # @param product_id [String] Body param: Only applicable to cards of type `PHYSICAL`. This must be configured
      #
      # @param replacement_account_token [String] Body param: Restricted field limited to select use cases. Lithic will reach out
      #
      # @param replacement_comment [String] Body param: Additional context or information related to the card that this card
      #
      # @param replacement_for [String] Body param: Globally unique identifier for the card that this card will replace.
      #
      # @param replacement_substatus [Symbol, Lithic::Models::CardCreateParams::ReplacementSubstatus] Body param: Card state substatus values for the card that this card will replace
      #
      # @param shipping_address [Lithic::Models::ShippingAddress] Body param
      #
      # @param shipping_method [Symbol, Lithic::Models::CardCreateParams::ShippingMethod] Body param: Shipping method for the card. Only applies to cards of type PHYSICAL
      #
      # @param spend_limit [Integer] Body param: Amount (in cents) to limit approved authorizations (e.g. 100000 woul
      #
      # @param spend_limit_duration [Symbol, Lithic::Models::SpendLimitDuration] Body param: Spend limit duration values:
      #
      # @param state [Symbol, Lithic::Models::CardCreateParams::State] Body param: Card state values:
      #
      # @param idempotency_key [String] Header param: Idempotency key for the request
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::Card]
      #
      # @see Lithic::Models::CardCreateParams
      def create(params)
        parsed, options = Lithic::CardCreateParams.dump_request(params)
        header_params = {idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "v1/cards",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Lithic::Card,
          options: options
        )
      end

      # Get card configuration such as spend limit and state.
      #
      # @overload retrieve(card_token, request_options: {})
      #
      # @param card_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::Card]
      #
      # @see Lithic::Models::CardRetrieveParams
      def retrieve(card_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/cards/%1$s", card_token],
          model: Lithic::Card,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::CardUpdateParams} for more details.
      #
      # Update the specified properties of the card. Unsupplied properties will remain
      # unchanged.
      #
      # _Note: setting a card to a `CLOSED` state is a final action that cannot be
      # undone._
      #
      # @overload update(card_token, comment: nil, digital_card_art_token: nil, memo: nil, network_program_token: nil, pin: nil, pin_status: nil, spend_limit: nil, spend_limit_duration: nil, state: nil, substatus: nil, request_options: {})
      #
      # @param card_token [String]
      #
      # @param comment [String] Additional context or information related to the card.
      #
      # @param digital_card_art_token [String] Specifies the digital card art to be displayed in the user’s digital wallet afte
      #
      # @param memo [String] Friendly name to identify the card.
      #
      # @param network_program_token [String] Globally unique identifier for the card's network program. Currently applicable
      #
      # @param pin [String] Encrypted PIN block (in base64). Only applies to cards of type `PHYSICAL` and `V
      #
      # @param pin_status [Symbol, Lithic::Models::CardUpdateParams::PinStatus] Indicates if a card is blocked due a PIN status issue (e.g. excessive incorrect
      #
      # @param spend_limit [Integer] Amount (in cents) to limit approved authorizations (e.g. 100000 would be a $1,00
      #
      # @param spend_limit_duration [Symbol, Lithic::Models::SpendLimitDuration] Spend limit duration values:
      #
      # @param state [Symbol, Lithic::Models::CardUpdateParams::State] Card state values:
      #
      # @param substatus [Symbol, Lithic::Models::CardUpdateParams::Substatus] Card state substatus values:
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::Card]
      #
      # @see Lithic::Models::CardUpdateParams
      def update(card_token, params = {})
        parsed, options = Lithic::CardUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/cards/%1$s", card_token],
          body: parsed,
          model: Lithic::Card,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::CardListParams} for more details.
      #
      # List cards.
      #
      # @overload list(account_token: nil, begin_: nil, end_: nil, ending_before: nil, memo: nil, page_size: nil, starting_after: nil, state: nil, request_options: {})
      #
      # @param account_token [String] Returns cards associated with the specified account.
      #
      # @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
      #
      # @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
      #
      # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      #
      # @param memo [String] Returns cards containing the specified partial or full memo text.
      #
      # @param page_size [Integer] Page size (for pagination).
      #
      # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      #
      # @param state [Symbol, Lithic::Models::CardListParams::State] Returns cards with the specified state.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::NonPCICard>]
      #
      # @see Lithic::Models::CardListParams
      def list(params = {})
        parsed, options = Lithic::CardListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/cards",
          query: parsed.transform_keys(begin_: "begin", end_: "end"),
          page: Lithic::Internal::CursorPage,
          model: Lithic::NonPCICard,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::CardConvertPhysicalParams} for more details.
      #
      # Convert a virtual card into a physical card and manufacture it. Customer must
      # supply relevant fields for physical card creation including `product_id`,
      # `carrier`, `shipping_method`, and `shipping_address`. The card token will be
      # unchanged. The card's type will be altered to `PHYSICAL`. The card will be set
      # to state `PENDING_FULFILLMENT` and fulfilled at next fulfillment cycle. Virtual
      # cards created on card programs which do not support physical cards cannot be
      # converted. The card program cannot be changed as part of the conversion. Cards
      # must be in an `OPEN` state to be converted. Only applies to cards of type
      # `VIRTUAL` (or existing cards with deprecated types of `DIGITAL_WALLET` and
      # `UNLOCKED`).
      #
      # @overload convert_physical(card_token, shipping_address:, carrier: nil, product_id: nil, shipping_method: nil, request_options: {})
      #
      # @param card_token [String]
      #
      # @param shipping_address [Lithic::Models::ShippingAddress] The shipping address this card will be sent to.
      #
      # @param carrier [Lithic::Models::Carrier] If omitted, the previous carrier will be used.
      #
      # @param product_id [String] Specifies the configuration (e.g. physical card art) that the card should be man
      #
      # @param shipping_method [Symbol, Lithic::Models::CardConvertPhysicalParams::ShippingMethod] Shipping method for the card. Only applies to cards of type PHYSICAL.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::Card]
      #
      # @see Lithic::Models::CardConvertPhysicalParams
      def convert_physical(card_token, params)
        parsed, options = Lithic::CardConvertPhysicalParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/cards/%1$s/convert_physical", card_token],
          body: parsed,
          model: Lithic::Card,
          options: options
        )
      end

      # Handling full card PANs and CVV codes requires that you comply with the Payment
      # Card Industry Data Security Standards (PCI DSS). Some clients choose to reduce
      # their compliance obligations by leveraging our embedded card UI solution
      # documented below.
      #
      # In this setup, PANs and CVV codes are presented to the end-user via a card UI
      # that we provide, optionally styled in the customer's branding using a specified
      # css stylesheet. A user's browser makes the request directly to api.lithic.com,
      # so card PANs and CVVs never touch the API customer's servers while full card
      # data is displayed to their end-users. The response contains an HTML document
      # (see Embedded Card UI or Changelog for upcoming changes in January). This means
      # that the url for the request can be inserted straight into the `src` attribute
      # of an iframe.
      #
      # ```html
      # <iframe
      #   id="card-iframe"
      #   src="https://sandbox.lithic.com/v1/embed/card?embed_request=eyJjc3MiO...;hmac=r8tx1..."
      #   allow="clipboard-write"
      #   class="content"
      # ></iframe>
      # ```
      #
      # You should compute the request payload on the server side. You can render it (or
      # the whole iframe) on the server or make an ajax call from your front end code,
      # but **do not ever embed your API key into front end code, as doing so introduces
      # a serious security vulnerability**.
      #
      # @overload embed(embed_request:, hmac:, request_options: {})
      #
      # @param embed_request [String] A base64 encoded JSON string of an EmbedRequest to specify which card to load.
      #
      # @param hmac [String] SHA256 HMAC of the embed_request JSON string with base64 digest.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [String]
      #
      # @see Lithic::Models::CardEmbedParams
      def embed(params)
        parsed, options = Lithic::CardEmbedParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/embed/card",
          query: parsed,
          headers: {"accept" => "text/html"},
          model: String,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::CardProvisionParams} for more details.
      #
      # Allow your cardholders to directly add payment cards to the device's digital
      # wallet (e.g. Apple Pay) with one touch from your app.
      #
      # This requires some additional setup and configuration. Please
      # [Contact Us](https://lithic.com/contact) or your Customer Success representative
      # for more information.
      #
      # @overload provision(card_token, certificate: nil, client_device_id: nil, client_wallet_account_id: nil, digital_wallet: nil, nonce: nil, nonce_signature: nil, request_options: {})
      #
      # @param card_token [String] The unique token of the card to add to the device's digital wallet.
      #
      # @param certificate [String] Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only `activa
      #
      # @param client_device_id [String] Only applicable if `digital_wallet` is `GOOGLE_PAY` or `SAMSUNG_PAY` and the car
      #
      # @param client_wallet_account_id [String] Only applicable if `digital_wallet` is `GOOGLE_PAY` or `SAMSUNG_PAY` and the car
      #
      # @param digital_wallet [Symbol, Lithic::Models::CardProvisionParams::DigitalWallet] Name of digital wallet provider.
      #
      # @param nonce [String] Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only `activa
      #
      # @param nonce_signature [String] Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only `activa
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::CardProvisionResponse]
      #
      # @see Lithic::Models::CardProvisionParams
      def provision(card_token, params = {})
        parsed, options = Lithic::CardProvisionParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/cards/%1$s/provision", card_token],
          body: parsed,
          model: Lithic::Models::CardProvisionResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::CardReissueParams} for more details.
      #
      # Initiate print and shipment of a duplicate physical card (e.g. card is
      # physically damaged). The PAN, expiry, and CVC2 will remain the same and the
      # original card can continue to be used until the new card is activated. Only
      # applies to cards of type `PHYSICAL`. A card can be reissued or renewed a total
      # of 8 times.
      #
      # @overload reissue(card_token, carrier: nil, product_id: nil, shipping_address: nil, shipping_method: nil, request_options: {})
      #
      # @param card_token [String]
      #
      # @param carrier [Lithic::Models::Carrier] If omitted, the previous carrier will be used.
      #
      # @param product_id [String] Specifies the configuration (e.g. physical card art) that the card should be man
      #
      # @param shipping_address [Lithic::Models::ShippingAddress] If omitted, the previous shipping address will be used.
      #
      # @param shipping_method [Symbol, Lithic::Models::CardReissueParams::ShippingMethod] Shipping method for the card. Only applies to cards of type PHYSICAL.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::Card]
      #
      # @see Lithic::Models::CardReissueParams
      def reissue(card_token, params = {})
        parsed, options = Lithic::CardReissueParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/cards/%1$s/reissue", card_token],
          body: parsed,
          model: Lithic::Card,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::CardRenewParams} for more details.
      #
      # Applies to card types `PHYSICAL` and `VIRTUAL`. For `PHYSICAL`, creates a new
      # card with the same card token and PAN, but updated expiry and CVC2 code. The
      # original card will keep working for card-present transactions until the new card
      # is activated. For card-not-present transactions, the original card details
      # (expiry, CVC2) will also keep working until the new card is activated. A
      # `PHYSICAL` card can be reissued or renewed a total of 8 times. For `VIRTUAL`,
      # the card will retain the same card token and PAN and receive an updated expiry
      # and CVC2 code. `product_id`, `shipping_method`, `shipping_address`, `carrier`
      # are only relevant for renewing `PHYSICAL` cards.
      #
      # @overload renew(card_token, shipping_address:, carrier: nil, exp_month: nil, exp_year: nil, product_id: nil, shipping_method: nil, request_options: {})
      #
      # @param card_token [String]
      #
      # @param shipping_address [Lithic::Models::ShippingAddress] The shipping address this card will be sent to.
      #
      # @param carrier [Lithic::Models::Carrier] If omitted, the previous carrier will be used.
      #
      # @param exp_month [String] Two digit (MM) expiry month. If neither `exp_month` nor `exp_year` is provided,
      #
      # @param exp_year [String] Four digit (yyyy) expiry year. If neither `exp_month` nor `exp_year` is provided
      #
      # @param product_id [String] Specifies the configuration (e.g. physical card art) that the card should be man
      #
      # @param shipping_method [Symbol, Lithic::Models::CardRenewParams::ShippingMethod] Shipping method for the card. Only applies to cards of type PHYSICAL.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::Card]
      #
      # @see Lithic::Models::CardRenewParams
      def renew(card_token, params)
        parsed, options = Lithic::CardRenewParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/cards/%1$s/renew", card_token],
          body: parsed,
          model: Lithic::Card,
          options: options
        )
      end

      # Get a Card's available spend limit, which is based on the spend limit configured
      # on the Card and the amount already spent over the spend limit's duration. For
      # example, if the Card has a monthly spend limit of $1000 configured, and has
      # spent $600 in the last month, the available spend limit returned would be $400.
      #
      # @overload retrieve_spend_limits(card_token, request_options: {})
      #
      # @param card_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::CardSpendLimits]
      #
      # @see Lithic::Models::CardRetrieveSpendLimitsParams
      def retrieve_spend_limits(card_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/cards/%1$s/spend_limits", card_token],
          model: Lithic::CardSpendLimits,
          options: params[:request_options]
        )
      end

      # Get card configuration such as spend limit and state. Customers must be PCI
      # compliant to use this endpoint. Please contact
      # [support@lithic.com](mailto:support@lithic.com) for questions. _Note: this is a
      # `POST` endpoint because it is more secure to send sensitive data in a request
      # body than in a URL._
      #
      # @overload search_by_pan(pan:, request_options: {})
      #
      # @param pan [String] The PAN for the card being retrieved.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::Card]
      #
      # @see Lithic::Models::CardSearchByPanParams
      def search_by_pan(params)
        parsed, options = Lithic::CardSearchByPanParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/cards/search_by_pan",
          body: parsed,
          model: Lithic::Card,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::CardWebProvisionParams} for more details.
      #
      # Allow your cardholders to directly add payment cards to the device's digital
      # wallet from a browser on the web.
      #
      # This requires some additional setup and configuration. Please
      # [Contact Us](https://lithic.com/contact) or your Customer Success representative
      # for more information.
      #
      # @overload web_provision(card_token, client_device_id: nil, client_wallet_account_id: nil, digital_wallet: nil, server_session_id: nil, request_options: {})
      #
      # @param card_token [String] The unique token of the card to add to the device's digital wallet.
      #
      # @param client_device_id [String] Only applicable if `digital_wallet` is GOOGLE_PAY. Google Pay Web Push Provision
      #
      # @param client_wallet_account_id [String] Only applicable if `digital_wallet` is GOOGLE_PAY. Google Pay Web Push Provision
      #
      # @param digital_wallet [Symbol, Lithic::Models::CardWebProvisionParams::DigitalWallet] Name of digital wallet provider.
      #
      # @param server_session_id [String] Only applicable if `digital_wallet` is GOOGLE_PAY. Google Pay Web Push Provision
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::CardWebProvisionResponse::AppleWebPushProvisioningResponse, Lithic::Models::CardWebProvisionResponse::GoogleWebPushProvisioningResponse]
      #
      # @see Lithic::Models::CardWebProvisionParams
      def web_provision(card_token, params = {})
        parsed, options = Lithic::CardWebProvisionParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/cards/%1$s/web_provision", card_token],
          body: parsed,
          model: Lithic::Models::CardWebProvisionResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
        @balances = Lithic::Resources::Cards::Balances.new(client: client)
        @financial_transactions = Lithic::Resources::Cards::FinancialTransactions.new(client: client)
      end
    end
  end
end
