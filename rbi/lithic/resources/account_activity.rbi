# typed: strong

module Lithic
  module Resources
    class AccountActivity
      # Retrieve a list of transactions across all public accounts.
      sig do
        params(
          begin_: Time,
          business_account_token: String,
          category: Lithic::AccountActivityListParams::Category::OrSymbol,
          end_: Time,
          ending_before: String,
          financial_account_token: String,
          page_size: Integer,
          result: T::Array[Lithic::AccountActivityListParams::Result::OrSymbol],
          starting_after: String,
          status: T::Array[Lithic::AccountActivityListParams::Status::OrSymbol],
          request_options: Lithic::RequestOptions::OrHash
        ).returns(
          Lithic::Internal::CursorPage[
            Lithic::Models::AccountActivityListResponse::Variants
          ]
        )
      end
      def list(
        # Date string in RFC 3339 format. Only entries created after the specified time
        # will be included. UTC time zone.
        begin_: nil,
        # Filter by business account token
        business_account_token: nil,
        # Filter by transaction category
        category: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        # will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # Filter by financial account token
        financial_account_token: nil,
        # Page size (for pagination).
        page_size: nil,
        # Filter by transaction result
        result: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        # Filter by transaction status
        status: nil,
        request_options: {}
      )
      end

      # Retrieve a single transaction
      sig do
        params(
          transaction_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(
          Lithic::Models::AccountActivityRetrieveTransactionResponse::Variants
        )
      end
      def retrieve_transaction(
        # The unique identifier for the transaction
        transaction_token,
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
