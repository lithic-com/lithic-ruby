# typed: strong

module Lithic
  module Resources
    class Accounts
      # Get account configuration such as spend limits.
      sig do
        params(
          account_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::Account)
      end
      def retrieve(
        # Globally unique identifier for account.
        account_token,
        request_options: {}
      ); end
      # Update account configuration such as state or spend limits. Can only be run on
      #   accounts that are part of the program managed by this API key. Accounts that are
      #   in the `PAUSED` state will not be able to transact or create new cards.
      sig do
        params(
          account_token: String,
          daily_spend_limit: Integer,
          lifetime_spend_limit: Integer,
          monthly_spend_limit: Integer,
          state: Lithic::Models::AccountUpdateParams::State::OrSymbol,
          verification_address: T.any(Lithic::Models::AccountUpdateParams::VerificationAddress, Lithic::Internal::AnyHash),
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::Account)
      end
      def update(
        # Globally unique identifier for account.
        account_token,
        # Amount (in cents) for the account's daily spend limit (e.g. 100000 would be a
        #   $1,000 limit). By default the daily spend limit is set to $1,250.
        daily_spend_limit: nil,
        # Amount (in cents) for the account's lifetime spend limit (e.g. 100000 would be a
        #   $1,000 limit). Once this limit is reached, no transactions will be accepted on
        #   any card created for this account until the limit is updated. Note that a spend
        #   limit of 0 is effectively no limit, and should only be used to reset or remove a
        #   prior limit. Only a limit of 1 or above will result in declined transactions due
        #   to checks against the account limit. This behavior differs from the daily spend
        #   limit and the monthly spend limit.
        lifetime_spend_limit: nil,
        # Amount (in cents) for the account's monthly spend limit (e.g. 100000 would be a
        #   $1,000 limit). By default the monthly spend limit is set to $5,000.
        monthly_spend_limit: nil,
        # Account states.
        state: nil,
        # Address used during Address Verification Service (AVS) checks during
        #   transactions if enabled via Auth Rules. This field is deprecated as AVS checks
        #   are no longer supported by Authorization Rules. The field will be removed from
        #   the schema in a future release.
        verification_address: nil,
        request_options: {}
      ); end
      # List account configurations.
      sig do
        params(
          begin_: Time,
          end_: Time,
          ending_before: String,
          page_size: Integer,
          starting_after: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Internal::CursorPage[Lithic::Models::Account])
      end
      def list(
        # Date string in RFC 3339 format. Only entries created after the specified time
        #   will be included. UTC time zone.
        begin_: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        #   will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        #   Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # Page size (for pagination).
        page_size: nil,
        # A cursor representing an item's token after which a page of results should
        #   begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        request_options: {}
      ); end
      # Get an Account's available spend limits, which is based on the spend limit
      #   configured on the Account and the amount already spent over the spend limit's
      #   duration. For example, if the Account has a daily spend limit of $1000
      #   configured, and has spent $600 in the last 24 hours, the available spend limit
      #   returned would be $400.
      sig do
        params(
          account_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::AccountSpendLimits)
      end
      def retrieve_spend_limits(
        # Globally unique identifier for account.
        account_token,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
