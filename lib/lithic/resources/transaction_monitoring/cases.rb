# frozen_string_literal: true

module Lithic
  module Resources
    class TransactionMonitoring
      class Cases
        # @return [Lithic::Resources::TransactionMonitoring::Cases::Comments]
        attr_reader :comments

        # @return [Lithic::Resources::TransactionMonitoring::Cases::Files]
        attr_reader :files

        # Retrieves a single transaction monitoring case.
        #
        # @overload retrieve(case_token, request_options: {})
        #
        # @param case_token [String] Globally unique identifier for the case.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::TransactionMonitoring::MonitoringCase]
        #
        # @see Lithic::Models::TransactionMonitoring::CaseRetrieveParams
        def retrieve(case_token, params = {})
          @client.request(
            method: :get,
            path: ["v1/transaction_monitoring/cases/%1$s", case_token],
            model: Lithic::TransactionMonitoring::MonitoringCase,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::TransactionMonitoring::CaseUpdateParams} for more details.
        #
        # Updates a transaction monitoring case.
        #
        # @overload update(case_token, actor_token: nil, assignee: nil, priority: nil, resolution: nil, resolution_notes: nil, sla_deadline: nil, status: nil, tags: nil, title: nil, request_options: {})
        #
        # @param case_token [String] Globally unique identifier for the case.
        #
        # @param actor_token [String] Optional client-provided identifier for the actor performing this action,
        #
        # @param assignee [String, nil] New assignee for the case, or `null` to unassign
        #
        # @param priority [Symbol, Lithic::Models::TransactionMonitoring::CasePriority] Priority level of a case, controlling queue ordering and SLA urgency
        #
        # @param resolution [Symbol, Lithic::Models::TransactionMonitoring::ResolutionOutcome] Outcome recorded when a case is resolved:
        #
        # @param resolution_notes [String] Notes describing the resolution
        #
        # @param sla_deadline [Time, nil] New SLA deadline for the case, or `null` to clear it
        #
        # @param status [Symbol, Lithic::Models::TransactionMonitoring::CaseStatus] Status of a case as it progresses through the review workflow:
        #
        # @param tags [Hash{Symbol=>String}] Arbitrary key-value metadata to set on the case
        #
        # @param title [String, nil] New title for the case, or `null` to clear it
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::TransactionMonitoring::MonitoringCase]
        #
        # @see Lithic::Models::TransactionMonitoring::CaseUpdateParams
        def update(case_token, params = {})
          parsed, options = Lithic::TransactionMonitoring::CaseUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["v1/transaction_monitoring/cases/%1$s", case_token],
            body: parsed,
            model: Lithic::TransactionMonitoring::MonitoringCase,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::TransactionMonitoring::CaseListParams} for more details.
        #
        # Lists transaction monitoring cases, optionally filtered.
        #
        # @overload list(account_token: nil, assignee: nil, begin_: nil, card_token: nil, end_: nil, ending_before: nil, entity_token: nil, page_size: nil, queue_token: nil, rule_token: nil, sort_by: nil, starting_after: nil, status: nil, transaction_token: nil, request_options: {})
        #
        # @param account_token [String] Only return cases that include transactions on the provided account.
        #
        # @param assignee [String] Only return cases assigned to the provided value. Pass an empty string to return
        #
        # @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
        #
        # @param card_token [String] Only return cases that include transactions on the provided card.
        #
        # @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
        #
        # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
        #
        # @param entity_token [String] Only return cases associated with the provided entity.
        #
        # @param page_size [Integer] Page size (for pagination).
        #
        # @param queue_token [String] Only return cases belonging to the provided queue.
        #
        # @param rule_token [String] Only return cases triggered by the provided transaction monitoring rule.
        #
        # @param sort_by [Symbol, Lithic::Models::TransactionMonitoring::CaseSortOrder] Sort order for the returned cases.
        #
        # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
        #
        # @param status [Symbol, Lithic::Models::TransactionMonitoring::CaseStatus] Only return cases with the provided status.
        #
        # @param transaction_token [String] Only return cases that include the provided transaction.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Internal::CursorPage<Lithic::Models::TransactionMonitoring::MonitoringCase>]
        #
        # @see Lithic::Models::TransactionMonitoring::CaseListParams
        def list(params = {})
          parsed, options = Lithic::TransactionMonitoring::CaseListParams.dump_request(params)
          query = Lithic::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "v1/transaction_monitoring/cases",
            query: query.transform_keys(begin_: "begin", end_: "end"),
            page: Lithic::Internal::CursorPage,
            model: Lithic::TransactionMonitoring::MonitoringCase,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::TransactionMonitoring::CaseListActivityParams} for more
        # details.
        #
        # Lists the activity feed for a case.
        #
        # @overload list_activity(case_token, ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
        #
        # @param case_token [String] Globally unique identifier for the case.
        #
        # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
        #
        # @param page_size [Integer] Page size (for pagination).
        #
        # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Internal::CursorPage<Lithic::Models::TransactionMonitoring::CaseActivityEntry>]
        #
        # @see Lithic::Models::TransactionMonitoring::CaseListActivityParams
        def list_activity(case_token, params = {})
          parsed, options = Lithic::TransactionMonitoring::CaseListActivityParams.dump_request(params)
          query = Lithic::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["v1/transaction_monitoring/cases/%1$s/activity", case_token],
            query: query,
            page: Lithic::Internal::CursorPage,
            model: Lithic::TransactionMonitoring::CaseActivityEntry,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::TransactionMonitoring::CaseListTransactionsParams} for more
        # details.
        #
        # Lists the transactions associated with a case.
        #
        # @overload list_transactions(case_token, ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
        #
        # @param case_token [String] Globally unique identifier for the case.
        #
        # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
        #
        # @param page_size [Integer] Page size (for pagination).
        #
        # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Internal::CursorPage<Lithic::Models::TransactionMonitoring::CaseTransaction>]
        #
        # @see Lithic::Models::TransactionMonitoring::CaseListTransactionsParams
        def list_transactions(case_token, params = {})
          parsed, options = Lithic::TransactionMonitoring::CaseListTransactionsParams.dump_request(params)
          query = Lithic::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["v1/transaction_monitoring/cases/%1$s/transactions", case_token],
            query: query,
            page: Lithic::Internal::CursorPage,
            model: Lithic::TransactionMonitoring::CaseTransaction,
            options: options
          )
        end

        # Lists the cards involved in a case, with per-card transaction counts.
        #
        # @overload retrieve_cards(case_token, request_options: {})
        #
        # @param case_token [String] Globally unique identifier for the case.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Lithic::Models::TransactionMonitoring::CaseCard>]
        #
        # @see Lithic::Models::TransactionMonitoring::CaseRetrieveCardsParams
        def retrieve_cards(case_token, params = {})
          @client.request(
            method: :get,
            path: ["v1/transaction_monitoring/cases/%1$s/cards", case_token],
            model: Lithic::Internal::Type::ArrayOf[Lithic::TransactionMonitoring::CaseCard],
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Lithic::Client]
        def initialize(client:)
          @client = client
          @comments = Lithic::Resources::TransactionMonitoring::Cases::Comments.new(client: client)
          @files = Lithic::Resources::TransactionMonitoring::Cases::Files.new(client: client)
        end
      end
    end
  end
end
