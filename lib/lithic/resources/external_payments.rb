# frozen_string_literal: true

module Lithic
  module Resources
    class ExternalPayments
      # Create external payment
      #
      # @param params [Lithic::Models::ExternalPaymentCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer] :amount
      #
      #   @option params [Symbol, Lithic::Models::ExternalPaymentCreateParams::Category] :category
      #
      #   @option params [Date] :effective_date
      #
      #   @option params [String] :financial_account_token
      #
      #   @option params [Symbol, Lithic::Models::ExternalPaymentCreateParams::PaymentType] :payment_type
      #
      #   @option params [String] :token
      #
      #   @option params [String] :memo
      #
      #   @option params [Symbol, Lithic::Models::ExternalPaymentCreateParams::ProgressTo] :progress_to
      #
      #   @option params [String] :user_defined_id
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::ExternalPayment]
      #
      # @see Lithic::Models::ExternalPaymentCreateParams
      def create(params)
        parsed, options = Lithic::Models::ExternalPaymentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/external_payments",
          body: parsed,
          model: Lithic::Models::ExternalPayment,
          options: options
        )
      end

      # Get external payment
      #
      # @param external_payment_token [String] Globally unique identifier for the external payment
      #
      # @param params [Lithic::Models::ExternalPaymentRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::ExternalPayment]
      #
      # @see Lithic::Models::ExternalPaymentRetrieveParams
      def retrieve(external_payment_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/external_payments/%1$s", external_payment_token],
          model: Lithic::Models::ExternalPayment,
          options: params[:request_options]
        )
      end

      # List external payments
      #
      # @param params [Lithic::Models::ExternalPaymentListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Time] :begin_ Date string in RFC 3339 format. Only entries created after the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [String] :business_account_token
      #
      #   @option params [Symbol, Lithic::Models::ExternalPaymentListParams::Category] :category External Payment category to be returned.
      #
      #   @option params [Time] :end_ Date string in RFC 3339 format. Only entries created before the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [String] :ending_before A cursor representing an item's token before which a page of results should end.
      #     Used to retrieve the previous page of results before this item.
      #
      #   @option params [String] :financial_account_token Globally unique identifier for the financial account or card that will send the
      #     funds. Accepted type dependent on the program's use case.
      #
      #   @option params [Integer] :page_size Page size (for pagination).
      #
      #   @option params [Symbol, Lithic::Models::ExternalPaymentListParams::Result] :result External Payment result to be returned.
      #
      #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
      #     begin. Used to retrieve the next page of results after this item.
      #
      #   @option params [Symbol, Lithic::Models::ExternalPaymentListParams::Status] :status Book transfer status to be returned.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::CursorPage<Lithic::Models::ExternalPayment>]
      #
      # @see Lithic::Models::ExternalPaymentListParams
      def list(params = {})
        parsed, options = Lithic::Models::ExternalPaymentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/external_payments",
          query: parsed,
          page: Lithic::CursorPage,
          model: Lithic::Models::ExternalPayment,
          options: options
        )
      end

      # Cancel external payment
      #
      # @param external_payment_token [String] Globally unique identifier for the external payment
      #
      # @param params [Lithic::Models::ExternalPaymentCancelParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Date] :effective_date
      #
      #   @option params [String] :memo
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::ExternalPayment]
      #
      # @see Lithic::Models::ExternalPaymentCancelParams
      def cancel(external_payment_token, params)
        parsed, options = Lithic::Models::ExternalPaymentCancelParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/external_payments/%1$s/cancel", external_payment_token],
          body: parsed,
          model: Lithic::Models::ExternalPayment,
          options: options
        )
      end

      # Release external payment
      #
      # @param external_payment_token [String] Globally unique identifier for the external payment
      #
      # @param params [Lithic::Models::ExternalPaymentReleaseParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Date] :effective_date
      #
      #   @option params [String] :memo
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::ExternalPayment]
      #
      # @see Lithic::Models::ExternalPaymentReleaseParams
      def release(external_payment_token, params)
        parsed, options = Lithic::Models::ExternalPaymentReleaseParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/external_payments/%1$s/release", external_payment_token],
          body: parsed,
          model: Lithic::Models::ExternalPayment,
          options: options
        )
      end

      # Reverse external payment
      #
      # @param external_payment_token [String] Globally unique identifier for the external payment
      #
      # @param params [Lithic::Models::ExternalPaymentReverseParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Date] :effective_date
      #
      #   @option params [String] :memo
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::ExternalPayment]
      #
      # @see Lithic::Models::ExternalPaymentReverseParams
      def reverse(external_payment_token, params)
        parsed, options = Lithic::Models::ExternalPaymentReverseParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/external_payments/%1$s/reverse", external_payment_token],
          body: parsed,
          model: Lithic::Models::ExternalPayment,
          options: options
        )
      end

      # Settle external payment
      #
      # @param external_payment_token [String] Globally unique identifier for the external payment
      #
      # @param params [Lithic::Models::ExternalPaymentSettleParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Date] :effective_date
      #
      #   @option params [String] :memo
      #
      #   @option params [Symbol, Lithic::Models::ExternalPaymentSettleParams::ProgressTo] :progress_to
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::ExternalPayment]
      #
      # @see Lithic::Models::ExternalPaymentSettleParams
      def settle(external_payment_token, params)
        parsed, options = Lithic::Models::ExternalPaymentSettleParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/external_payments/%1$s/settle", external_payment_token],
          body: parsed,
          model: Lithic::Models::ExternalPayment,
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
