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
      # @overload retrieve(transaction_token, request_options: {})
      #
      # @param transaction_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::Transaction]
      #
      # @see Lithic::Models::TransactionRetrieveParams
      def retrieve(transaction_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/transactions/%1$s", transaction_token],
          model: Lithic::Models::Transaction,
          options: params[:request_options]
        )
      end

      # List card transactions. All amounts are in the smallest unit of their respective
      #   currency (e.g., cents for USD) and inclusive of any acquirer fees.
      #
      # @overload list(account_token: nil, begin_: nil, card_token: nil, end_: nil, ending_before: nil, page_size: nil, result: nil, starting_after: nil, status: nil, request_options: {})
      #
      # @param account_token [String]
      # @param begin_ [Time]
      # @param card_token [String]
      # @param end_ [Time]
      # @param ending_before [String]
      # @param page_size [Integer]
      # @param result [Symbol, Lithic::Models::TransactionListParams::Result]
      # @param starting_after [String]
      # @param status [Symbol, Lithic::Models::TransactionListParams::Status]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::Transaction>]
      #
      # @see Lithic::Models::TransactionListParams
      def list(params = {})
        parsed, options = Lithic::Models::TransactionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/transactions",
          query: parsed.transform_keys(begin_: :begin, end_: :end),
          page: Lithic::Internal::CursorPage,
          model: Lithic::Models::Transaction,
          options: options
        )
      end

      # Expire authorization
      #
      # @overload expire_authorization(transaction_token, request_options: {})
      #
      # @param transaction_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Lithic::Models::TransactionExpireAuthorizationParams
      def expire_authorization(transaction_token, params = {})
        @client.request(
          method: :post,
          path: ["v1/transactions/%1$s/expire_authorization", transaction_token],
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
      # @overload simulate_authorization(amount:, descriptor:, pan:, mcc: nil, merchant_acceptor_id: nil, merchant_amount: nil, merchant_currency: nil, partial_approval_capable: nil, pin: nil, status: nil, request_options: {})
      #
      # @param amount [Integer]
      # @param descriptor [String]
      # @param pan [String]
      # @param mcc [String]
      # @param merchant_acceptor_id [String]
      # @param merchant_amount [Integer]
      # @param merchant_currency [String]
      # @param partial_approval_capable [Boolean]
      # @param pin [String]
      # @param status [Symbol, Lithic::Models::TransactionSimulateAuthorizationParams::Status]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::TransactionSimulateAuthorizationResponse]
      #
      # @see Lithic::Models::TransactionSimulateAuthorizationParams
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
      # @overload simulate_authorization_advice(token:, amount:, request_options: {})
      #
      # @param token [String]
      # @param amount [Integer]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::TransactionSimulateAuthorizationAdviceResponse]
      #
      # @see Lithic::Models::TransactionSimulateAuthorizationAdviceParams
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
      # @overload simulate_clearing(token:, amount: nil, request_options: {})
      #
      # @param token [String]
      # @param amount [Integer]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::TransactionSimulateClearingResponse]
      #
      # @see Lithic::Models::TransactionSimulateClearingParams
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
      # @overload simulate_credit_authorization(amount:, descriptor:, pan:, mcc: nil, merchant_acceptor_id: nil, request_options: {})
      #
      # @param amount [Integer]
      # @param descriptor [String]
      # @param pan [String]
      # @param mcc [String]
      # @param merchant_acceptor_id [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::TransactionSimulateCreditAuthorizationResponse]
      #
      # @see Lithic::Models::TransactionSimulateCreditAuthorizationParams
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
      # @overload simulate_return(amount:, descriptor:, pan:, request_options: {})
      #
      # @param amount [Integer]
      # @param descriptor [String]
      # @param pan [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::TransactionSimulateReturnResponse]
      #
      # @see Lithic::Models::TransactionSimulateReturnParams
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
      # @overload simulate_return_reversal(token:, request_options: {})
      #
      # @param token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::TransactionSimulateReturnReversalResponse]
      #
      # @see Lithic::Models::TransactionSimulateReturnReversalParams
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
      # @overload simulate_void(token:, amount: nil, type: nil, request_options: {})
      #
      # @param token [String]
      # @param amount [Integer]
      # @param type [Symbol, Lithic::Models::TransactionSimulateVoidParams::Type]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::TransactionSimulateVoidResponse]
      #
      # @see Lithic::Models::TransactionSimulateVoidParams
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

      # @api private
      #
      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
        @enhanced_commercial_data = Lithic::Resources::Transactions::EnhancedCommercialData.new(client: client)
        @events = Lithic::Resources::Transactions::Events.new(client: client)
      end
    end
  end
end
