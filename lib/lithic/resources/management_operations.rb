# frozen_string_literal: true

module Lithic
  module Resources
    class ManagementOperations
      # Create management operation
      #
      # @param params [Lithic::Models::ManagementOperationCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer] :amount
      #
      #   @option params [Symbol, Lithic::Models::ManagementOperationCreateParams::Category] :category
      #
      #   @option params [Symbol, Lithic::Models::ManagementOperationCreateParams::Direction] :direction
      #
      #   @option params [Date] :effective_date
      #
      #   @option params [Symbol, Lithic::Models::ManagementOperationCreateParams::EventType] :event_type
      #
      #   @option params [String] :financial_account_token
      #
      #   @option params [String] :token
      #
      #   @option params [String] :memo
      #
      #   @option params [String] :subtype
      #
      #   @option params [String] :user_defined_id
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::ManagementOperationTransaction]
      #
      # @see Lithic::Models::ManagementOperationCreateParams
      def create(params)
        parsed, options = Lithic::Models::ManagementOperationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/management_operations",
          body: parsed,
          model: Lithic::Models::ManagementOperationTransaction,
          options: options
        )
      end

      # Get management operation
      #
      # @param management_operation_token [String] Globally unique identifier for the management operation
      #
      # @param params [Lithic::Models::ManagementOperationRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::ManagementOperationTransaction]
      #
      # @see Lithic::Models::ManagementOperationRetrieveParams
      def retrieve(management_operation_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/management_operations/%1$s", management_operation_token],
          model: Lithic::Models::ManagementOperationTransaction,
          options: params[:request_options]
        )
      end

      # List management operations
      #
      # @param params [Lithic::Models::ManagementOperationListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Time] :begin_ Date string in RFC 3339 format. Only entries created after the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [String] :business_account_token
      #
      #   @option params [Symbol, Lithic::Models::ManagementOperationListParams::Category] :category Management operation category to be returned.
      #
      #   @option params [Time] :end_ Date string in RFC 3339 format. Only entries created before the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [String] :ending_before A cursor representing an item's token before which a page of results should end.
      #     Used to retrieve the previous page of results before this item.
      #
      #   @option params [String] :financial_account_token Globally unique identifier for the financial account. Accepted type dependent on
      #     the program's use case.
      #
      #   @option params [Integer] :page_size Page size (for pagination).
      #
      #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
      #     begin. Used to retrieve the next page of results after this item.
      #
      #   @option params [Symbol, Lithic::Models::ManagementOperationListParams::Status] :status Management operation status to be returned.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::CursorPage<Lithic::Models::ManagementOperationTransaction>]
      #
      # @see Lithic::Models::ManagementOperationListParams
      def list(params = {})
        parsed, options = Lithic::Models::ManagementOperationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/management_operations",
          query: parsed,
          page: Lithic::CursorPage,
          model: Lithic::Models::ManagementOperationTransaction,
          options: options
        )
      end

      # Reverse a management operation
      #
      # @param management_operation_token [String] Globally unique identifier for the management operation
      #
      # @param params [Lithic::Models::ManagementOperationReverseParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Date] :effective_date
      #
      #   @option params [String] :memo
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::ManagementOperationTransaction]
      #
      # @see Lithic::Models::ManagementOperationReverseParams
      def reverse(management_operation_token, params)
        parsed, options = Lithic::Models::ManagementOperationReverseParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/management_operations/%1$s/reverse", management_operation_token],
          body: parsed,
          model: Lithic::Models::ManagementOperationTransaction,
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
