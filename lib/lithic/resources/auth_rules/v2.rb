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
        # @overload create(parameters:, type:, card_tokens:, program_level:, account_tokens: nil, business_account_tokens: nil, event_stream: nil, name: nil, excluded_card_tokens: nil, request_options: {})
        #
        # @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters] Parameters for the Auth Rule
        #
        # @param type [Symbol, Lithic::Models::AuthRules::V2CreateParams::Type] The type of Auth Rule. For certain rule types, this determines the event stream
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
        # @param excluded_card_tokens [Array<String>] Card tokens to which the Auth Rule does not apply.
        #
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
            body: parsed,
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

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::AuthRules::V2UpdateParams} for more details.
        #
        # Updates a V2 Auth rule's properties
        #
        # If `account_tokens`, `card_tokens`, `program_level`, or `excluded_card_tokens`
        # is provided, this will replace existing associations with the provided list of
        # entities.
        #
        # @overload update(auth_rule_token, account_tokens: nil, business_account_tokens: nil, name: nil, state: nil, card_tokens: nil, excluded_card_tokens: nil, program_level: nil, request_options: {})
        #
        # @param auth_rule_token [String]
        #
        # @param account_tokens [Array<String>] Account tokens to which the Auth Rule applies.
        #
        # @param business_account_tokens [Array<String>] Business Account tokens to which the Auth Rule applies.
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
        # @return [Lithic::Models::AuthRules::AuthRule]
        #
        # @see Lithic::Models::AuthRules::V2UpdateParams
        def update(auth_rule_token, params = {})
          parsed, options = Lithic::AuthRules::V2UpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["v2/auth_rules/%1$s", auth_rule_token],
            body: parsed,
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
        # @param event_stream [Symbol, Lithic::Models::AuthRules::V2ListParams::EventStream] Deprecated: Use event_streams instead. Only return Auth rules that are executed
        #
        # @param event_streams [Array<Symbol, Lithic::Models::AuthRules::V2ListParams::EventStream>] Only return Auth rules that are executed during any of the provided event stream
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
          @client.request(
            method: :get,
            path: "v2/auth_rules",
            query: parsed,
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
        # @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, nil] Parameters for the Auth Rule
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
