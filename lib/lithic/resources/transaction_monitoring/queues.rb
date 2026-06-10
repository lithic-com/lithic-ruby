# frozen_string_literal: true

module Lithic
  module Resources
    class TransactionMonitoring
      class Queues
        # Creates a new queue for grouping transaction monitoring cases.
        #
        # @overload create(name:, description: nil, request_options: {})
        #
        # @param name [String] Human-readable name of the queue
        #
        # @param description [String, nil] Optional description of the queue
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::TransactionMonitoring::Queue]
        #
        # @see Lithic::Models::TransactionMonitoring::QueueCreateParams
        def create(params)
          parsed, options = Lithic::TransactionMonitoring::QueueCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/transaction_monitoring/queues",
            body: parsed,
            model: Lithic::TransactionMonitoring::Queue,
            options: options
          )
        end

        # Retrieves a single transaction monitoring queue.
        #
        # @overload retrieve(queue_token, request_options: {})
        #
        # @param queue_token [String] Globally unique identifier for the queue.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::TransactionMonitoring::Queue]
        #
        # @see Lithic::Models::TransactionMonitoring::QueueRetrieveParams
        def retrieve(queue_token, params = {})
          @client.request(
            method: :get,
            path: ["v1/transaction_monitoring/queues/%1$s", queue_token],
            model: Lithic::TransactionMonitoring::Queue,
            options: params[:request_options]
          )
        end

        # Updates a transaction monitoring queue.
        #
        # @overload update(queue_token, description: nil, name: nil, request_options: {})
        #
        # @param queue_token [String] Globally unique identifier for the queue.
        #
        # @param description [String, nil] New description for the queue, or `null` to clear it
        #
        # @param name [String] New name for the queue
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::TransactionMonitoring::Queue]
        #
        # @see Lithic::Models::TransactionMonitoring::QueueUpdateParams
        def update(queue_token, params = {})
          parsed, options = Lithic::TransactionMonitoring::QueueUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["v1/transaction_monitoring/queues/%1$s", queue_token],
            body: parsed,
            model: Lithic::TransactionMonitoring::Queue,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::TransactionMonitoring::QueueListParams} for more details.
        #
        # Lists transaction monitoring queues.
        #
        # @overload list(ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
        #
        # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
        #
        # @param page_size [Integer] Page size (for pagination).
        #
        # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Internal::CursorPage<Lithic::Models::TransactionMonitoring::Queue>]
        #
        # @see Lithic::Models::TransactionMonitoring::QueueListParams
        def list(params = {})
          parsed, options = Lithic::TransactionMonitoring::QueueListParams.dump_request(params)
          query = Lithic::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "v1/transaction_monitoring/queues",
            query: query,
            page: Lithic::Internal::CursorPage,
            model: Lithic::TransactionMonitoring::Queue,
            options: options
          )
        end

        # Deletes a transaction monitoring queue.
        #
        # @overload delete(queue_token, request_options: {})
        #
        # @param queue_token [String] Globally unique identifier for the queue.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Lithic::Models::TransactionMonitoring::QueueDeleteParams
        def delete(queue_token, params = {})
          @client.request(
            method: :delete,
            path: ["v1/transaction_monitoring/queues/%1$s", queue_token],
            model: NilClass,
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
end
