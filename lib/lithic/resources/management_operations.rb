# frozen_string_literal: true

module Lithic
  module Resources
    class ManagementOperations
      # Some parameter documentations has been truncated, see
      # {Lithic::Models::ManagementOperationCreateParams} for more details.
      #
      # Create management operation
      #
      # @overload create(amount:, category:, direction:, effective_date:, event_type:, financial_account_token:, token: nil, memo: nil, on_closed_account: nil, subtype: nil, user_defined_id: nil, request_options: {})
      #
      # @param amount [Integer]
      #
      # @param category [Symbol, Lithic::Models::ManagementOperationCreateParams::Category]
      #
      # @param direction [Symbol, Lithic::Models::ManagementOperationCreateParams::Direction]
      #
      # @param effective_date [Date]
      #
      # @param event_type [Symbol, Lithic::Models::ManagementOperationCreateParams::EventType]
      #
      # @param financial_account_token [String]
      #
      # @param token [String] Customer-provided token that will serve as an idempotency token. This token will
      #
      # @param memo [String]
      #
      # @param on_closed_account [Symbol, Lithic::Models::ManagementOperationCreateParams::OnClosedAccount] What to do if the financial account is closed when posting an operation
      #
      # @param subtype [String]
      #
      # @param user_defined_id [String]
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::ManagementOperationTransaction]
      #
      # @see Lithic::Models::ManagementOperationCreateParams
      def create(params)
        parsed, options = Lithic::ManagementOperationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/management_operations",
          body: parsed,
          model: Lithic::ManagementOperationTransaction,
          options: options
        )
      end

      # Get management operation
      #
      # @overload retrieve(management_operation_token, request_options: {})
      #
      # @param management_operation_token [String] Globally unique identifier for the management operation
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::ManagementOperationTransaction]
      #
      # @see Lithic::Models::ManagementOperationRetrieveParams
      def retrieve(management_operation_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/management_operations/%1$s", management_operation_token],
          model: Lithic::ManagementOperationTransaction,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::ManagementOperationListParams} for more details.
      #
      # List management operations
      #
      # @overload list(begin_: nil, business_account_token: nil, category: nil, end_: nil, ending_before: nil, financial_account_token: nil, page_size: nil, starting_after: nil, status: nil, request_options: {})
      #
      # @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
      #
      # @param business_account_token [String]
      #
      # @param category [Symbol, Lithic::Models::ManagementOperationListParams::Category] Management operation category to be returned.
      #
      # @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
      #
      # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      #
      # @param financial_account_token [String] Globally unique identifier for the financial account. Accepted type dependent on
      #
      # @param page_size [Integer] Page size (for pagination).
      #
      # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      #
      # @param status [Symbol, Lithic::Models::ManagementOperationListParams::Status] Management operation status to be returned.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::ManagementOperationTransaction>]
      #
      # @see Lithic::Models::ManagementOperationListParams
      def list(params = {})
        parsed, options = Lithic::ManagementOperationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/management_operations",
          query: parsed.transform_keys(begin_: "begin", end_: "end"),
          page: Lithic::Internal::CursorPage,
          model: Lithic::ManagementOperationTransaction,
          options: options
        )
      end

      # Reverse a management operation
      #
      # @overload reverse(management_operation_token, effective_date:, memo: nil, request_options: {})
      #
      # @param management_operation_token [String] Globally unique identifier for the management operation
      #
      # @param effective_date [Date]
      #
      # @param memo [String]
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::ManagementOperationTransaction]
      #
      # @see Lithic::Models::ManagementOperationReverseParams
      def reverse(management_operation_token, params)
        parsed, options = Lithic::ManagementOperationReverseParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/management_operations/%1$s/reverse", management_operation_token],
          body: parsed,
          model: Lithic::ManagementOperationTransaction,
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
