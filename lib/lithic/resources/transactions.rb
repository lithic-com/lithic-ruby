# frozen_string_literal: true

module Lithic
  module Resources
    class Transactions
      # @return [Lithic::Resources::Transactions::EnhancedCommercialData]
      attr_reader :enhanced_commercial_data

      # @return [Lithic::Resources::Transactions::Events]
      attr_reader :events

      # Get a specific card transaction. All amounts are in the smallest unit of their
      #   respective currency (e.g., cents for USD).
      #
      # @param transaction_token [String] Globally unique identifier for the transaction.
      #
      # @param params [Lithic::Models::TransactionRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::Transaction]
      def retrieve(transaction_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/transactions/%0s", transaction_token],
          model: Lithic::Models::Transaction,
          options: params[:request_options]
        )
      end

      # List card transactions. All amounts are in the smallest unit of their respective
      #   currency (e.g., cents for USD) and inclusive of any acquirer fees.
      #
      # @param params [Lithic::Models::TransactionListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_token Filters for transactions associated with a specific account.
      #
      #   @option params [Time] :begin_ Date string in RFC 3339 format. Only entries created after the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [String] :card_token Filters for transactions associated with a specific card.
      #
      #   @option params [Time] :end_ Date string in RFC 3339 format. Only entries created before the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [String] :ending_before A cursor representing an item's token before which a page of results should end.
      #     Used to retrieve the previous page of results before this item.
      #
      #   @option params [Integer] :page_size Page size (for pagination).
      #
      #   @option params [Symbol, Lithic::Models::TransactionListParams::Result] :result Filters for transactions using transaction result field. Can filter by
      #     `APPROVED`, and `DECLINED`.
      #
      #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
      #     begin. Used to retrieve the next page of results after this item.
      #
      #   @option params [Symbol, Lithic::Models::TransactionListParams::Status] :status Filters for transactions using transaction status field.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::CursorPage<Lithic::Models::Transaction>]
      def list(params = {})
        parsed, options = Lithic::Models::TransactionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/transactions",
          query: parsed,
          page: Lithic::CursorPage,
          model: Lithic::Models::Transaction,
          options: options
        )
      end

      # Expire authorization
      #
      # @param transaction_token [String] The token of the transaction to expire.
      #
      # @param params [Lithic::Models::TransactionExpireAuthorizationParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [nil]
      def expire_authorization(transaction_token, params = {})
        @client.request(
          method: :post,
          path: ["v1/transactions/%0s/expire_authorization", transaction_token],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Simulates an authorization request from the card network as if it came from a
      #   merchant acquirer. If you are configured for ASA, simulating authorizations
      #   requires your ASA client to be set up properly, i.e. be able to respond to the
      #   ASA request with a valid JSON. For users that are not configured for ASA, a
      #   daily transaction limit of $5000 USD is applied by default. You can update this
      #   limit via the
      #   [update account](https://docs.lithic.com/reference/patchaccountbytoken)
      #   endpoint.
      #
      # @param params [Lithic::Models::TransactionSimulateAuthorizationParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer] :amount Amount (in cents) to authorize. For credit authorizations and financial credit
      #     authorizations, any value entered will be converted into a negative amount in
      #     the simulated transaction. For example, entering 100 in this field will result
      #     in a -100 amount in the transaction. For balance inquiries, this field must be
      #     set to 0.
      #
      #   @option params [String] :descriptor Merchant descriptor.
      #
      #   @option params [String] :pan Sixteen digit card number.
      #
      #   @option params [String] :mcc Merchant category code for the transaction to be simulated. A four-digit number
      #     listed in ISO 18245. Supported merchant category codes can be found
      #     [here](https://docs.lithic.com/docs/transactions#merchant-category-codes-mccs).
      #
      #   @option params [String] :merchant_acceptor_id Unique identifier to identify the payment card acceptor.
      #
      #   @option params [Integer] :merchant_amount Amount of the transaction to be simulated in currency specified in
      #     merchant_currency, including any acquirer fees.
      #
      #   @option params [String] :merchant_currency 3-character alphabetic ISO 4217 currency code. Note: Simulator only accepts USD,
      #     GBP, EUR and defaults to GBP if another ISO 4217 code is provided
      #
      #   @option params [Boolean] :partial_approval_capable Set to true if the terminal is capable of partial approval otherwise false.
      #     Partial approval is when part of a transaction is approved and another payment
      #     must be used for the remainder.
      #
      #   @option params [String] :pin Simulate entering a PIN. If omitted, PIN check will not be performed.
      #
      #   @option params [Symbol, Lithic::Models::TransactionSimulateAuthorizationParams::Status] :status Type of event to simulate.
      #
      #     - `AUTHORIZATION` is a dual message purchase authorization, meaning a subsequent
      #       clearing step is required to settle the transaction.
      #     - `BALANCE_INQUIRY` is a $0 authorization requesting the balance held on the
      #       card, and is most often observed when a cardholder requests to view a card's
      #       balance at an ATM.
      #     - `CREDIT_AUTHORIZATION` is a dual message request from a merchant to authorize
      #       a refund, meaning a subsequent clearing step is required to settle the
      #       transaction.
      #     - `FINANCIAL_AUTHORIZATION` is a single message request from a merchant to debit
      #       funds immediately (such as an ATM withdrawal), and no subsequent clearing is
      #       required to settle the transaction.
      #     - `FINANCIAL_CREDIT_AUTHORIZATION` is a single message request from a merchant
      #       to credit funds immediately, and no subsequent clearing is required to settle
      #       the transaction.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::TransactionSimulateAuthorizationResponse]
      def simulate_authorization(params)
        parsed, options = Lithic::Models::TransactionSimulateAuthorizationParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/simulate/authorize",
          body: parsed,
          model: Lithic::Models::TransactionSimulateAuthorizationResponse,
          options: options
        )
      end

      # Simulates an authorization advice from the card network as if it came from a
      #   merchant acquirer. An authorization advice changes the pending amount of the
      #   transaction.
      #
      # @param params [Lithic::Models::TransactionSimulateAuthorizationAdviceParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :token The transaction token returned from the /v1/simulate/authorize. response.
      #
      #   @option params [Integer] :amount Amount (in cents) to authorize. This amount will override the transaction's
      #     amount that was originally set by /v1/simulate/authorize.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::TransactionSimulateAuthorizationAdviceResponse]
      def simulate_authorization_advice(params)
        parsed, options = Lithic::Models::TransactionSimulateAuthorizationAdviceParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/simulate/authorization_advice",
          body: parsed,
          model: Lithic::Models::TransactionSimulateAuthorizationAdviceResponse,
          options: options
        )
      end

      # Clears an existing authorization, either debit or credit. After this event, the
      #   transaction transitions from `PENDING` to `SETTLED` status.
      #
      #   If `amount` is not set, the full amount of the transaction will be cleared.
      #   Transactions that have already cleared, either partially or fully, cannot be
      #   cleared again using this endpoint.
      #
      # @param params [Lithic::Models::TransactionSimulateClearingParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :token The transaction token returned from the /v1/simulate/authorize response.
      #
      #   @option params [Integer] :amount Amount (in cents) to clear. Typically this will match the amount in the original
      #     authorization, but can be higher or lower. The sign of this amount will
      #     automatically match the sign of the original authorization's amount. For
      #     example, entering 100 in this field will result in a -100 amount in the
      #     transaction, if the original authorization is a credit authorization.
      #
      #     If `amount` is not set, the full amount of the transaction will be cleared.
      #     Transactions that have already cleared, either partially or fully, cannot be
      #     cleared again using this endpoint.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::TransactionSimulateClearingResponse]
      def simulate_clearing(params)
        parsed, options = Lithic::Models::TransactionSimulateClearingParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/simulate/clearing",
          body: parsed,
          model: Lithic::Models::TransactionSimulateClearingResponse,
          options: options
        )
      end

      # Simulates a credit authorization advice from the card network. This message
      #   indicates that the network approved a credit authorization on your behalf.
      #
      # @param params [Lithic::Models::TransactionSimulateCreditAuthorizationParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer] :amount Amount (in cents). Any value entered will be converted into a negative amount in
      #     the simulated transaction. For example, entering 100 in this field will appear
      #     as a -100 amount in the transaction.
      #
      #   @option params [String] :descriptor Merchant descriptor.
      #
      #   @option params [String] :pan Sixteen digit card number.
      #
      #   @option params [String] :mcc Merchant category code for the transaction to be simulated. A four-digit number
      #     listed in ISO 18245. Supported merchant category codes can be found
      #     [here](https://docs.lithic.com/docs/transactions#merchant-category-codes-mccs).
      #
      #   @option params [String] :merchant_acceptor_id Unique identifier to identify the payment card acceptor.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::TransactionSimulateCreditAuthorizationResponse]
      def simulate_credit_authorization(params)
        parsed, options = Lithic::Models::TransactionSimulateCreditAuthorizationParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/simulate/credit_authorization_advice",
          body: parsed,
          model: Lithic::Models::TransactionSimulateCreditAuthorizationResponse,
          options: options
        )
      end

      # Returns, or refunds, an amount back to a card. Returns simulated via this
      #   endpoint clear immediately, without prior authorization, and result in a
      #   `SETTLED` transaction status.
      #
      # @param params [Lithic::Models::TransactionSimulateReturnParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer] :amount Amount (in cents) to authorize.
      #
      #   @option params [String] :descriptor Merchant descriptor.
      #
      #   @option params [String] :pan Sixteen digit card number.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::TransactionSimulateReturnResponse]
      def simulate_return(params)
        parsed, options = Lithic::Models::TransactionSimulateReturnParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/simulate/return",
          body: parsed,
          model: Lithic::Models::TransactionSimulateReturnResponse,
          options: options
        )
      end

      # Reverses a return, i.e. a credit transaction with a `SETTLED` status. Returns
      #   can be financial credit authorizations, or credit authorizations that have
      #   cleared.
      #
      # @param params [Lithic::Models::TransactionSimulateReturnReversalParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :token The transaction token returned from the /v1/simulate/authorize response.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::TransactionSimulateReturnReversalResponse]
      def simulate_return_reversal(params)
        parsed, options = Lithic::Models::TransactionSimulateReturnReversalParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/simulate/return_reversal",
          body: parsed,
          model: Lithic::Models::TransactionSimulateReturnReversalResponse,
          options: options
        )
      end

      # Voids a pending authorization. If `amount` is not set, the full amount will be
      #   voided. Can be used on partially voided transactions but not partially cleared
      #   transactions. _Simulating an authorization expiry on credit authorizations or
      #   credit authorization advice is not currently supported but will be added soon._
      #
      # @param params [Lithic::Models::TransactionSimulateVoidParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :token The transaction token returned from the /v1/simulate/authorize response.
      #
      #   @option params [Integer] :amount Amount (in cents) to void. Typically this will match the amount in the original
      #     authorization, but can be less.
      #
      #   @option params [Symbol, Lithic::Models::TransactionSimulateVoidParams::Type] :type Type of event to simulate. Defaults to `AUTHORIZATION_REVERSAL`.
      #
      #     - `AUTHORIZATION_EXPIRY` indicates authorization has expired and been reversed
      #       by Lithic.
      #     - `AUTHORIZATION_REVERSAL` indicates authorization was reversed by the merchant.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::TransactionSimulateVoidResponse]
      def simulate_void(params)
        parsed, options = Lithic::Models::TransactionSimulateVoidParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/simulate/void",
          body: parsed,
          model: Lithic::Models::TransactionSimulateVoidResponse,
          options: options
        )
      end

      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
        @enhanced_commercial_data = Lithic::Resources::Transactions::EnhancedCommercialData.new(client: client)
        @events = Lithic::Resources::Transactions::Events.new(client: client)
      end
    end
  end
end
