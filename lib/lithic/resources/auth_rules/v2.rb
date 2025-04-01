# frozen_string_literal: true

module Lithic
  module Resources
    class AuthRules
      class V2
        # @return [Lithic::Resources::AuthRules::V2::Backtests]
        attr_reader :backtests

        # Creates a new V2 authorization rule in draft mode
        #
        # @param params [Lithic::Models::AuthRules::V2CreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :account_tokens Account tokens to which the Auth Rule applies.
        #
        #   @option params [Array<String>] :card_tokens Card tokens to which the Auth Rule applies.
        #
        #   @option params [Boolean] :program_level Whether the Auth Rule applies to all authorizations on the card program.
        #
        #   @option params [String, nil] :name Auth Rule Name
        #
        #   @option params [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams] :parameters Parameters for the Auth Rule
        #
        #   @option params [Symbol, Lithic::Models::AuthRules::V2CreateParams::Type] :type The type of Auth Rule
        #
        #   @option params [Array<String>] :excluded_card_tokens Card tokens to which the Auth Rule does not apply.
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::AuthRules::V2CreateResponse]
        def create(params)
          parsed, options = Lithic::Models::AuthRules::V2CreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v2/auth_rules",
            body: parsed,
            model: Lithic::Models::AuthRules::V2CreateResponse,
            options: options
          )
        end

        # Fetches a V2 authorization rule by its token
        #
        # @param auth_rule_token [String] Globally unique identifier for the Auth Rule.
        #
        # @param params [Lithic::Models::AuthRules::V2RetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::AuthRules::V2RetrieveResponse]
        def retrieve(auth_rule_token, params = {})
          @client.request(
            method: :get,
            path: ["v2/auth_rules/%1$s", auth_rule_token],
            model: Lithic::Models::AuthRules::V2RetrieveResponse,
            options: params[:request_options]
          )
        end

        # Updates a V2 authorization rule's properties
        #
        #   If `account_tokens`, `card_tokens`, `program_level`, or `excluded_card_tokens`
        #   is provided, this will replace existing associations with the provided list of
        #   entities.
        #
        # @param auth_rule_token [String] Globally unique identifier for the Auth Rule.
        #
        # @param params [Lithic::Models::AuthRules::V2UpdateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :account_tokens Account tokens to which the Auth Rule applies.
        #
        #   @option params [String, nil] :name Auth Rule Name
        #
        #   @option params [Symbol, Lithic::Models::AuthRules::V2UpdateParams::State] :state The desired state of the Auth Rule.
        #
        #     Note that only deactivating an Auth Rule through this endpoint is supported at
        #     this time. If you need to (re-)activate an Auth Rule the /promote endpoint
        #     should be used to promote a draft to the currently active version.
        #
        #   @option params [Array<String>] :card_tokens Card tokens to which the Auth Rule applies.
        #
        #   @option params [Array<String>] :excluded_card_tokens Card tokens to which the Auth Rule does not apply.
        #
        #   @option params [Boolean] :program_level Whether the Auth Rule applies to all authorizations on the card program.
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::AuthRules::V2UpdateResponse]
        def update(auth_rule_token, params = {})
          parsed, options = Lithic::Models::AuthRules::V2UpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["v2/auth_rules/%1$s", auth_rule_token],
            body: parsed,
            model: Lithic::Models::AuthRules::V2UpdateResponse,
            options: options
          )
        end

        # Lists V2 authorization rules
        #
        # @param params [Lithic::Models::AuthRules::V2ListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :account_token Only return Authorization Rules that are bound to the provided account token.
        #
        #   @option params [String] :card_token Only return Authorization Rules that are bound to the provided card token.
        #
        #   @option params [String] :ending_before A cursor representing an item's token before which a page of results should end.
        #     Used to retrieve the previous page of results before this item.
        #
        #   @option params [Integer] :page_size Page size (for pagination).
        #
        #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
        #     begin. Used to retrieve the next page of results after this item.
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::CursorPage<Lithic::Models::AuthRules::V2ListResponse>]
        def list(params = {})
          parsed, options = Lithic::Models::AuthRules::V2ListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "v2/auth_rules",
            query: parsed,
            page: Lithic::CursorPage,
            model: Lithic::Models::AuthRules::V2ListResponse,
            options: options
          )
        end

        # Deletes a V2 authorization rule
        #
        # @param auth_rule_token [String] Globally unique identifier for the Auth Rule.
        #
        # @param params [Lithic::Models::AuthRules::V2DeleteParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        def delete(auth_rule_token, params = {})
          @client.request(
            method: :delete,
            path: ["v2/auth_rules/%1$s", auth_rule_token],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Associates a V2 authorization rule with a card program, the provided account(s)
        #   or card(s).
        #
        #   Prefer using the `PATCH` method for this operation.
        #
        # @param auth_rule_token [String] Globally unique identifier for the Auth Rule.
        #
        # @param params [Lithic::Models::AuthRules::V2ApplyParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :account_tokens Account tokens to which the Auth Rule applies.
        #
        #   @option params [Array<String>] :card_tokens Card tokens to which the Auth Rule applies.
        #
        #   @option params [Boolean] :program_level Whether the Auth Rule applies to all authorizations on the card program.
        #
        #   @option params [Array<String>] :excluded_card_tokens Card tokens to which the Auth Rule does not apply.
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::AuthRules::V2ApplyResponse]
        def apply(auth_rule_token, params)
          parsed, options = Lithic::Models::AuthRules::V2ApplyParams.dump_request(params)
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
        #   This can also be utilized to reset the draft parameters, causing a draft version
        #   to no longer be ran in shadow mode.
        #
        # @param auth_rule_token [String] Globally unique identifier for the Auth Rule.
        #
        # @param params [Lithic::Models::AuthRules::V2DraftParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, nil] :parameters Parameters for the Auth Rule
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::AuthRules::V2DraftResponse]
        def draft(auth_rule_token, params = {})
          parsed, options = Lithic::Models::AuthRules::V2DraftParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v2/auth_rules/%1$s/draft", auth_rule_token],
            body: parsed,
            model: Lithic::Models::AuthRules::V2DraftResponse,
            options: options
          )
        end

        # Promotes the draft version of an authorization rule to the currently active
        #   version such that it is enforced in the authorization stream.
        #
        # @param auth_rule_token [String] Globally unique identifier for the Auth Rule.
        #
        # @param params [Lithic::Models::AuthRules::V2PromoteParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::AuthRules::V2PromoteResponse]
        def promote(auth_rule_token, params = {})
          @client.request(
            method: :post,
            path: ["v2/auth_rules/%1$s/promote", auth_rule_token],
            model: Lithic::Models::AuthRules::V2PromoteResponse,
            options: params[:request_options]
          )
        end

        # Requests a performance report of an authorization rule to be asynchronously
        #   generated. Reports can only be run on rules in draft or active mode and will
        #   included approved and declined statistics as well as examples. The generated
        #   report will be delivered asynchronously through a webhook with `event_type` =
        #   `auth_rules.performance_report.created`. See the docs on setting up
        #   [webhook subscriptions](https://docs.lithic.com/docs/events-api).
        #
        #   Reports are generated based on data collected by Lithic's authorization
        #   processing system in the trailing week. The performance of the auth rule will be
        #   assessed on the configuration of the auth rule at the time the report is
        #   requested. This implies that if a performance report is requested, right after
        #   updating an auth rule, depending on the number of authorizations processed for a
        #   card program, it may be the case that no data is available for the report.
        #   Therefore Lithic recommends to decouple making updates to an Auth Rule, and
        #   requesting performance reports.
        #
        #   To make this concrete, consider the following example:
        #
        #   1. At time `t`, a new Auth Rule is created, and applies to all authorizations on
        #      a card program. The Auth Rule has not yet been promoted, causing the draft
        #      version of the rule to be applied in shadow mode.
        #   2. At time `t + 1 hour` a performance report is requested for the Auth Rule.
        #      This performance report will _only_ contain data for the Auth Rule being
        #      executed in the window between `t` and `t + 1 hour`. This is because Lithic's
        #      transaction processing system will only start capturing data for the Auth
        #      Rule at the time it is created.
        #   3. At time `t + 2 hours` the draft version of the Auth Rule is promoted to the
        #      active version of the Auth Rule by calling the
        #      `/v2/auth_rules/{auth_rule_token}/promote` endpoint. If a performance report
        #      is requested at this moment it will still only contain data for this version
        #      of the rule, but the window of available data will now span from `t` to
        #      `t + 2 hours`.
        #   4. At time `t + 3 hours` a new version of the rule is drafted by calling the
        #      `/v2/auth_rules/{auth_rule_token}/draft` endpoint. If a performance report is
        #      requested right at this moment, it will only contain data for authorizations
        #      to which both the active version and the draft version is applied. Lithic
        #      does this to ensure that performance reports represent a fair comparison
        #      between rules. Because there may be no authorizations in this window, and
        #      because there may be some lag before data is available in a performance
        #      report, the requested performance report could contain no to little data.
        #   5. At time `t + 4 hours` another performance report is requested: this time the
        #      performance report will contain data from the window between `t + 3 hours`
        #      and `t + 4 hours`, for any authorizations to which both the current version
        #      of the authorization rule (in enforcing mode) and the draft version of the
        #      authorization rule (in shadow mode) applied.
        #
        #   Note that generating a report may take up to 15 minutes and that delivery is not
        #   guaranteed. Customers are required to have created an event subscription to
        #   receive the webhook. Additionally, there is a delay of approximately 15 minutes
        #   between when Lithic's transaction processing systems have processed the
        #   transaction, and when a transaction will be included in the report.
        #
        # @param auth_rule_token [String] Globally unique identifier for the Auth Rule.
        #
        # @param params [Lithic::Models::AuthRules::V2ReportParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::AuthRules::V2ReportResponse]
        def report(auth_rule_token, params = {})
          @client.request(
            method: :post,
            path: ["v2/auth_rules/%1$s/report", auth_rule_token],
            model: Lithic::Models::AuthRules::V2ReportResponse,
            options: params[:request_options]
          )
        end

        # @param client [Lithic::Client]
        def initialize(client:)
          @client = client
          @backtests = Lithic::Resources::AuthRules::V2::Backtests.new(client: client)
        end
      end
    end
  end
end
