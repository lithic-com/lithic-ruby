# typed: strong

module Lithic
  module Resources
    class AuthRules
      class V2
        class Backtests
          # Initiates a request to asynchronously generate a backtest for an Auth rule.
          # During backtesting, both the active version (if one exists) and the draft
          # version of the Auth Rule are evaluated by replaying historical transaction data
          # against the rule's conditions. This process allows customers to simulate and
          # understand the effects of proposed rule changes before deployment. The generated
          # backtest report provides detailed results showing whether the draft version of
          # the Auth Rule would have approved or declined historical transactions which were
          # processed during the backtest period. These reports help evaluate how changes to
          # rule configurations might affect overall transaction approval rates.
          #
          # The generated backtest report will be delivered asynchronously through a webhook
          # with `event_type` = `auth_rules.backtest_report.created`. See the docs on
          # setting up [webhook subscriptions](https://docs.lithic.com/docs/events-api). It
          # is also possible to request backtest reports on-demand through the
          # `/v2/auth_rules/{auth_rule_token}/backtests/{auth_rule_backtest_token}`
          # endpoint.
          #
          # Lithic currently supports backtesting for `CONDITIONAL_BLOCK` /
          # `CONDITIONAL_3DS_ACTION` rules. Backtesting for `VELOCITY_LIMIT` rules is
          # generally not supported. In specific cases (i.e. where Lithic has pre-calculated
          # the requested velocity metrics for historical transactions), a backtest may be
          # feasible. However, such cases are uncommon and customers should not anticipate
          # support for velocity backtests under most configurations. If a historical
          # transaction does not feature the required inputs to evaluate the rule, then it
          # will not be included in the final backtest report.
          sig do
            params(
              auth_rule_token: String,
              end_: Time,
              start: Time,
              request_options: Lithic::RequestOptions::OrHash
            ).returns(Lithic::Models::AuthRules::V2::BacktestCreateResponse)
          end
          def create(
            # Globally unique identifier for the Auth Rule.
            auth_rule_token,
            # The end time of the backtest.
            end_: nil,
            # The start time of the backtest.
            start: nil,
            request_options: {}
          )
          end

          # Returns the backtest results of an Auth rule (if available).
          #
          # Backtesting is an asynchronous process that requires time to complete. If a
          # customer retrieves the backtest results using this endpoint before the report is
          # fully generated, the response will return null for `results.current_version` and
          # `results.draft_version`. Customers are advised to wait for the backtest creation
          # process to complete (as indicated by the webhook event
          # auth_rules.backtest_report.created) before retrieving results from this
          # endpoint.
          #
          # Backtesting is an asynchronous process, while the backtest is being processed,
          # results will not be available which will cause `results.current_version` and
          # `results.draft_version` objects to contain `null`. The entries in `results` will
          # also always represent the configuration of the rule at the time requests are
          # made to this endpoint. For example, the results for `current_version` in the
          # served backtest report will be consistent with which version of the rule is
          # currently activated in the respective event stream, regardless of which version
          # of the rule was active in the event stream at the time a backtest is requested.
          sig do
            params(
              auth_rule_backtest_token: String,
              auth_rule_token: String,
              request_options: Lithic::RequestOptions::OrHash
            ).returns(Lithic::AuthRules::V2::BacktestResults)
          end
          def retrieve(
            # Globally unique identifier for an Auth Rule backtest.
            auth_rule_backtest_token,
            # Globally unique identifier for the Auth Rule.
            auth_rule_token:,
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
end
