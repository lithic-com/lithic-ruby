# frozen_string_literal: true

module Lithic
  module Resources
    class AccountActivity
      # Some parameter documentations has been truncated, see
      # {Lithic::Models::AccountActivityListParams} for more details.
      #
      # Retrieve a list of transactions across all public accounts.
      #
      # @overload list(account_token: nil, begin_: nil, business_account_token: nil, category: nil, end_: nil, ending_before: nil, financial_account_token: nil, page_size: nil, result: nil, starting_after: nil, status: nil, request_options: {})
      #
      # @param account_token [String] Filter by account token
      #
      # @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
      #
      # @param business_account_token [String] Filter by business account token
      #
      # @param category [Symbol, Lithic::Models::AccountActivityListParams::Category] Filter by transaction category
      #
      # @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
      #
      # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      #
      # @param financial_account_token [String] Filter by financial account token
      #
      # @param page_size [Integer] Page size (for pagination).
      #
      # @param result [Symbol, Lithic::Models::AccountActivityListParams::Result] Filter by transaction result
      #
      # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      #
      # @param status [Symbol, Lithic::Models::AccountActivityListParams::Status] Filter by transaction status
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::AccountActivityListResponse::Internal, Lithic::Models::BookTransferResponse, Lithic::Models::AccountActivityListResponse::Card, Lithic::Models::Payment, Lithic::Models::ExternalPayment, Lithic::Models::ManagementOperationTransaction>]
      #
      # @see Lithic::Models::AccountActivityListParams
      def list(params = {})
        parsed, options = Lithic::AccountActivityListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/account_activity",
          query: parsed.transform_keys(begin_: "begin", end_: "end"),
          page: Lithic::Internal::CursorPage,
          model: Lithic::Models::AccountActivityListResponse,
          options: options
        )
      end

      # Retrieve a single transaction
      #
      # @overload retrieve_transaction(transaction_token, request_options: {})
      #
      # @param transaction_token [String] The unique identifier for the transaction
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal, Lithic::Models::BookTransferResponse, Lithic::Models::AccountActivityRetrieveTransactionResponse::Card, Lithic::Models::Payment, Lithic::Models::ExternalPayment, Lithic::Models::ManagementOperationTransaction]
      #
      # @see Lithic::Models::AccountActivityRetrieveTransactionParams
      def retrieve_transaction(transaction_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/account_activity/%1$s", transaction_token],
          model: Lithic::Models::AccountActivityRetrieveTransactionResponse,
          options: params[:request_options]
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
