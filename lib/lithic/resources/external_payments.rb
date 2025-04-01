# frozen_string_literal: true

module Lithic
  module Resources
    class ExternalPayments
      # Create external payment
      #
      # @overload create(amount:, category:, effective_date:, financial_account_token:, payment_type:, token: nil, memo: nil, progress_to: nil, user_defined_id: nil, request_options: {})
      #
      # @param amount [Integer]
      # @param category [Symbol, Lithic::Models::ExternalPaymentCreateParams::Category]
      # @param effective_date [Date]
      # @param financial_account_token [String]
      # @param payment_type [Symbol, Lithic::Models::ExternalPaymentCreateParams::PaymentType]
      # @param token [String]
      # @param memo [String]
      # @param progress_to [Symbol, Lithic::Models::ExternalPaymentCreateParams::ProgressTo]
      # @param user_defined_id [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload retrieve(external_payment_token, request_options: {})
      #
      # @param external_payment_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload list(begin_: nil, business_account_token: nil, category: nil, end_: nil, ending_before: nil, financial_account_token: nil, page_size: nil, result: nil, starting_after: nil, status: nil, request_options: {})
      #
      # @param begin_ [Time]
      # @param business_account_token [String]
      # @param category [Symbol, Lithic::Models::ExternalPaymentListParams::Category]
      # @param end_ [Time]
      # @param ending_before [String]
      # @param financial_account_token [String]
      # @param page_size [Integer]
      # @param result [Symbol, Lithic::Models::ExternalPaymentListParams::Result]
      # @param starting_after [String]
      # @param status [Symbol, Lithic::Models::ExternalPaymentListParams::Status]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload cancel(external_payment_token, effective_date:, memo: nil, request_options: {})
      #
      # @param external_payment_token [String]
      # @param effective_date [Date]
      # @param memo [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload release(external_payment_token, effective_date:, memo: nil, request_options: {})
      #
      # @param external_payment_token [String]
      # @param effective_date [Date]
      # @param memo [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload reverse(external_payment_token, effective_date:, memo: nil, request_options: {})
      #
      # @param external_payment_token [String]
      # @param effective_date [Date]
      # @param memo [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload settle(external_payment_token, effective_date:, memo: nil, progress_to: nil, request_options: {})
      #
      # @param external_payment_token [String]
      # @param effective_date [Date]
      # @param memo [String]
      # @param progress_to [Symbol, Lithic::Models::ExternalPaymentSettleParams::ProgressTo]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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
