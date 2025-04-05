# frozen_string_literal: true

module Lithic
  module Resources
    class Payments
      # Initiates a payment between a financial account and an external bank account.
      #
      # @overload create(amount:, external_bank_account_token:, financial_account_token:, method_:, method_attributes:, type:, token: nil, memo: nil, user_defined_id: nil, request_options: {})
      #
      # @param amount [Integer]
      # @param external_bank_account_token [String]
      # @param financial_account_token [String]
      # @param method_ [Symbol, Lithic::Models::PaymentCreateParams::Method]
      # @param method_attributes [Lithic::Models::PaymentCreateParams::MethodAttributes]
      # @param type [Symbol, Lithic::Models::PaymentCreateParams::Type]
      # @param token [String]
      # @param memo [String]
      # @param user_defined_id [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::PaymentCreateResponse]
      #
      # @see Lithic::Models::PaymentCreateParams
      def create(params)
        parsed, options = Lithic::Models::PaymentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/payments",
          body: parsed.transform_keys(method_: :method),
          model: Lithic::Models::PaymentCreateResponse,
          options: options
        )
      end

      # Get the payment by token.
      #
      # @overload retrieve(payment_token, request_options: {})
      #
      # @param payment_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::Payment]
      #
      # @see Lithic::Models::PaymentRetrieveParams
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
      # @overload list(account_token: nil, begin_: nil, business_account_token: nil, category: nil, end_: nil, ending_before: nil, financial_account_token: nil, page_size: nil, result: nil, starting_after: nil, status: nil, request_options: {})
      #
      # @param account_token [String]
      # @param begin_ [Time]
      # @param business_account_token [String]
      # @param category [Symbol, Lithic::Models::PaymentListParams::Category]
      # @param end_ [Time]
      # @param ending_before [String]
      # @param financial_account_token [String]
      # @param page_size [Integer]
      # @param result [Symbol, Lithic::Models::PaymentListParams::Result]
      # @param starting_after [String]
      # @param status [Symbol, Lithic::Models::PaymentListParams::Status]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::Payment>]
      #
      # @see Lithic::Models::PaymentListParams
      def list(params = {})
        parsed, options = Lithic::Models::PaymentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/payments",
          query: parsed.transform_keys(begin_: :begin, end_: :end),
          page: Lithic::Internal::CursorPage,
          model: Lithic::Models::Payment,
          options: options
        )
      end

      # Retry an origination which has been returned.
      #
      # @overload retry_(payment_token, request_options: {})
      #
      # @param payment_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::PaymentRetryResponse]
      #
      # @see Lithic::Models::PaymentRetryParams
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
      # @overload simulate_action(payment_token, event_type:, decline_reason: nil, return_reason_code: nil, request_options: {})
      #
      # @param payment_token [String]
      # @param event_type [Symbol, Lithic::Models::PaymentSimulateActionParams::EventType]
      # @param decline_reason [Symbol, Lithic::Models::PaymentSimulateActionParams::DeclineReason]
      # @param return_reason_code [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::PaymentSimulateActionResponse]
      #
      # @see Lithic::Models::PaymentSimulateActionParams
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
      # @overload simulate_receipt(token:, amount:, financial_account_token:, receipt_type:, memo: nil, request_options: {})
      #
      # @param token [String]
      # @param amount [Integer]
      # @param financial_account_token [String]
      # @param receipt_type [Symbol, Lithic::Models::PaymentSimulateReceiptParams::ReceiptType]
      # @param memo [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::PaymentSimulateReceiptResponse]
      #
      # @see Lithic::Models::PaymentSimulateReceiptParams
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
      # @overload simulate_release(payment_token:, request_options: {})
      #
      # @param payment_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::PaymentSimulateReleaseResponse]
      #
      # @see Lithic::Models::PaymentSimulateReleaseParams
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
      # @overload simulate_return(payment_token:, return_reason_code: nil, request_options: {})
      #
      # @param payment_token [String]
      # @param return_reason_code [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::PaymentSimulateReturnResponse]
      #
      # @see Lithic::Models::PaymentSimulateReturnParams
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

      # @api private
      #
      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
