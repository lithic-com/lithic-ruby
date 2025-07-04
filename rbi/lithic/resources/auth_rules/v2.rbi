# typed: strong

module Lithic
  module Resources
    class AuthRules
      class V2
        sig { returns(Lithic::Resources::AuthRules::V2::Backtests) }
        attr_reader :backtests

        # Creates a new V2 Auth rule in draft mode
        sig do
          params(
            account_tokens: T::Array[String],
            card_tokens: T::Array[String],
            program_level: T::Boolean,
            name: T.nilable(String),
            parameters:
              T.any(
                Lithic::AuthRules::ConditionalBlockParameters::OrHash,
                Lithic::AuthRules::VelocityLimitParams::OrHash,
                Lithic::AuthRules::MerchantLockParameters::OrHash,
                Lithic::AuthRules::Conditional3DSActionParameters::OrHash
              ),
            type: Lithic::AuthRules::V2CreateParams::Type::OrSymbol,
            excluded_card_tokens: T::Array[String],
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::Models::AuthRules::V2CreateResponse)
        end
        def create(
          # Account tokens to which the Auth Rule applies.
          account_tokens:,
          # Card tokens to which the Auth Rule applies.
          card_tokens:,
          # Whether the Auth Rule applies to all authorizations on the card program.
          program_level:,
          # Auth Rule Name
          name: nil,
          # Parameters for the Auth Rule
          parameters: nil,
          # The type of Auth Rule. Effectively determines the event stream during which it
          # will be evaluated.
          #
          # - `CONDITIONAL_BLOCK`: AUTHORIZATION event stream.
          # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
          # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
          # - `CONDITIONAL_3DS_ACTION`: THREE_DS_AUTHENTICATION event stream.
          type: nil,
          # Card tokens to which the Auth Rule does not apply.
          excluded_card_tokens: nil,
          request_options: {}
        )
        end

        # Fetches a V2 Auth rule by its token
        sig do
          params(
            auth_rule_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::Models::AuthRules::V2RetrieveResponse)
        end
        def retrieve(
          # Globally unique identifier for the Auth Rule.
          auth_rule_token,
          request_options: {}
        )
        end

        # Updates a V2 Auth rule's properties
        #
        # If `account_tokens`, `card_tokens`, `program_level`, or `excluded_card_tokens`
        # is provided, this will replace existing associations with the provided list of
        # entities.
        sig do
          params(
            auth_rule_token: String,
            account_tokens: T::Array[String],
            name: T.nilable(String),
            state: Lithic::AuthRules::V2UpdateParams::State::OrSymbol,
            card_tokens: T::Array[String],
            excluded_card_tokens: T::Array[String],
            program_level: T::Boolean,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::Models::AuthRules::V2UpdateResponse)
        end
        def update(
          # Globally unique identifier for the Auth Rule.
          auth_rule_token,
          # Account tokens to which the Auth Rule applies.
          account_tokens: nil,
          # Auth Rule Name
          name: nil,
          # The desired state of the Auth Rule.
          #
          # Note that only deactivating an Auth Rule through this endpoint is supported at
          # this time. If you need to (re-)activate an Auth Rule the /promote endpoint
          # should be used to promote a draft to the currently active version.
          state: nil,
          # Card tokens to which the Auth Rule applies.
          card_tokens: nil,
          # Card tokens to which the Auth Rule does not apply.
          excluded_card_tokens: nil,
          # Whether the Auth Rule applies to all authorizations on the card program.
          program_level: nil,
          request_options: {}
        )
        end

        # Lists V2 Auth rules
        sig do
          params(
            account_token: String,
            card_token: String,
            ending_before: String,
            event_stream:
              Lithic::AuthRules::V2ListParams::EventStream::OrSymbol,
            page_size: Integer,
            scope: Lithic::AuthRules::V2ListParams::Scope::OrSymbol,
            starting_after: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(
            Lithic::Internal::CursorPage[
              Lithic::Models::AuthRules::V2ListResponse
            ]
          )
        end
        def list(
          # Only return Auth Rules that are bound to the provided account token.
          account_token: nil,
          # Only return Auth Rules that are bound to the provided card token.
          card_token: nil,
          # A cursor representing an item's token before which a page of results should end.
          # Used to retrieve the previous page of results before this item.
          ending_before: nil,
          # Only return Auth rules that are executed during the provided event stream.
          event_stream: nil,
          # Page size (for pagination).
          page_size: nil,
          # Only return Auth Rules that are bound to the provided scope.
          scope: nil,
          # A cursor representing an item's token after which a page of results should
          # begin. Used to retrieve the next page of results after this item.
          starting_after: nil,
          request_options: {}
        )
        end

        # Deletes a V2 Auth rule
        sig do
          params(
            auth_rule_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).void
        end
        def delete(
          # Globally unique identifier for the Auth Rule.
          auth_rule_token,
          request_options: {}
        )
        end

        # Associates a V2 Auth rule with a card program, the provided account(s) or
        # card(s).
        #
        # Prefer using the `PATCH` method for this operation.
        sig do
          params(
            auth_rule_token: String,
            account_tokens: T::Array[String],
            card_tokens: T::Array[String],
            program_level: T::Boolean,
            excluded_card_tokens: T::Array[String],
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::Models::AuthRules::V2ApplyResponse)
        end
        def apply(
          # Globally unique identifier for the Auth Rule.
          auth_rule_token,
          # Account tokens to which the Auth Rule applies.
          account_tokens:,
          # Card tokens to which the Auth Rule applies.
          card_tokens:,
          # Whether the Auth Rule applies to all authorizations on the card program.
          program_level:,
          # Card tokens to which the Auth Rule does not apply.
          excluded_card_tokens: nil,
          request_options: {}
        )
        end

        # Creates a new draft version of a rule that will be ran in shadow mode.
        #
        # This can also be utilized to reset the draft parameters, causing a draft version
        # to no longer be ran in shadow mode.
        sig do
          params(
            auth_rule_token: String,
            parameters:
              T.nilable(
                T.any(
                  Lithic::AuthRules::ConditionalBlockParameters::OrHash,
                  Lithic::AuthRules::VelocityLimitParams::OrHash,
                  Lithic::AuthRules::MerchantLockParameters::OrHash,
                  Lithic::AuthRules::Conditional3DSActionParameters::OrHash
                )
              ),
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::Models::AuthRules::V2DraftResponse)
        end
        def draft(
          # Globally unique identifier for the Auth Rule.
          auth_rule_token,
          # Parameters for the Auth Rule
          parameters: nil,
          request_options: {}
        )
        end

        # Promotes the draft version of an Auth rule to the currently active version such
        # that it is enforced in the respective stream.
        sig do
          params(
            auth_rule_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::Models::AuthRules::V2PromoteResponse)
        end
        def promote(
          # Globally unique identifier for the Auth Rule.
          auth_rule_token,
          request_options: {}
        )
        end

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
        sig do
          params(
            auth_rule_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::Models::AuthRules::V2ReportResponse)
        end
        def report(
          # Globally unique identifier for the Auth Rule.
          auth_rule_token,
          request_options: {}
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
        sig do
          params(
            auth_rule_token: String,
            begin_: Date,
            end_: Date,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::Models::AuthRules::V2RetrieveReportResponse)
        end
        def retrieve_report(
          # Globally unique identifier for the Auth Rule.
          auth_rule_token,
          # Start date for the report
          begin_:,
          # End date for the report
          end_:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Lithic::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
