# frozen_string_literal: true

module Lithic
  module Resources
    class BookTransfers
      # Book transfer funds between two financial accounts or between a financial
      #   account and card
      #
      # @param params [Lithic::Models::BookTransferCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer] :amount Amount to be transferred in the currency’s smallest unit (e.g., cents for USD).
      #     This should always be a positive value.
      #
      #   @option params [Symbol, Lithic::Models::BookTransferCreateParams::Category] :category Category of the book transfer
      #
      #   @option params [String] :from_financial_account_token Globally unique identifier for the financial account or card that will send the
      #     funds. Accepted type dependent on the program's use case.
      #
      #   @option params [String] :subtype The program specific subtype code for the specified category/type.
      #
      #   @option params [String] :to_financial_account_token Globally unique identifier for the financial account or card that will receive
      #     the funds. Accepted type dependent on the program's use case.
      #
      #   @option params [Symbol, Lithic::Models::BookTransferCreateParams::Type] :type Type of book_transfer
      #
      #   @option params [String] :token Customer-provided token that will serve as an idempotency token. This token will
      #     become the transaction token.
      #
      #   @option params [String] :memo Optional descriptor for the transfer.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::BookTransferResponse]
      def create(params)
        parsed, options = Lithic::Models::BookTransferCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/book_transfers",
          body: parsed,
          model: Lithic::Models::BookTransferResponse,
          options: options
        )
      end

      # Get book transfer by token
      #
      # @param book_transfer_token [String] Id of the book transfer to retrieve
      #
      # @param params [Lithic::Models::BookTransferRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::BookTransferResponse]
      def retrieve(book_transfer_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/book_transfers/%1$s", book_transfer_token],
          model: Lithic::Models::BookTransferResponse,
          options: params[:request_options]
        )
      end

      # List book transfers
      #
      # @param params [Lithic::Models::BookTransferListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_token
      #
      #   @option params [Time] :begin_ Date string in RFC 3339 format. Only entries created after the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [String] :business_account_token
      #
      #   @option params [Symbol, Lithic::Models::BookTransferListParams::Category] :category Book Transfer category to be returned.
      #
      #   @option params [Time] :end_ Date string in RFC 3339 format. Only entries created before the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [String] :ending_before A cursor representing an item's token before which a page of results should end.
      #     Used to retrieve the previous page of results before this item.
      #
      #   @option params [String] :financial_account_token Globally unique identifier for the financial account or card that will send the
      #     funds. Accepted type dependent on the program's use case.
      #
      #   @option params [Integer] :page_size Page size (for pagination).
      #
      #   @option params [Symbol, Lithic::Models::BookTransferListParams::Result] :result Book transfer result to be returned.
      #
      #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
      #     begin. Used to retrieve the next page of results after this item.
      #
      #   @option params [Symbol, Lithic::Models::BookTransferListParams::Status] :status Book transfer status to be returned.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::CursorPage<Lithic::Models::BookTransferResponse>]
      def list(params = {})
        parsed, options = Lithic::Models::BookTransferListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/book_transfers",
          query: parsed,
          page: Lithic::CursorPage,
          model: Lithic::Models::BookTransferResponse,
          options: options
        )
      end

      # Reverse a book transfer
      #
      # @param book_transfer_token [String] Id of the book transfer to retrieve
      #
      # @param params [Lithic::Models::BookTransferReverseParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :memo Optional descriptor for the reversal.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::BookTransferResponse]
      def reverse(book_transfer_token, params = {})
        parsed, options = Lithic::Models::BookTransferReverseParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/book_transfers/%1$s/reverse", book_transfer_token],
          body: parsed,
          model: Lithic::Models::BookTransferResponse,
          options: options
        )
      end

      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
