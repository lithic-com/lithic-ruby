# frozen_string_literal: true

module Lithic
  module Resources
    class AuthRules
      class V2
        # @return [Lithic::Resources::AuthRules::V2::Backtests]
        attr_reader :backtests

        # Creates a new V2 Auth rule in draft mode
        #
        # @overload create(body:, request_options: {})
        #
        # @param body [Lithic::Models::AuthRules::V2CreateParams::Body::AccountLevelRule, Lithic::Models::AuthRules::V2CreateParams::Body::CardLevelRule, Lithic::Models::AuthRules::V2CreateParams::Body::ProgramLevelRule]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::AuthRules::AuthRule]
        #
        # @see Lithic::Models::AuthRules::V2CreateParams
        def create(params)
          parsed, options = Lithic::AuthRules::V2CreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v2/auth_rules",
            body: parsed[:body],
            model: Lithic::AuthRules::AuthRule,
            options: options
          )
        end

        # Fetches a V2 Auth rule by its token
        #
        # @overload retrieve(auth_rule_token, request_options: {})
        #
        # @param auth_rule_token [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::AuthRules::AuthRule]
        #
        # @see Lithic::Models::AuthRules::V2RetrieveParams
        def retrieve(auth_rule_token, params = {})
          @client.request(
            method: :get,
            path: ["v2/auth_rules/%1$s", auth_rule_token],
            model: Lithic::AuthRules::AuthRule,
            options: params[:request_options]
          )
        end

        # Updates a V2 Auth rule's properties
        #
        # If `account_tokens`, `card_tokens`, `program_level`, or `excluded_card_tokens`
        # is provided, this will replace existing associations with the provided list of
        # entities.
        #
        # @overload update(auth_rule_token, body:, request_options: {})
        #
        # @param auth_rule_token [String]
        # @param body [Lithic::Models::AuthRules::V2UpdateParams::Body::AccountLevelRule, Lithic::Models::AuthRules::V2UpdateParams::Body::CardLevelRule, Lithic::Models::AuthRules::V2UpdateParams::Body::ProgramLevelRule]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::AuthRules::AuthRule]
        #
        # @see Lithic::Models::AuthRules::V2UpdateParams
        def update(auth_rule_token, params)
          parsed, options = Lithic::AuthRules::V2UpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["v2/auth_rules/%1$s", auth_rule_token],
            body: parsed[:body],
            model: Lithic::AuthRules::AuthRule,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::AuthRules::V2ListParams} for more details.
        #
        # Lists V2 Auth rules
        #
        # @overload list(account_token: nil, business_account_token: nil, card_token: nil, ending_before: nil, event_stream: nil, event_streams: nil, page_size: nil, scope: nil, starting_after: nil, request_options: {})
        #
        # @param account_token [String] Only return Auth Rules that are bound to the provided account token.
        #
        # @param business_account_token [String] Only return Auth Rules that are bound to the provided business account token.
        #
        # @param card_token [String] Only return Auth Rules that are bound to the provided card token.
        #
        # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
        #
        # @param event_stream [Symbol, Lithic::Models::AuthRules::EventStream] Deprecated: Use event_streams instead. Only return Auth rules that are executed
        #
        # @param event_streams [Array<Symbol, Lithic::Models::AuthRules::EventStream>] Only return Auth rules that are executed during any of the provided event stream
        #
        # @param page_size [Integer] Page size (for pagination).
        #
        # @param scope [Symbol, Lithic::Models::AuthRules::V2ListParams::Scope] Only return Auth Rules that are bound to the provided scope.
        #
        # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Internal::CursorPage<Lithic::Models::AuthRules::AuthRule>]
        #
        # @see Lithic::Models::AuthRules::V2ListParams
        def list(params = {})
          parsed, options = Lithic::AuthRules::V2ListParams.dump_request(params)
          query = Lithic::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "v2/auth_rules",
            query: query,
            page: Lithic::Internal::CursorPage,
            model: Lithic::AuthRules::AuthRule,
            options: options
          )
        end

        # Deletes a V2 Auth rule
        #
        # @overload delete(auth_rule_token, request_options: {})
        #
        # @param auth_rule_token [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Lithic::Models::AuthRules::V2DeleteParams
        def delete(auth_rule_token, params = {})
          @client.request(
            method: :delete,
            path: ["v2/auth_rules/%1$s", auth_rule_token],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Creates a new draft version of a rule that will be ran in shadow mode.
        #
        # This can also be utilized to reset the draft parameters, causing a draft version
        # to no longer be ran in shadow mode.
        #
        # @overload draft(auth_rule_token, parameters: nil, request_options: {})
        #
        # @param auth_rule_token [String]
        #
        # @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, Lithic::Models::AuthRules::TypescriptCodeParameters, nil] Parameters for the Auth Rule
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::AuthRules::AuthRule]
        #
        # @see Lithic::Models::AuthRules::V2DraftParams
        def draft(auth_rule_token, params = {})
          parsed, options = Lithic::AuthRules::V2DraftParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v2/auth_rules/%1$s/draft", auth_rule_token],
            body: parsed,
            model: Lithic::AuthRules::AuthRule,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::AuthRules::V2ListResultsParams} for more details.
        #
        # Lists Auth Rule evaluation results.
        #
        # **Limitations:**
        #
        # - Results are available for the past 3 months only
        # - At least one filter (`event_token` or `auth_rule_token`) must be provided
        # - When filtering by `event_token`, pagination is not supported
        #
        # @overload list_results(auth_rule_token: nil, begin_: nil, end_: nil, ending_before: nil, event_token: nil, has_actions: nil, page_size: nil, starting_after: nil, request_options: {})
        #
        # @param auth_rule_token [String] Filter by Auth Rule token
        #
        # @param begin_ [Time] Date string in RFC 3339 format. Only events evaluated after the specified time w
        #
        # @param end_ [Time] Date string in RFC 3339 format. Only events evaluated before the specified time
        #
        # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
        #
        # @param event_token [String] Filter by event token
        #
        # @param has_actions [Boolean] Filter by whether the rule evaluation produced any actions. When not provided, a
        #
        # @param page_size [Integer] Page size (for pagination).
        #
        # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Internal::CursorPage<Lithic::Models::AuthRules::V2ListResultsResponse::AuthorizationResult, Lithic::Models::AuthRules::V2ListResultsResponse::Authentication3DSResult, Lithic::Models::AuthRules::V2ListResultsResponse::TokenizationResult, Lithic::Models::AuthRules::V2ListResultsResponse::ACHResult>]
        #
        # @see Lithic::Models::AuthRules::V2ListResultsParams
        def list_results(params = {})
          parsed, options = Lithic::AuthRules::V2ListResultsParams.dump_request(params)
          query = Lithic::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "v2/auth_rules/results",
            query: query.transform_keys(begin_: "begin", end_: "end"),
            page: Lithic::Internal::CursorPage,
            model: Lithic::Models::AuthRules::V2ListResultsResponse,
            options: options
          )
        end

        # Promotes the draft version of an Auth rule to the currently active version such
        # that it is enforced in the respective stream.
        #
        # @overload promote(auth_rule_token, request_options: {})
        #
        # @param auth_rule_token [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::AuthRules::AuthRule]
        #
        # @see Lithic::Models::AuthRules::V2PromoteParams
        def promote(auth_rule_token, params = {})
          @client.request(
            method: :post,
            path: ["v2/auth_rules/%1$s/promote", auth_rule_token],
            model: Lithic::AuthRules::AuthRule,
            options: params[:request_options]
          )
        end

        # Fetches the current calculated Feature values for the given Auth Rule
        #
        # This only calculates the features for the active version.
        #
        # - VelocityLimit Rules calculates the current Velocity Feature data. This
        #   requires a `card_token` or `account_token` matching what the rule is Scoped
        #   to.
        # - ConditionalBlock Rules calculates the CARD*TRANSACTION_COUNT*\* attributes on
        #   the rule. This requires a `card_token`
        #
        # @overload retrieve_features(auth_rule_token, account_token: nil, card_token: nil, request_options: {})
        #
        # @param auth_rule_token [String]
        # @param account_token [String]
        # @param card_token [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::AuthRules::V2RetrieveFeaturesResponse]
        #
        # @see Lithic::Models::AuthRules::V2RetrieveFeaturesParams
        def retrieve_features(auth_rule_token, params = {})
          parsed, options = Lithic::AuthRules::V2RetrieveFeaturesParams.dump_request(params)
          query = Lithic::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["v2/auth_rules/%1$s/features", auth_rule_token],
            query: query,
            model: Lithic::Models::AuthRules::V2RetrieveFeaturesResponse,
            options: options
          )
        end

        # Retrieves a performance report for an Auth rule containing daily statistics and
        # evaluation outcomes.
        #
        # **Time Range Limitations:**
        #
        # - Reports are supported for the past 3 months only
        # - Maximum interval length is 1 month
        # - Report data is available only through the previous day in UTC (current day
        #   data is not available)
        #
        # The report provides daily statistics for both current and draft versions of the
        # Auth rule, including approval, decline, and challenge counts along with sample
        # events.
        #
        # @overload retrieve_report(auth_rule_token, begin_:, end_:, request_options: {})
        #
        # @param auth_rule_token [String]
        #
        # @param begin_ [Date] Start date for the report
        #
        # @param end_ [Date] End date for the report
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::AuthRules::V2RetrieveReportResponse]
        #
        # @see Lithic::Models::AuthRules::V2RetrieveReportParams
        def retrieve_report(auth_rule_token, params)
          parsed, options = Lithic::AuthRules::V2RetrieveReportParams.dump_request(params)
          query = Lithic::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["v2/auth_rules/%1$s/report", auth_rule_token],
            query: query.transform_keys(begin_: "begin", end_: "end"),
            model: Lithic::Models::AuthRules::V2RetrieveReportResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Lithic::Client]
        def initialize(client:)
          @client = client
          @backtests = Lithic::Resources::AuthRules::V2::Backtests.new(client: client)
        end
      end
    end
  end
end
