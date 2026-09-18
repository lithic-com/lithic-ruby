# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      # @see Lithic::Resources::FinancialAccounts::InstallmentPlans#retrieve
      class InstallmentPlanRetrieveParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute financial_account_token
        #   Globally unique identifier for financial account.
        #
        #   @return [String]
        required :financial_account_token, String

        # @!attribute installment_plan_token
        #   Globally unique identifier for installment plan.
        #
        #   @return [String]
        required :installment_plan_token, String

        # @!method initialize(financial_account_token:, installment_plan_token:, request_options: {})
        #   @param financial_account_token [String] Globally unique identifier for financial account.
        #
        #   @param installment_plan_token [String] Globally unique identifier for installment plan.
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
