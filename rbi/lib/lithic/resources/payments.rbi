# typed: strong

module Lithic
  module Resources
    class Payments
      # Initiates a payment between a financial account and an external bank account.
      sig do
        params(
          amount: Integer,
          external_bank_account_token: String,
          financial_account_token: String,
          method_: Lithic::Models::PaymentCreateParams::Method::OrSymbol,
          method_attributes: T.any(Lithic::Models::PaymentCreateParams::MethodAttributes, Lithic::Internal::AnyHash),
          type: Lithic::Models::PaymentCreateParams::Type::OrSymbol,
          token: String,
          memo: String,
          user_defined_id: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::PaymentCreateResponse)
      end
      def create(
        amount:,
        external_bank_account_token:,
        financial_account_token:,
        method_:,
        method_attributes:,
        type:,
        # Customer-provided token that will serve as an idempotency token. This token will
        #   become the transaction token.
        token: nil,
        memo: nil,
        user_defined_id: nil,
        request_options: {}
      )
      end

      # Get the payment by token.
      sig do
        params(
          payment_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::Payment)
      end
      def retrieve(payment_token, request_options: {})
      end

      # List all the payments for the provided search criteria.
      sig do
        params(
          account_token: String,
          begin_: Time,
          business_account_token: String,
          category: Lithic::Models::PaymentListParams::Category::OrSymbol,
          end_: Time,
          ending_before: String,
          financial_account_token: String,
          page_size: Integer,
          result: Lithic::Models::PaymentListParams::Result::OrSymbol,
          starting_after: String,
          status: Lithic::Models::PaymentListParams::Status::OrSymbol,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Internal::CursorPage[Lithic::Models::Payment])
      end
      def list(
        account_token: nil,
        # Date string in RFC 3339 format. Only entries created after the specified time
        #   will be included. UTC time zone.
        begin_: nil,
        business_account_token: nil,
        category: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        #   will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        #   Used to retrieve the previous page of results before this item.
        ending_before: nil,
        financial_account_token: nil,
        # Page size (for pagination).
        page_size: nil,
        result: nil,
        # A cursor representing an item's token after which a page of results should
        #   begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        status: nil,
        request_options: {}
      )
      end

      # Retry an origination which has been returned.
      sig do
        params(
          payment_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::PaymentRetryResponse)
      end
      def retry_(payment_token, request_options: {})
      end

      # Simulate payment lifecycle event
      sig do
        params(
          payment_token: String,
          event_type: Lithic::Models::PaymentSimulateActionParams::EventType::OrSymbol,
          decline_reason: Lithic::Models::PaymentSimulateActionParams::DeclineReason::OrSymbol,
          return_reason_code: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::PaymentSimulateActionResponse)
      end
      def simulate_action(
        payment_token,
        # Event Type
        event_type:,
        # Decline reason
        decline_reason: nil,
        # Return Reason Code
        return_reason_code: nil,
        request_options: {}
      )
      end

      # Simulates a receipt of a Payment.
      sig do
        params(
          token: String,
          amount: Integer,
          financial_account_token: String,
          receipt_type: Lithic::Models::PaymentSimulateReceiptParams::ReceiptType::OrSymbol,
          memo: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::PaymentSimulateReceiptResponse)
      end
      def simulate_receipt(
        # Payment token
        token:,
        # Amount
        amount:,
        # Financial Account Token
        financial_account_token:,
        # Receipt Type
        receipt_type:,
        # Memo
        memo: nil,
        request_options: {}
      )
      end

      # Simulates a release of a Payment.
      sig do
        params(
          payment_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::PaymentSimulateReleaseResponse)
      end
      def simulate_release(
        # Payment Token
        payment_token:,
        request_options: {}
      )
      end

      # Simulates a return of a Payment.
      sig do
        params(
          payment_token: String,
          return_reason_code: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::PaymentSimulateReturnResponse)
      end
      def simulate_return(
        # Payment Token
        payment_token:,
        # Return Reason Code
        return_reason_code: nil,
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
