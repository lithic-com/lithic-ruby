# frozen_string_literal: true

module Lithic
  module Resources
    class AuthRules
      class V2
        # @return [Lithic::Resources::AuthRules::V2::Backtests]
        attr_reader :backtests

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::AuthRules::V2CreateParams} for more details.
        #
        # Creates a new V2 Auth rule in draft mode
        #
        # @overload create(card_tokens:, program_level:, account_tokens: nil, business_account_tokens: nil, event_stream: nil, name: nil, parameters: nil, type: nil, excluded_card_tokens: nil, request_options: {})
        #
        # @param card_tokens [Array<String>] Card tokens to which the Auth Rule applies.
        #
        # @param program_level [Boolean] Whether the Auth Rule applies to all authorizations on the card program.
        #
        # @param account_tokens [Array<String>] Account tokens to which the Auth Rule applies.
        #
        # @param business_account_tokens [Array<String>] Business Account tokens to which the Auth Rule applies.
        #
        # @param event_stream [Symbol, Lithic::Models::AuthRules::V2CreateParams::EventStream] The event stream during which the rule will be evaluated.
        #
        # @param name [String, nil] Auth Rule Name
        #
        # @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters] Parameters for the Auth Rule
        #
        # @param type [Symbol, Lithic::Models::AuthRules::V2CreateParams::Type] The type of Auth Rule. For certain rule types, this determines the event stream
        #
        # @param excluded_card_tokens [Array<String>] Card tokens to which the Auth Rule does not apply.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::AuthRules::V2CreateResponse]
        #
        # @see Lithic::Models::AuthRules::V2CreateParams
        def create(params)
          parsed, options = Lithic::AuthRules::V2CreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v2/auth_rules",
            body: parsed,
            model: Lithic::Models::AuthRules::V2CreateResponse,
            options: options
          )
        end

        # Fetches a V2 Auth rule by its token
        #
        # @overload retrieve(auth_rule_token, request_options: {})
        #
        # @param auth_rule_token [String] Globally unique identifier for the Auth Rule.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::AuthRules::V2RetrieveResponse]
        #
        # @see Lithic::Models::AuthRules::V2RetrieveParams
        def retrieve(auth_rule_token, params = {})
          @client.request(
            method: :get,
            path: ["v2/auth_rules/%1$s", auth_rule_token],
            model: Lithic::Models::AuthRules::V2RetrieveResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::AuthRules::V2UpdateParams} for more details.
        #
        # Updates a V2 Auth rule's properties
        #
        # If `account_tokens`, `card_tokens`, `program_level`, or `excluded_card_tokens`
        # is provided, this will replace existing associations with the provided list of
        # entities.
        #
        # @overload update(auth_rule_token, name: nil, state: nil, card_tokens: nil, excluded_card_tokens: nil, program_level: nil, request_options: {})
        #
        # @param auth_rule_token [String] Globally unique identifier for the Auth Rule.
        #
        # @param name [String, nil] Auth Rule Name
        #
        # @param state [Symbol, Lithic::Models::AuthRules::V2UpdateParams::State] The desired state of the Auth Rule.
        #
        # @param card_tokens [Array<String>] Card tokens to which the Auth Rule applies.
        #
        # @param excluded_card_tokens [Array<String>] Card tokens to which the Auth Rule does not apply.
        #
        # @param program_level [Boolean] Whether the Auth Rule applies to all authorizations on the card program.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::AuthRules::V2UpdateResponse]
        #
        # @see Lithic::Models::AuthRules::V2UpdateParams
        def update(auth_rule_token, params = {})
          parsed, options = Lithic::AuthRules::V2UpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["v2/auth_rules/%1$s", auth_rule_token],
            body: parsed,
            model: Lithic::Models::AuthRules::V2UpdateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::AuthRules::V2ListParams} for more details.
        #
        # Lists V2 Auth rules
        #
        # @overload list(account_token: nil, business_account_token: nil, card_token: nil, ending_before: nil, event_stream: nil, page_size: nil, scope: nil, starting_after: nil, request_options: {})
        #
        # @param account_token [String] Only return Auth Rules that are bound to the provided account token.
        #
        # @param business_account_token [String] Only return Auth Rules that are bound to the provided business account token.
        #
        # @param card_token [String] Only return Auth Rules that are bound to the provided card token.
        #
        # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
        #
        # @param event_stream [Symbol, Lithic::Models::AuthRules::V2ListParams::EventStream] Only return Auth rules that are executed during the provided event stream.
        #
        # @param page_size [Integer] Page size (for pagination).
        #
        # @param scope [Symbol, Lithic::Models::AuthRules::V2ListParams::Scope] Only return Auth Rules that are bound to the provided scope.
        #
        # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Internal::CursorPage<Lithic::Models::AuthRules::V2ListResponse>]
        #
        # @see Lithic::Models::AuthRules::V2ListParams
        def list(params = {})
          parsed, options = Lithic::AuthRules::V2ListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "v2/auth_rules",
            query: parsed,
            page: Lithic::Internal::CursorPage,
            model: Lithic::Models::AuthRules::V2ListResponse,
            options: options
          )
        end

        # Deletes a V2 Auth rule
        #
        # @overload delete(auth_rule_token, request_options: {})
        #
        # @param auth_rule_token [String] Globally unique identifier for the Auth Rule.
        #
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

        # @deprecated
        #
        # Associates a V2 Auth rule with a card program, the provided account(s) or
        # card(s).
        #
        # Prefer using the `PATCH` method for this operation.
        #
        # @overload apply(auth_rule_token, card_tokens:, program_level:, account_tokens: nil, business_account_tokens: nil, excluded_card_tokens: nil, request_options: {})
        #
        # @param auth_rule_token [String] Globally unique identifier for the Auth Rule.
        #
        # @param card_tokens [Array<String>] Card tokens to which the Auth Rule applies.
        #
        # @param program_level [Boolean] Whether the Auth Rule applies to all authorizations on the card program.
        #
        # @param account_tokens [Array<String>] Account tokens to which the Auth Rule applies.
        #
        # @param business_account_tokens [Array<String>] Business Account tokens to which the Auth Rule applies.
        #
        # @param excluded_card_tokens [Array<String>] Card tokens to which the Auth Rule does not apply.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::AuthRules::V2ApplyResponse]
        #
        # @see Lithic::Models::AuthRules::V2ApplyParams
        def apply(auth_rule_token, params)
          parsed, options = Lithic::AuthRules::V2ApplyParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v2/auth_rules/%1$s/apply", auth_rule_token],
            body: parsed,
            model: Lithic::Models::AuthRules::V2ApplyResponse,
            options: options
          )
        end

        # Creates a new draft version of a rule that will be ran in shadow mode.
        #
        # This can also be utilized to reset the draft parameters, causing a draft version
        # to no longer be ran in shadow mode.
        #
        # @overload draft(auth_rule_token, parameters: nil, request_options: {})
        #
        # @param auth_rule_token [String] Globally unique identifier for the Auth Rule.
        #
        # @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::V2DraftParams::Parameters::ConditionalAuthorizationActionParameters, nil] Parameters for the Auth Rule
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::AuthRules::V2DraftResponse]
        #
        # @see Lithic::Models::AuthRules::V2DraftParams
        def draft(auth_rule_token, params = {})
          parsed, options = Lithic::AuthRules::V2DraftParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v2/auth_rules/%1$s/draft", auth_rule_token],
            body: parsed,
            model: Lithic::Models::AuthRules::V2DraftResponse,
            options: options
          )
        end

        # Promotes the draft version of an Auth rule to the currently active version such
        # that it is enforced in the respective stream.
        #
        # @overload promote(auth_rule_token, request_options: {})
        #
        # @param auth_rule_token [String] Globally unique identifier for the Auth Rule.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::AuthRules::V2PromoteResponse]
        #
        # @see Lithic::Models::AuthRules::V2PromoteParams
        def promote(auth_rule_token, params = {})
          @client.request(
            method: :post,
            path: ["v2/auth_rules/%1$s/promote", auth_rule_token],
            model: Lithic::Models::AuthRules::V2PromoteResponse,
            options: params[:request_options]
          )
        end

        # @deprecated
        #
        # This endpoint is deprecated and will be removed in the future. Requests a
        # performance report of an Auth rule to be asynchronously generated. Reports can
        # only be run on rules in draft or active mode and will included approved and
        # declined statistics as well as examples. The generated report will be delivered
        # asynchronously through a webhook with `event_type` =
        # `auth_rules.performance_report.created`. See the docs on setting up
        # [webhook subscriptions](https://docs.lithic.com/docs/events-api).
        #
        # Reports are generated based on data collected by Lithic's processing system in
        # the trailing week. The performance of the auth rule will be assessed on the
        # configuration of the auth rule at the time the report is requested. This implies
        # that if a performance report is requested, right after updating an auth rule,
        # depending on the number of events processed for a card program, it may be the
        # case that no data is available for the report. Therefore Lithic recommends to
        # decouple making updates to an Auth Rule, and requesting performance reports.
        #
        # To make this concrete, consider the following example:
        #
        # 1. At time `t`, a new Auth Rule is created, and applies to all auth events on a
        #    card program. The Auth Rule has not yet been promoted, causing the draft
        #    version of the rule to be applied in shadow mode.
        # 2. At time `t + 1 hour` a performance report is requested for the Auth Rule.
        #    This performance report will _only_ contain data for the Auth Rule being
        #    executed in the window between `t` and `t + 1 hour`. This is because Lithic's
        #    transaction processing system will only start capturing data for the Auth
        #    Rule at the time it is created.
        # 3. At time `t + 2 hours` the draft version of the Auth Rule is promoted to the
        #    active version of the Auth Rule by calling the
        #    `/v2/auth_rules/{auth_rule_token}/promote` endpoint. If a performance report
        #    is requested at this moment it will still only contain data for this version
        #    of the rule, but the window of available data will now span from `t` to
        #    `t + 2 hours`.
        # 4. At time `t + 3 hours` a new version of the rule is drafted by calling the
        #    `/v2/auth_rules/{auth_rule_token}/draft` endpoint. If a performance report is
        #    requested right at this moment, it will only contain data for events to which
        #    both the active version and the draft version is applied. Lithic does this to
        #    ensure that performance reports represent a fair comparison between rules.
        #    Because there may be no events in this window, and because there may be some
        #    lag before data is available in a performance report, the requested
        #    performance report could contain no to little data.
        # 5. At time `t + 4 hours` another performance report is requested: this time the
        #    performance report will contain data from the window between `t + 3 hours`
        #    and `t + 4 hours`, for any events to which both the current version of the
        #    Auth rule (in enforcing mode) and the draft version of the Auth rule (in
        #    shadow mode) applied.
        #
        # Note that generating a report may take up to 15 minutes and that delivery is not
        # guaranteed. Customers are required to have created an event subscription to
        # receive the webhook. Additionally, there is a delay of approximately 15 minutes
        # between when Lithic's transaction processing systems have processed the
        # transaction, and when a transaction will be included in the report.
        #
        # @overload report(auth_rule_token, request_options: {})
        #
        # @param auth_rule_token [String] Globally unique identifier for the Auth Rule.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::AuthRules::V2ReportResponse]
        #
        # @see Lithic::Models::AuthRules::V2ReportParams
        def report(auth_rule_token, params = {})
          @client.request(
            method: :post,
            path: ["v2/auth_rules/%1$s/report", auth_rule_token],
            model: Lithic::Models::AuthRules::V2ReportResponse,
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
        # @param auth_rule_token [String] Globally unique identifier for the Auth Rule.
        #
        # @param account_token [String]
        #
        # @param card_token [String]
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::AuthRules::V2RetrieveFeaturesResponse]
        #
        # @see Lithic::Models::AuthRules::V2RetrieveFeaturesParams
        def retrieve_features(auth_rule_token, params = {})
          parsed, options = Lithic::AuthRules::V2RetrieveFeaturesParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v2/auth_rules/%1$s/features", auth_rule_token],
            query: parsed,
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
        # @param auth_rule_token [String] Globally unique identifier for the Auth Rule.
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
          @client.request(
            method: :get,
            path: ["v2/auth_rules/%1$s/report", auth_rule_token],
            query: parsed.transform_keys(begin_: "begin", end_: "end"),
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
