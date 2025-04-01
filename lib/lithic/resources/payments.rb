# frozen_string_literal: true

module Lithic
  module Resources
    class Payments
      # Initiates a payment between a financial account and an external bank account.
      #
      # @param params [Lithic::Models::PaymentCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer] :amount
      #
      #   @option params [String] :external_bank_account_token
      #
      #   @option params [String] :financial_account_token
      #
      #   @option params [Symbol, Lithic::Models::PaymentCreateParams::Method] :method_
      #
      #   @option params [Lithic::Models::PaymentCreateParams::MethodAttributes] :method_attributes
      #
      #   @option params [Symbol, Lithic::Models::PaymentCreateParams::Type] :type
      #
      #   @option params [String] :token Customer-provided token that will serve as an idempotency token. This token will
      #     become the transaction token.
      #
      #   @option params [String] :memo
      #
      #   @option params [String] :user_defined_id
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::PaymentCreateResponse]
      def create(params)
        parsed, options = Lithic::Models::PaymentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/payments",
          body: parsed,
          model: Lithic::Models::PaymentCreateResponse,
          options: options
        )
      end

      # Get the payment by token.
      #
      # @param payment_token [String]
      #
      # @param params [Lithic::Models::PaymentRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::Payment]
      def retrieve(payment_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/payments/%1$s", payment_token],
          model: Lithic::Models::Payment,
          options: params[:request_options]
        )
      end

      # List all the payments for the provided search criteria.
      #
      # @param params [Lithic::Models::PaymentListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_token
      #
      #   @option params [Time] :begin_ Date string in RFC 3339 format. Only entries created after the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [String] :business_account_token
      #
      #   @option params [Symbol, Lithic::Models::PaymentListParams::Category] :category
      #
      #   @option params [Time] :end_ Date string in RFC 3339 format. Only entries created before the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [String] :ending_before A cursor representing an item's token before which a page of results should end.
      #     Used to retrieve the previous page of results before this item.
      #
      #   @option params [String] :financial_account_token
      #
      #   @option params [Integer] :page_size Page size (for pagination).
      #
      #   @option params [Symbol, Lithic::Models::PaymentListParams::Result] :result
      #
      #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
      #     begin. Used to retrieve the next page of results after this item.
      #
      #   @option params [Symbol, Lithic::Models::PaymentListParams::Status] :status
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::CursorPage<Lithic::Models::Payment>]
      def list(params = {})
        parsed, options = Lithic::Models::PaymentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/payments",
          query: parsed,
          page: Lithic::CursorPage,
          model: Lithic::Models::Payment,
          options: options
        )
      end

      # Retry an origination which has been returned.
      #
      # @param payment_token [String]
      #
      # @param params [Lithic::Models::PaymentRetryParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::PaymentRetryResponse]
      def retry_(payment_token, params = {})
        @client.request(
          method: :post,
          path: ["v1/payments/%1$s/retry", payment_token],
          model: Lithic::Models::PaymentRetryResponse,
          options: params[:request_options]
        )
      end

      # Simulate payment lifecycle event
      #
      # @param payment_token [String]
      #
      # @param params [Lithic::Models::PaymentSimulateActionParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, Lithic::Models::PaymentSimulateActionParams::EventType] :event_type Event Type
      #
      #   @option params [Symbol, Lithic::Models::PaymentSimulateActionParams::DeclineReason] :decline_reason Decline reason
      #
      #   @option params [String] :return_reason_code Return Reason Code
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::PaymentSimulateActionResponse]
      def simulate_action(payment_token, params)
        parsed, options = Lithic::Models::PaymentSimulateActionParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/simulate/payments/%1$s/action", payment_token],
          body: parsed,
          model: Lithic::Models::PaymentSimulateActionResponse,
          options: options
        )
      end

      # Simulates a receipt of a Payment.
      #
      # @param params [Lithic::Models::PaymentSimulateReceiptParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :token Payment token
      #
      #   @option params [Integer] :amount Amount
      #
      #   @option params [String] :financial_account_token Financial Account Token
      #
      #   @option params [Symbol, Lithic::Models::PaymentSimulateReceiptParams::ReceiptType] :receipt_type Receipt Type
      #
      #   @option params [String] :memo Memo
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::PaymentSimulateReceiptResponse]
      def simulate_receipt(params)
        parsed, options = Lithic::Models::PaymentSimulateReceiptParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/simulate/payments/receipt",
          body: parsed,
          model: Lithic::Models::PaymentSimulateReceiptResponse,
          options: options
        )
      end

      # Simulates a release of a Payment.
      #
      # @param params [Lithic::Models::PaymentSimulateReleaseParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :payment_token Payment Token
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::PaymentSimulateReleaseResponse]
      def simulate_release(params)
        parsed, options = Lithic::Models::PaymentSimulateReleaseParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/simulate/payments/release",
          body: parsed,
          model: Lithic::Models::PaymentSimulateReleaseResponse,
          options: options
        )
      end

      # Simulates a return of a Payment.
      #
      # @param params [Lithic::Models::PaymentSimulateReturnParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :payment_token Payment Token
      #
      #   @option params [String] :return_reason_code Return Reason Code
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::PaymentSimulateReturnResponse]
      def simulate_return(params)
        parsed, options = Lithic::Models::PaymentSimulateReturnParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/simulate/payments/return",
          body: parsed,
          model: Lithic::Models::PaymentSimulateReturnResponse,
          options: options
        )
      end

      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
