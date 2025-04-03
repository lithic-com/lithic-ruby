# typed: strong

module Lithic
  module Resources
    class ExternalPayments
      # Create external payment
      sig do
        params(
          amount: Integer,
          category: Lithic::Models::ExternalPaymentCreateParams::Category::OrSymbol,
          effective_date: Date,
          financial_account_token: String,
          payment_type: Lithic::Models::ExternalPaymentCreateParams::PaymentType::OrSymbol,
          token: String,
          memo: String,
          progress_to: Lithic::Models::ExternalPaymentCreateParams::ProgressTo::OrSymbol,
          user_defined_id: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::Util::AnyHash))
        )
          .returns(Lithic::Models::ExternalPayment)
      end
      def create(
        amount:,
        category:,
        effective_date:,
        financial_account_token:,
        payment_type:,
        token: nil,
        memo: nil,
        progress_to: nil,
        user_defined_id: nil,
        request_options: {}
      )
      end

      # Get external payment
      sig do
        params(
          external_payment_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::Util::AnyHash))
        )
          .returns(Lithic::Models::ExternalPayment)
      end
      def retrieve(
        # Globally unique identifier for the external payment
        external_payment_token,
        request_options: {}
      )
      end

      # List external payments
      sig do
        params(
          begin_: Time,
          business_account_token: String,
          category: Lithic::Models::ExternalPaymentListParams::Category::OrSymbol,
          end_: Time,
          ending_before: String,
          financial_account_token: String,
          page_size: Integer,
          result: Lithic::Models::ExternalPaymentListParams::Result::OrSymbol,
          starting_after: String,
          status: Lithic::Models::ExternalPaymentListParams::Status::OrSymbol,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::Util::AnyHash))
        )
          .returns(Lithic::Internal::CursorPage[Lithic::Models::ExternalPayment])
      end
      def list(
        # Date string in RFC 3339 format. Only entries created after the specified time
        #   will be included. UTC time zone.
        begin_: nil,
        business_account_token: nil,
        # External Payment category to be returned.
        category: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        #   will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        #   Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # Globally unique identifier for the financial account or card that will send the
        #   funds. Accepted type dependent on the program's use case.
        financial_account_token: nil,
        # Page size (for pagination).
        page_size: nil,
        # External Payment result to be returned.
        result: nil,
        # A cursor representing an item's token after which a page of results should
        #   begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        # Book transfer status to be returned.
        status: nil,
        request_options: {}
      )
      end

      # Cancel external payment
      sig do
        params(
          external_payment_token: String,
          effective_date: Date,
          memo: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::Util::AnyHash))
        )
          .returns(Lithic::Models::ExternalPayment)
      end
      def cancel(
        # Globally unique identifier for the external payment
        external_payment_token,
        effective_date:,
        memo: nil,
        request_options: {}
      )
      end

      # Release external payment
      sig do
        params(
          external_payment_token: String,
          effective_date: Date,
          memo: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::Util::AnyHash))
        )
          .returns(Lithic::Models::ExternalPayment)
      end
      def release(
        # Globally unique identifier for the external payment
        external_payment_token,
        effective_date:,
        memo: nil,
        request_options: {}
      )
      end

      # Reverse external payment
      sig do
        params(
          external_payment_token: String,
          effective_date: Date,
          memo: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::Util::AnyHash))
        )
          .returns(Lithic::Models::ExternalPayment)
      end
      def reverse(
        # Globally unique identifier for the external payment
        external_payment_token,
        effective_date:,
        memo: nil,
        request_options: {}
      )
      end

      # Settle external payment
      sig do
        params(
          external_payment_token: String,
          effective_date: Date,
          memo: String,
          progress_to: Lithic::Models::ExternalPaymentSettleParams::ProgressTo::OrSymbol,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::Util::AnyHash))
        )
          .returns(Lithic::Models::ExternalPayment)
      end
      def settle(
        # Globally unique identifier for the external payment
        external_payment_token,
        effective_date:,
        memo: nil,
        progress_to: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
