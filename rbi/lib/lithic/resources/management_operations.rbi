# typed: strong

module Lithic
  module Resources
    class ManagementOperations
      # Create management operation
      sig do
        params(
          amount: Integer,
          category: Lithic::Models::ManagementOperationCreateParams::Category::OrSymbol,
          direction: Lithic::Models::ManagementOperationCreateParams::Direction::OrSymbol,
          effective_date: Date,
          event_type: Lithic::Models::ManagementOperationCreateParams::EventType::OrSymbol,
          financial_account_token: String,
          token: String,
          memo: String,
          subtype: String,
          user_defined_id: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::ManagementOperationTransaction)
      end
      def create(
        amount:,
        category:,
        direction:,
        effective_date:,
        event_type:,
        financial_account_token:,
        token: nil,
        memo: nil,
        subtype: nil,
        user_defined_id: nil,
        request_options: {}
      ); end
      # Get management operation
      sig do
        params(
          management_operation_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::ManagementOperationTransaction)
      end
      def retrieve(
        # Globally unique identifier for the management operation
        management_operation_token,
        request_options: {}
      ); end
      # List management operations
      sig do
        params(
          begin_: Time,
          business_account_token: String,
          category: Lithic::Models::ManagementOperationListParams::Category::OrSymbol,
          end_: Time,
          ending_before: String,
          financial_account_token: String,
          page_size: Integer,
          starting_after: String,
          status: Lithic::Models::ManagementOperationListParams::Status::OrSymbol,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Internal::CursorPage[Lithic::Models::ManagementOperationTransaction])
      end
      def list(
        # Date string in RFC 3339 format. Only entries created after the specified time
        # will be included. UTC time zone.
        begin_: nil,
        business_account_token: nil,
        # Management operation category to be returned.
        category: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        # will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # Globally unique identifier for the financial account. Accepted type dependent on
        # the program's use case.
        financial_account_token: nil,
        # Page size (for pagination).
        page_size: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        # Management operation status to be returned.
        status: nil,
        request_options: {}
      ); end
      # Reverse a management operation
      sig do
        params(
          management_operation_token: String,
          effective_date: Date,
          memo: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::ManagementOperationTransaction)
      end
      def reverse(
        # Globally unique identifier for the management operation
        management_operation_token,
        effective_date:,
        memo: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
