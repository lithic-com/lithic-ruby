# typed: strong

module Lithic
  module Resources
    class BookTransfers
      # Book transfer funds between two financial accounts or between a financial
      # account and card
      sig do
        params(
          amount: Integer,
          category: Lithic::BookTransferCreateParams::Category::OrSymbol,
          from_financial_account_token: String,
          subtype: String,
          to_financial_account_token: String,
          type: Lithic::BookTransferCreateParams::Type::OrSymbol,
          token: String,
          external_id: String,
          memo: String,
          on_closed_account:
            Lithic::BookTransferCreateParams::OnClosedAccount::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::BookTransferResponse)
      end
      def create(
        # Amount to be transferred in the currency's smallest unit (e.g., cents for USD).
        # This should always be a positive value.
        amount:,
        category:,
        # Globally unique identifier for the financial account or card that will send the
        # funds. Accepted type dependent on the program's use case.
        from_financial_account_token:,
        # The program specific subtype code for the specified category/type.
        subtype:,
        # Globally unique identifier for the financial account or card that will receive
        # the funds. Accepted type dependent on the program's use case.
        to_financial_account_token:,
        # Type of the book transfer
        type:,
        # Customer-provided token that will serve as an idempotency token. This token will
        # become the transaction token.
        token: nil,
        # External ID defined by the customer
        external_id: nil,
        # Optional descriptor for the transfer.
        memo: nil,
        # What to do if the financial account is closed when posting an operation
        on_closed_account: nil,
        request_options: {}
      )
      end

      # Get book transfer by token
      sig do
        params(
          book_transfer_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::BookTransferResponse)
      end
      def retrieve(
        # Id of the book transfer to retrieve
        book_transfer_token,
        request_options: {}
      )
      end

      # List book transfers
      sig do
        params(
          account_token: String,
          begin_: Time,
          business_account_token: String,
          category: Lithic::BookTransferListParams::Category::OrSymbol,
          end_: Time,
          ending_before: String,
          financial_account_token: String,
          page_size: Integer,
          result: Lithic::BookTransferListParams::Result::OrSymbol,
          starting_after: String,
          status: Lithic::BookTransferListParams::Status::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Internal::CursorPage[Lithic::BookTransferResponse])
      end
      def list(
        account_token: nil,
        # Date string in RFC 3339 format. Only entries created after the specified time
        # will be included. UTC time zone.
        begin_: nil,
        business_account_token: nil,
        # Book Transfer category to be returned.
        category: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        # will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # Globally unique identifier for the financial account or card that will send the
        # funds. Accepted type dependent on the program's use case.
        financial_account_token: nil,
        # Page size (for pagination).
        page_size: nil,
        # Book transfer result to be returned.
        result: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        # Book transfer status to be returned.
        status: nil,
        request_options: {}
      )
      end

      # Retry a book transfer that has been declined
      sig do
        params(
          book_transfer_token: String,
          retry_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::BookTransferResponse)
      end
      def retry_(
        # Token of the book transfer to retry
        book_transfer_token,
        # Globally unique identifier for the retry.
        retry_token:,
        request_options: {}
      )
      end

      # Reverse a book transfer
      sig do
        params(
          book_transfer_token: String,
          memo: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::BookTransferResponse)
      end
      def reverse(
        # Id of the book transfer to retrieve
        book_transfer_token,
        # Optional descriptor for the reversal.
        memo: nil,
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
