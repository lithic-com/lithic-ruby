# frozen_string_literal: true

module Lithic
  module Resources
    class BookTransfers
      # Some parameter documentations has been truncated, see
      # {Lithic::Models::BookTransferCreateParams} for more details.
      #
      # Book transfer funds between two financial accounts or between a financial
      # account and card
      #
      # @overload create(amount:, category:, from_financial_account_token:, subtype:, to_financial_account_token:, type:, token: nil, memo: nil, request_options: {})
      #
      # @param amount [Integer] Amount to be transferred in the currency’s smallest unit (e.g., cents for USD).
      #
      # @param category [Symbol, Lithic::Models::BookTransferCreateParams::Category] Category of the book transfer
      #
      # @param from_financial_account_token [String] Globally unique identifier for the financial account or card that will send the
      #
      # @param subtype [String] The program specific subtype code for the specified category/type.
      #
      # @param to_financial_account_token [String] Globally unique identifier for the financial account or card that will receive t
      #
      # @param type [Symbol, Lithic::Models::BookTransferCreateParams::Type] Type of book_transfer
      #
      # @param token [String] Customer-provided token that will serve as an idempotency token. This token will
      #
      # @param memo [String] Optional descriptor for the transfer.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::BookTransferResponse]
      #
      # @see Lithic::Models::BookTransferCreateParams
      def create(params)
        parsed, options = Lithic::BookTransferCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/book_transfers",
          body: parsed,
          model: Lithic::BookTransferResponse,
          options: options
        )
      end

      # Get book transfer by token
      #
      # @overload retrieve(book_transfer_token, request_options: {})
      #
      # @param book_transfer_token [String] Id of the book transfer to retrieve
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::BookTransferResponse]
      #
      # @see Lithic::Models::BookTransferRetrieveParams
      def retrieve(book_transfer_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/book_transfers/%1$s", book_transfer_token],
          model: Lithic::BookTransferResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::BookTransferListParams} for more details.
      #
      # List book transfers
      #
      # @overload list(account_token: nil, begin_: nil, business_account_token: nil, category: nil, end_: nil, ending_before: nil, financial_account_token: nil, page_size: nil, result: nil, starting_after: nil, status: nil, request_options: {})
      #
      # @param account_token [String]
      #
      # @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
      #
      # @param business_account_token [String]
      #
      # @param category [Symbol, Lithic::Models::BookTransferListParams::Category] Book Transfer category to be returned.
      #
      # @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
      #
      # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      #
      # @param financial_account_token [String] Globally unique identifier for the financial account or card that will send the
      #
      # @param page_size [Integer] Page size (for pagination).
      #
      # @param result [Symbol, Lithic::Models::BookTransferListParams::Result] Book transfer result to be returned.
      #
      # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      #
      # @param status [Symbol, Lithic::Models::BookTransferListParams::Status] Book transfer status to be returned.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::BookTransferResponse>]
      #
      # @see Lithic::Models::BookTransferListParams
      def list(params = {})
        parsed, options = Lithic::BookTransferListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/book_transfers",
          query: parsed.transform_keys(begin_: "begin", end_: "end"),
          page: Lithic::Internal::CursorPage,
          model: Lithic::BookTransferResponse,
          options: options
        )
      end

      # Reverse a book transfer
      #
      # @overload reverse(book_transfer_token, memo: nil, request_options: {})
      #
      # @param book_transfer_token [String] Id of the book transfer to retrieve
      #
      # @param memo [String] Optional descriptor for the reversal.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::BookTransferResponse]
      #
      # @see Lithic::Models::BookTransferReverseParams
      def reverse(book_transfer_token, params = {})
        parsed, options = Lithic::BookTransferReverseParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/book_transfers/%1$s/reverse", book_transfer_token],
          body: parsed,
          model: Lithic::BookTransferResponse,
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
