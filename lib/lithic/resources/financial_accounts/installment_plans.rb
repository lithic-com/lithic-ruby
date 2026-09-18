# frozen_string_literal: true

module Lithic
  module Resources
    class FinancialAccounts
      class InstallmentPlans
        # Get a specific installment plan for a given financial account.
        #
        # @overload retrieve(installment_plan_token, financial_account_token:, request_options: {})
        #
        # @param installment_plan_token [String] Globally unique identifier for installment plan.
        #
        # @param financial_account_token [String] Globally unique identifier for financial account.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::FinancialAccounts::InstallmentPlan]
        #
        # @see Lithic::Models::FinancialAccounts::InstallmentPlanRetrieveParams
        def retrieve(installment_plan_token, params)
          parsed, options = Lithic::FinancialAccounts::InstallmentPlanRetrieveParams.dump_request(params)
          financial_account_token =
            parsed.delete(:financial_account_token) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: [
              "v1/financial_accounts/%1$s/installment_plans/%2$s",
              financial_account_token,
              installment_plan_token
            ],
            model: Lithic::FinancialAccounts::InstallmentPlan,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::FinancialAccounts::InstallmentPlanListParams} for more details.
        #
        # List the installment plans for a given financial account.
        #
        # @overload list(financial_account_token, ending_before: nil, page_size: nil, starting_after: nil, state: nil, request_options: {})
        #
        # @param financial_account_token [String] Globally unique identifier for financial account.
        #
        # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
        #
        # @param page_size [Integer] Page size (for pagination).
        #
        # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
        #
        # @param state [Symbol, Lithic::Models::FinancialAccounts::InstallmentPlanListParams::State, nil] Only installment plans in this state will be included.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Internal::CursorPage<Lithic::Models::FinancialAccounts::InstallmentPlan>]
        #
        # @see Lithic::Models::FinancialAccounts::InstallmentPlanListParams
        def list(financial_account_token, params = {})
          parsed, options = Lithic::FinancialAccounts::InstallmentPlanListParams.dump_request(params)
          query = Lithic::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["v1/financial_accounts/%1$s/installment_plans", financial_account_token],
            query: query,
            page: Lithic::Internal::CursorPage,
            model: Lithic::FinancialAccounts::InstallmentPlan,
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
