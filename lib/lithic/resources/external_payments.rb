# frozen_string_literal: true

module Lithic
  module Resources
    class ExternalPayments
      # Some parameter documentations has been truncated, see
      # {Lithic::Models::ExternalPaymentCreateParams} for more details.
      #
      # Create external payment
      #
      # @overload create(amount:, category:, effective_date:, financial_account_token:, payment_type:, token: nil, memo: nil, progress_to: nil, user_defined_id: nil, request_options: {})
      #
      # @param amount [Integer]
      #
      # @param category [Symbol, Lithic::Models::ExternalPaymentCreateParams::Category]
      #
      # @param effective_date [Date]
      #
      # @param financial_account_token [String]
      #
      # @param payment_type [Symbol, Lithic::Models::ExternalPaymentCreateParams::PaymentType]
      #
      # @param token [String] Customer-provided token that will serve as an idempotency token. This token will
      #
      # @param memo [String]
      #
      # @param progress_to [Symbol, Lithic::Models::ExternalPaymentCreateParams::ProgressTo]
      #
      # @param user_defined_id [String]
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::ExternalPayment]
      #
      # @see Lithic::Models::ExternalPaymentCreateParams
      def create(params)
        parsed, options = Lithic::ExternalPaymentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/external_payments",
          body: parsed,
          model: Lithic::ExternalPayment,
          options: options
        )
      end

      # Get external payment
      #
      # @overload retrieve(external_payment_token, request_options: {})
      #
      # @param external_payment_token [String] Globally unique identifier for the external payment
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::ExternalPayment]
      #
      # @see Lithic::Models::ExternalPaymentRetrieveParams
      def retrieve(external_payment_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/external_payments/%1$s", external_payment_token],
          model: Lithic::ExternalPayment,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::ExternalPaymentListParams} for more details.
      #
      # List external payments
      #
      # @overload list(begin_: nil, business_account_token: nil, category: nil, end_: nil, ending_before: nil, financial_account_token: nil, page_size: nil, result: nil, starting_after: nil, status: nil, request_options: {})
      #
      # @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
      #
      # @param business_account_token [String]
      #
      # @param category [Symbol, Lithic::Models::ExternalPaymentListParams::Category] External Payment category to be returned.
      #
      # @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
      #
      # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      #
      # @param financial_account_token [String] Globally unique identifier for the financial account or card that will send the
      #
      # @param page_size [Integer] Page size (for pagination).
      #
      # @param result [Symbol, Lithic::Models::ExternalPaymentListParams::Result] External Payment result to be returned.
      #
      # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      #
      # @param status [Symbol, Lithic::Models::ExternalPaymentListParams::Status] Book transfer status to be returned.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::ExternalPayment>]
      #
      # @see Lithic::Models::ExternalPaymentListParams
      def list(params = {})
        parsed, options = Lithic::ExternalPaymentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/external_payments",
          query: parsed.transform_keys(begin_: "begin", end_: "end"),
          page: Lithic::Internal::CursorPage,
          model: Lithic::ExternalPayment,
          options: options
        )
      end

      # Cancel external payment
      #
      # @overload cancel(external_payment_token, effective_date:, memo: nil, request_options: {})
      #
      # @param external_payment_token [String] Globally unique identifier for the external payment
      #
      # @param effective_date [Date]
      #
      # @param memo [String]
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::ExternalPayment]
      #
      # @see Lithic::Models::ExternalPaymentCancelParams
      def cancel(external_payment_token, params)
        parsed, options = Lithic::ExternalPaymentCancelParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/external_payments/%1$s/cancel", external_payment_token],
          body: parsed,
          model: Lithic::ExternalPayment,
          options: options
        )
      end

      # Release external payment
      #
      # @overload release(external_payment_token, effective_date:, memo: nil, request_options: {})
      #
      # @param external_payment_token [String] Globally unique identifier for the external payment
      #
      # @param effective_date [Date]
      #
      # @param memo [String]
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::ExternalPayment]
      #
      # @see Lithic::Models::ExternalPaymentReleaseParams
      def release(external_payment_token, params)
        parsed, options = Lithic::ExternalPaymentReleaseParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/external_payments/%1$s/release", external_payment_token],
          body: parsed,
          model: Lithic::ExternalPayment,
          options: options
        )
      end

      # Reverse external payment
      #
      # @overload reverse(external_payment_token, effective_date:, memo: nil, request_options: {})
      #
      # @param external_payment_token [String] Globally unique identifier for the external payment
      #
      # @param effective_date [Date]
      #
      # @param memo [String]
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::ExternalPayment]
      #
      # @see Lithic::Models::ExternalPaymentReverseParams
      def reverse(external_payment_token, params)
        parsed, options = Lithic::ExternalPaymentReverseParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/external_payments/%1$s/reverse", external_payment_token],
          body: parsed,
          model: Lithic::ExternalPayment,
          options: options
        )
      end

      # Settle external payment
      #
      # @overload settle(external_payment_token, effective_date:, memo: nil, progress_to: nil, request_options: {})
      #
      # @param external_payment_token [String] Globally unique identifier for the external payment
      #
      # @param effective_date [Date]
      #
      # @param memo [String]
      #
      # @param progress_to [Symbol, Lithic::Models::ExternalPaymentSettleParams::ProgressTo]
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::ExternalPayment]
      #
      # @see Lithic::Models::ExternalPaymentSettleParams
      def settle(external_payment_token, params)
        parsed, options = Lithic::ExternalPaymentSettleParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/external_payments/%1$s/settle", external_payment_token],
          body: parsed,
          model: Lithic::ExternalPayment,
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
