# typed: strong

module Lithic
  module Resources
    class Holds
      # Create a hold on a financial account. Holds reserve funds by moving them from
      # available to pending balance. They can be resolved via settlement (linked to a
      # payment or book transfer), voiding, or expiration.
      sig do
        params(
          financial_account_token: String,
          amount: Integer,
          token: String,
          expiration_datetime: Time,
          memo: T.nilable(String),
          user_defined_id: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Hold)
      end
      def create(
        # Globally unique identifier for the financial account.
        financial_account_token,
        # Amount to hold in cents
        amount:,
        # Customer-provided token for idempotency. Becomes the hold token.
        token: nil,
        # When the hold should auto-expire
        expiration_datetime: nil,
        # Reason for the hold
        memo: nil,
        # User-provided identifier for the hold
        user_defined_id: nil,
        request_options: {}
      )
      end

      # Get hold by token.
      sig do
        params(
          hold_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Hold)
      end
      def retrieve(
        # Globally unique identifier for the hold.
        hold_token,
        request_options: {}
      )
      end

      # List holds for a financial account.
      sig do
        params(
          financial_account_token: String,
          begin_: Time,
          end_: Time,
          ending_before: String,
          page_size: Integer,
          starting_after: String,
          status: Lithic::HoldListParams::Status::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Internal::CursorPage[Lithic::Hold])
      end
      def list(
        # Globally unique identifier for the financial account.
        financial_account_token,
        # Date string in RFC 3339 format. Only entries created after the specified time
        # will be included. UTC time zone.
        begin_: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        # will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # Page size (for pagination).
        page_size: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        # Hold status to filter by.
        status: nil,
        request_options: {}
      )
      end

      # Void an active hold. This returns the held funds from pending back to available
      # balance. Only holds in PENDING status can be voided.
      sig do
        params(
          hold_token: String,
          memo: T.nilable(String),
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Hold)
      end
      def void(
        # Globally unique identifier for the hold.
        hold_token,
        # Reason for voiding the hold
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
