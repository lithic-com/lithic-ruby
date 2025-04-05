# frozen_string_literal: true

module Lithic
  module Resources
    class BookTransfers
      # Book transfer funds between two financial accounts or between a financial
      #   account and card
      #
      # @overload create(amount:, category:, from_financial_account_token:, subtype:, to_financial_account_token:, type:, token: nil, memo: nil, request_options: {})
      #
      # @param amount [Integer]
      # @param category [Symbol, Lithic::Models::BookTransferCreateParams::Category]
      # @param from_financial_account_token [String]
      # @param subtype [String]
      # @param to_financial_account_token [String]
      # @param type [Symbol, Lithic::Models::BookTransferCreateParams::Type]
      # @param token [String]
      # @param memo [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::BookTransferResponse]
      #
      # @see Lithic::Models::BookTransferCreateParams
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
      # @overload retrieve(book_transfer_token, request_options: {})
      #
      # @param book_transfer_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::BookTransferResponse]
      #
      # @see Lithic::Models::BookTransferRetrieveParams
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
      # @overload list(account_token: nil, begin_: nil, business_account_token: nil, category: nil, end_: nil, ending_before: nil, financial_account_token: nil, page_size: nil, result: nil, starting_after: nil, status: nil, request_options: {})
      #
      # @param account_token [String]
      # @param begin_ [Time]
      # @param business_account_token [String]
      # @param category [Symbol, Lithic::Models::BookTransferListParams::Category]
      # @param end_ [Time]
      # @param ending_before [String]
      # @param financial_account_token [String]
      # @param page_size [Integer]
      # @param result [Symbol, Lithic::Models::BookTransferListParams::Result]
      # @param starting_after [String]
      # @param status [Symbol, Lithic::Models::BookTransferListParams::Status]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::BookTransferResponse>]
      #
      # @see Lithic::Models::BookTransferListParams
      def list(params = {})
        parsed, options = Lithic::Models::BookTransferListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/book_transfers",
          query: parsed.transform_keys(begin_: :begin, end_: :end),
          page: Lithic::Internal::CursorPage,
          model: Lithic::Models::BookTransferResponse,
          options: options
        )
      end

      # Reverse a book transfer
      #
      # @overload reverse(book_transfer_token, memo: nil, request_options: {})
      #
      # @param book_transfer_token [String]
      # @param memo [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::BookTransferResponse]
      #
      # @see Lithic::Models::BookTransferReverseParams
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

      # @api private
      #
      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
