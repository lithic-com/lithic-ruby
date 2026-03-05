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
            body:
              T.any(
                Lithic::AuthRules::V2CreateParams::Body::AccountLevelRule::OrHash,
                Lithic::AuthRules::V2CreateParams::Body::CardLevelRule::OrHash,
                Lithic::AuthRules::V2CreateParams::Body::ProgramLevelRule::OrHash
              ),
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::AuthRules::AuthRule)
        end
        def create(body:, request_options: {})
        end

        # Fetches a V2 Auth rule by its token
        sig do
          params(
            auth_rule_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::AuthRules::AuthRule)
        end
        def retrieve(auth_rule_token, request_options: {})
        end

        # Updates a V2 Auth rule's properties
        #
        # If `account_tokens`, `card_tokens`, `program_level`, or `excluded_card_tokens`
        # is provided, this will replace existing associations with the provided list of
        # entities.
        sig do
          params(
            auth_rule_token: String,
            body:
              T.any(
                Lithic::AuthRules::V2UpdateParams::Body::AccountLevelRule::OrHash,
                Lithic::AuthRules::V2UpdateParams::Body::CardLevelRule::OrHash,
                Lithic::AuthRules::V2UpdateParams::Body::ProgramLevelRule::OrHash
              ),
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::AuthRules::AuthRule)
        end
        def update(auth_rule_token, body:, request_options: {})
        end

        # Lists V2 Auth rules
        sig do
          params(
            account_token: String,
            business_account_token: String,
            card_token: String,
            ending_before: String,
            event_stream: Lithic::AuthRules::EventStream::OrSymbol,
            event_streams: T::Array[Lithic::AuthRules::EventStream::OrSymbol],
            page_size: Integer,
            scope: Lithic::AuthRules::V2ListParams::Scope::OrSymbol,
            starting_after: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::Internal::CursorPage[Lithic::AuthRules::AuthRule])
        end
        def list(
          # Only return Auth Rules that are bound to the provided account token.
          account_token: nil,
          # Only return Auth Rules that are bound to the provided business account token.
          business_account_token: nil,
          # Only return Auth Rules that are bound to the provided card token.
          card_token: nil,
          # A cursor representing an item's token before which a page of results should end.
          # Used to retrieve the previous page of results before this item.
          ending_before: nil,
          # Deprecated: Use event_streams instead. Only return Auth rules that are executed
          # during the provided event stream.
          event_stream: nil,
          # Only return Auth rules that are executed during any of the provided event
          # streams. If event_streams and event_stream are specified, the values will be
          # combined.
          event_streams: nil,
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
        def delete(auth_rule_token, request_options: {})
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
                  Lithic::AuthRules::Conditional3DSActionParameters::OrHash,
                  Lithic::AuthRules::ConditionalAuthorizationActionParameters::OrHash,
                  Lithic::AuthRules::ConditionalACHActionParameters::OrHash,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::OrHash
                )
              ),
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::AuthRules::AuthRule)
        end
        def draft(
          auth_rule_token,
          # Parameters for the Auth Rule
          parameters: nil,
          request_options: {}
        )
        end

        # Lists Auth Rule evaluation results.
        #
        # **Limitations:**
        #
        # - Results are available for the past 3 months only
        # - At least one filter (`event_token` or `auth_rule_token`) must be provided
        # - When filtering by `event_token`, pagination is not supported
        sig do
          params(
            auth_rule_token: String,
            begin_: Time,
            end_: Time,
            ending_before: String,
            event_token: String,
            has_actions: T::Boolean,
            page_size: Integer,
            starting_after: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(
            Lithic::Internal::CursorPage[
              Lithic::Models::AuthRules::V2ListResultsResponse::Variants
            ]
          )
        end
        def list_results(
          # Filter by Auth Rule token
          auth_rule_token: nil,
          # Date string in RFC 3339 format. Only events evaluated after the specified time
          # will be included. UTC time zone.
          begin_: nil,
          # Date string in RFC 3339 format. Only events evaluated before the specified time
          # will be included. UTC time zone.
          end_: nil,
          # A cursor representing an item's token before which a page of results should end.
          # Used to retrieve the previous page of results before this item.
          ending_before: nil,
          # Filter by event token
          event_token: nil,
          # Filter by whether the rule evaluation produced any actions. When not provided,
          # all results are returned.
          has_actions: nil,
          # Page size (for pagination).
          page_size: nil,
          # A cursor representing an item's token after which a page of results should
          # begin. Used to retrieve the next page of results after this item.
          starting_after: nil,
          request_options: {}
        )
        end

        # Promotes the draft version of an Auth rule to the currently active version such
        # that it is enforced in the respective stream.
        sig do
          params(
            auth_rule_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::AuthRules::AuthRule)
        end
        def promote(auth_rule_token, request_options: {})
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
        sig do
          params(
            auth_rule_token: String,
            account_token: String,
            card_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::Models::AuthRules::V2RetrieveFeaturesResponse)
        end
        def retrieve_features(
          auth_rule_token,
          account_token: nil,
          card_token: nil,
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
