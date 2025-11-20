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
          method_: Lithic::PaymentCreateParams::Method::OrSymbol,
          method_attributes:
            Lithic::PaymentCreateParams::MethodAttributes::OrHash,
          type: Lithic::PaymentCreateParams::Type::OrSymbol,
          token: String,
          memo: String,
          user_defined_id: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Models::PaymentCreateResponse)
      end
      def create(
        amount:,
        external_bank_account_token:,
        financial_account_token:,
        method_:,
        method_attributes:,
        type:,
        # Customer-provided token that will serve as an idempotency token. This token will
        # become the transaction token.
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
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Payment)
      end
      def retrieve(payment_token, request_options: {})
      end

      # List all the payments for the provided search criteria.
      sig do
        params(
          account_token: String,
          begin_: Time,
          business_account_token: String,
          category: Lithic::PaymentListParams::Category::OrSymbol,
          end_: Time,
          ending_before: String,
          financial_account_token: String,
          page_size: Integer,
          result: Lithic::PaymentListParams::Result::OrSymbol,
          starting_after: String,
          status: Lithic::PaymentListParams::Status::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Internal::CursorPage[Lithic::Payment])
      end
      def list(
        account_token: nil,
        # Date string in RFC 3339 format. Only entries created after the specified time
        # will be included. UTC time zone.
        begin_: nil,
        business_account_token: nil,
        category: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        # will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        financial_account_token: nil,
        # Page size (for pagination).
        page_size: nil,
        result: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        status: nil,
        request_options: {}
      )
      end

      # Retry an origination which has been returned.
      sig do
        params(
          payment_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Models::PaymentRetryResponse)
      end
      def retry_(payment_token, request_options: {})
      end

      # Return an ACH payment with a specified return reason code. Returns must be
      # initiated within the time window specified by NACHA rules for each return code
      # (typically 2 banking days for most codes, 60 calendar days for unauthorized
      # debits). For a complete list of return codes and their meanings, see the
      # [ACH Return Reasons documentation](https://docs.lithic.com/docs/ach-overview#ach-return-reasons).
      #
      # Note:
      #
      # - This endpoint does not modify the state of the financial account associated
      #   with the payment. If you would like to change the account state, use the
      #   [Update financial account status](https://docs.lithic.com/reference/updatefinancialaccountstatus)
      #   endpoint.
      # - By default this endpoint is not enabled for your account. Please contact your
      #   implementations manager to enable this feature.
      sig do
        params(
          payment_token: String,
          financial_account_token: String,
          return_reason_code: String,
          addenda: T.nilable(String),
          date_of_death: T.nilable(Date),
          memo: T.nilable(String),
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Payment)
      end
      def return_(
        payment_token,
        # Globally unique identifier for the financial account
        financial_account_token:,
        # ACH return reason code indicating the reason for returning the payment.
        # Supported codes include R01-R53 and R80-R85. For a complete list of return codes
        # and their meanings, see
        # [ACH Return Reasons](https://docs.lithic.com/docs/ach-overview#ach-return-reasons)
        return_reason_code:,
        # Optional additional information about the return. Limited to 44 characters
        addenda: nil,
        # Date of death in YYYY-MM-DD format. Required when using return codes **R14**
        # (representative payee deceased) or **R15** (beneficiary or account holder
        # deceased)
        date_of_death: nil,
        # Optional memo for the return. Limited to 10 characters
        memo: nil,
        request_options: {}
      )
      end

      # Simulate payment lifecycle event
      sig do
        params(
          payment_token: String,
          event_type: Lithic::PaymentSimulateActionParams::EventType::OrSymbol,
          date_of_death: Date,
          decline_reason:
            Lithic::PaymentSimulateActionParams::DeclineReason::OrSymbol,
          return_addenda: String,
          return_reason_code: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Models::PaymentSimulateActionResponse)
      end
      def simulate_action(
        payment_token,
        # Event Type
        event_type:,
        # Date of Death for ACH Return
        date_of_death: nil,
        # Decline reason
        decline_reason: nil,
        # Return Addenda
        return_addenda: nil,
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
          receipt_type:
            Lithic::PaymentSimulateReceiptParams::ReceiptType::OrSymbol,
          memo: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Models::PaymentSimulateReceiptResponse)
      end
      def simulate_receipt(
        # Customer-generated payment token used to uniquely identify the simulated payment
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
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Models::PaymentSimulateReleaseResponse)
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
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Models::PaymentSimulateReturnResponse)
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
