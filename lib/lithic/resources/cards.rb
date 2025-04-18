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
      # `product_id` only apply to physical cards.
      #
      # @overload create(type:, account_token: nil, card_program_token: nil, carrier: nil, digital_card_art_token: nil, exp_month: nil, exp_year: nil, memo: nil, pin: nil, product_id: nil, replacement_account_token: nil, replacement_for: nil, shipping_address: nil, shipping_method: nil, spend_limit: nil, spend_limit_duration: nil, state: nil, request_options: {})
      #
      # @param type [Symbol, Lithic::Models::CardCreateParams::Type]
      # @param account_token [String]
      # @param card_program_token [String]
      # @param carrier [Lithic::Models::Carrier]
      # @param digital_card_art_token [String]
      # @param exp_month [String]
      # @param exp_year [String]
      # @param memo [String]
      # @param pin [String]
      # @param product_id [String]
      # @param replacement_account_token [String]
      # @param replacement_for [String]
      # @param shipping_address [Lithic::Models::ShippingAddress]
      # @param shipping_method [Symbol, Lithic::Models::CardCreateParams::ShippingMethod]
      # @param spend_limit [Integer]
      # @param spend_limit_duration [Symbol, Lithic::Models::SpendLimitDuration]
      # @param state [Symbol, Lithic::Models::CardCreateParams::State]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::CardCreateResponse]
      #
      # @see Lithic::Models::CardCreateParams
      def create(params)
        parsed, options = Lithic::Models::CardCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/cards",
          body: parsed,
          model: Lithic::Models::CardCreateResponse,
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
      # @return [Lithic::Models::CardRetrieveResponse]
      #
      # @see Lithic::Models::CardRetrieveParams
      def retrieve(card_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/cards/%1$s", card_token],
          model: Lithic::Models::CardRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update the specified properties of the card. Unsupplied properties will remain
      # unchanged.
      #
      # _Note: setting a card to a `CLOSED` state is a final action that cannot be
      # undone._
      #
      # @overload update(card_token, digital_card_art_token: nil, memo: nil, pin: nil, pin_status: nil, spend_limit: nil, spend_limit_duration: nil, state: nil, request_options: {})
      #
      # @param card_token [String]
      # @param digital_card_art_token [String]
      # @param memo [String]
      # @param pin [String]
      # @param pin_status [Symbol, Lithic::Models::CardUpdateParams::PinStatus]
      # @param spend_limit [Integer]
      # @param spend_limit_duration [Symbol, Lithic::Models::SpendLimitDuration]
      # @param state [Symbol, Lithic::Models::CardUpdateParams::State]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::CardUpdateResponse]
      #
      # @see Lithic::Models::CardUpdateParams
      def update(card_token, params = {})
        parsed, options = Lithic::Models::CardUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/cards/%1$s", card_token],
          body: parsed,
          model: Lithic::Models::CardUpdateResponse,
          options: options
        )
      end

      # List cards.
      #
      # @overload list(account_token: nil, begin_: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, state: nil, request_options: {})
      #
      # @param account_token [String]
      # @param begin_ [Time]
      # @param end_ [Time]
      # @param ending_before [String]
      # @param page_size [Integer]
      # @param starting_after [String]
      # @param state [Symbol, Lithic::Models::CardListParams::State]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::CardListResponse>]
      #
      # @see Lithic::Models::CardListParams
      def list(params = {})
        parsed, options = Lithic::Models::CardListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/cards",
          query: parsed.transform_keys(begin_: "begin", end_: "end"),
          page: Lithic::Internal::CursorPage,
          model: Lithic::Models::CardListResponse,
          options: options
        )
      end

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
      # @param shipping_address [Lithic::Models::ShippingAddress]
      # @param carrier [Lithic::Models::Carrier]
      # @param product_id [String]
      # @param shipping_method [Symbol, Lithic::Models::CardConvertPhysicalParams::ShippingMethod]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::CardConvertPhysicalResponse]
      #
      # @see Lithic::Models::CardConvertPhysicalParams
      def convert_physical(card_token, params)
        parsed, options = Lithic::Models::CardConvertPhysicalParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/cards/%1$s/convert_physical", card_token],
          body: parsed,
          model: Lithic::Models::CardConvertPhysicalResponse,
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
      # @param embed_request [String]
      # @param hmac [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # wallet (e.g. Apple Pay) with one touch from your app.
      #
      # This requires some additional setup and configuration. Please
      # [Contact Us](https://lithic.com/contact) or your Customer Success representative
      # for more information.
      #
      # @overload provision(card_token, certificate: nil, client_device_id: nil, client_wallet_account_id: nil, digital_wallet: nil, nonce: nil, nonce_signature: nil, request_options: {})
      #
      # @param card_token [String]
      # @param certificate [String]
      # @param client_device_id [String]
      # @param client_wallet_account_id [String]
      # @param digital_wallet [Symbol, Lithic::Models::CardProvisionParams::DigitalWallet]
      # @param nonce [String]
      # @param nonce_signature [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # physically damaged). The PAN, expiry, and CVC2 will remain the same and the
      # original card can continue to be used until the new card is activated. Only
      # applies to cards of type `PHYSICAL`. A card can be replaced or renewed a total
      # of 8 times.
      #
      # @overload reissue(card_token, carrier: nil, product_id: nil, shipping_address: nil, shipping_method: nil, request_options: {})
      #
      # @param card_token [String]
      # @param carrier [Lithic::Models::Carrier]
      # @param product_id [String]
      # @param shipping_address [Lithic::Models::ShippingAddress]
      # @param shipping_method [Symbol, Lithic::Models::CardReissueParams::ShippingMethod]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::CardReissueResponse]
      #
      # @see Lithic::Models::CardReissueParams
      def reissue(card_token, params = {})
        parsed, options = Lithic::Models::CardReissueParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/cards/%1$s/reissue", card_token],
          body: parsed,
          model: Lithic::Models::CardReissueResponse,
          options: options
        )
      end

      # Applies to card types `PHYSICAL` and `VIRTUAL`. For `PHYSICAL`, creates a new
      # card with the same card token and PAN, but updated expiry and CVC2 code. The
      # original card will keep working for card-present transactions until the new card
      # is activated. For card-not-present transactions, the original card details
      # (expiry, CVC2) will also keep working until the new card is activated. A
      # `PHYSICAL` card can be replaced or renewed a total of 8 times. For `VIRTUAL`,
      # the card will retain the same card token and PAN and receive an updated expiry
      # and CVC2 code. `product_id`, `shipping_method`, `shipping_address`, `carrier`
      # are only relevant for renewing `PHYSICAL` cards.
      #
      # @overload renew(card_token, shipping_address:, carrier: nil, exp_month: nil, exp_year: nil, product_id: nil, shipping_method: nil, request_options: {})
      #
      # @param card_token [String]
      # @param shipping_address [Lithic::Models::ShippingAddress]
      # @param carrier [Lithic::Models::Carrier]
      # @param exp_month [String]
      # @param exp_year [String]
      # @param product_id [String]
      # @param shipping_method [Symbol, Lithic::Models::CardRenewParams::ShippingMethod]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::CardRenewResponse]
      #
      # @see Lithic::Models::CardRenewParams
      def renew(card_token, params)
        parsed, options = Lithic::Models::CardRenewParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/cards/%1$s/renew", card_token],
          body: parsed,
          model: Lithic::Models::CardRenewResponse,
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
          model: Lithic::Models::CardSpendLimits,
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
      # @param pan [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::CardSearchByPanResponse]
      #
      # @see Lithic::Models::CardSearchByPanParams
      def search_by_pan(params)
        parsed, options = Lithic::Models::CardSearchByPanParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/cards/search_by_pan",
          body: parsed,
          model: Lithic::Models::CardSearchByPanResponse,
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
