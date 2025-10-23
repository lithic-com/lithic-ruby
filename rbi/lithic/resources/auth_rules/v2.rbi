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
            card_tokens: T::Array[String],
            program_level: T::Boolean,
            account_tokens: T::Array[String],
            business_account_tokens: T::Array[String],
            event_stream:
              Lithic::AuthRules::V2CreateParams::EventStream::OrSymbol,
            name: T.nilable(String),
            parameters:
              T.any(
                Lithic::AuthRules::ConditionalBlockParameters::OrHash,
                Lithic::AuthRules::VelocityLimitParams::OrHash,
                Lithic::AuthRules::MerchantLockParameters::OrHash,
                Lithic::AuthRules::Conditional3DSActionParameters::OrHash,
                Lithic::AuthRules::V2CreateParams::Parameters::ConditionalAuthorizationActionParameters::OrHash
              ),
            type: Lithic::AuthRules::V2CreateParams::Type::OrSymbol,
            excluded_card_tokens: T::Array[String],
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::Models::AuthRules::V2CreateResponse)
        end
        def create(
          # Card tokens to which the Auth Rule applies.
          card_tokens:,
          # Whether the Auth Rule applies to all authorizations on the card program.
          program_level:,
          # Account tokens to which the Auth Rule applies.
          account_tokens: nil,
          # Business Account tokens to which the Auth Rule applies.
          business_account_tokens: nil,
          # The event stream during which the rule will be evaluated.
          event_stream: nil,
          # Auth Rule Name
          name: nil,
          # Parameters for the Auth Rule
          parameters: nil,
          # The type of Auth Rule. For certain rule types, this determines the event stream
          # during which it will be evaluated. For rules that can be applied to one of
          # several event streams, the effective one is defined by the separate
          # `event_stream` field.
          #
          # - `CONDITIONAL_BLOCK`: AUTHORIZATION event stream.
          # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
          # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
          # - `CONDITIONAL_ACTION`: AUTHORIZATION or THREE_DS_AUTHENTICATION event stream.
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
            business_account_tokens: T::Array[String],
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
          # Business Account tokens to which the Auth Rule applies.
          business_account_tokens: nil,
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
            business_account_token: String,
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
          # Only return Auth Rules that are bound to the provided business account token.
          business_account_token: nil,
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
            card_tokens: T::Array[String],
            program_level: T::Boolean,
            account_tokens: T::Array[String],
            business_account_tokens: T::Array[String],
            excluded_card_tokens: T::Array[String],
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::Models::AuthRules::V2ApplyResponse)
        end
        def apply(
          # Globally unique identifier for the Auth Rule.
          auth_rule_token,
          # Card tokens to which the Auth Rule applies.
          card_tokens:,
          # Whether the Auth Rule applies to all authorizations on the card program.
          program_level:,
          # Account tokens to which the Auth Rule applies.
          account_tokens: nil,
          # Business Account tokens to which the Auth Rule applies.
          business_account_tokens: nil,
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
                  Lithic::AuthRules::Conditional3DSActionParameters::OrHash,
                  Lithic::AuthRules::V2DraftParams::Parameters::ConditionalAuthorizationActionParameters::OrHash
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
          # Globally unique identifier for the Auth Rule.
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
