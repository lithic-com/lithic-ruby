# frozen_string_literal: true

module Lithic
  module Resources
    class FinancialAccounts
      class InstallmentPlans
        class Statements
          # Get a specific statement snapshot for a given installment plan.
          #
          # @overload retrieve(statement_token, financial_account_token:, installment_plan_token:, request_options: {})
          #
          # @param statement_token [String] Globally unique identifier for statement.
          #
          # @param financial_account_token [String] Globally unique identifier for financial account.
          #
          # @param installment_plan_token [String] Globally unique identifier for installment plan.
          #
          # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Lithic::Models::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement]
          #
          # @see Lithic::Models::FinancialAccounts::InstallmentPlans::StatementRetrieveParams
          def retrieve(statement_token, params)
            parsed, options =
              Lithic::FinancialAccounts::InstallmentPlans::StatementRetrieveParams.dump_request(params)
            financial_account_token =
              parsed.delete(:financial_account_token) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            installment_plan_token =
              parsed.delete(:installment_plan_token) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: [
                "v1/financial_accounts/%1$s/installment_plans/%2$s/statements/%3$s",
                financial_account_token,
                installment_plan_token,
                statement_token
              ],
              model: Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Lithic::Models::FinancialAccounts::InstallmentPlans::StatementListParams} for
          # more details.
          #
          # List the statement snapshots for a given installment plan.
          #
          # @overload list(installment_plan_token, financial_account_token:, begin_: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, state: nil, request_options: {})
          #
          # @param installment_plan_token [String] Path param: Globally unique identifier for installment plan.
          #
          # @param financial_account_token [String] Path param: Globally unique identifier for financial account.
          #
          # @param begin_ [Date] Query param: Date string in RFC 3339 format. Only entries created after the spec
          #
          # @param end_ [Date] Query param: Date string in RFC 3339 format. Only entries created before the spe
          #
          # @param ending_before [String] Query param: A cursor representing an item's token before which a page of result
          #
          # @param page_size [Integer] Query param: Page size (for pagination).
          #
          # @param starting_after [String] Query param: A cursor representing an item's token after which a page of results
          #
          # @param state [Symbol, Lithic::Models::FinancialAccounts::InstallmentPlans::StatementListParams::State, nil] Query param: Only snapshots in which the plan was in this state will be included
          #
          # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Lithic::Internal::CursorPage<Lithic::Models::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement>]
          #
          # @see Lithic::Models::FinancialAccounts::InstallmentPlans::StatementListParams
          def list(installment_plan_token, params)
            parsed, options = Lithic::FinancialAccounts::InstallmentPlans::StatementListParams.dump_request(params)
            query = Lithic::Internal::Util.encode_query_params(parsed)
            financial_account_token =
              parsed.delete(:financial_account_token) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: [
                "v1/financial_accounts/%1$s/installment_plans/%2$s/statements",
                financial_account_token,
                installment_plan_token
              ],
              query: query.transform_keys(begin_: "begin", end_: "end"),
              page: Lithic::Internal::CursorPage,
              model: Lithic::FinancialAccounts::InstallmentPlans::InstallmentPlanStatement,
              options: options
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
end
