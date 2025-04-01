# frozen_string_literal: true

module Lithic
  module Resources
    class ManagementOperations
      # Create management operation
      #
      # @overload create(amount:, category:, direction:, effective_date:, event_type:, financial_account_token:, token: nil, memo: nil, subtype: nil, user_defined_id: nil, request_options: {})
      #
      # @param amount [Integer]
      # @param category [Symbol, Lithic::Models::ManagementOperationCreateParams::Category]
      # @param direction [Symbol, Lithic::Models::ManagementOperationCreateParams::Direction]
      # @param effective_date [Date]
      # @param event_type [Symbol, Lithic::Models::ManagementOperationCreateParams::EventType]
      # @param financial_account_token [String]
      # @param token [String]
      # @param memo [String]
      # @param subtype [String]
      # @param user_defined_id [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload retrieve(management_operation_token, request_options: {})
      #
      # @param management_operation_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload list(begin_: nil, business_account_token: nil, category: nil, end_: nil, ending_before: nil, financial_account_token: nil, page_size: nil, starting_after: nil, status: nil, request_options: {})
      #
      # @param begin_ [Time]
      # @param business_account_token [String]
      # @param category [Symbol, Lithic::Models::ManagementOperationListParams::Category]
      # @param end_ [Time]
      # @param ending_before [String]
      # @param financial_account_token [String]
      # @param page_size [Integer]
      # @param starting_after [String]
      # @param status [Symbol, Lithic::Models::ManagementOperationListParams::Status]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload reverse(management_operation_token, effective_date:, memo: nil, request_options: {})
      #
      # @param management_operation_token [String]
      # @param effective_date [Date]
      # @param memo [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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
