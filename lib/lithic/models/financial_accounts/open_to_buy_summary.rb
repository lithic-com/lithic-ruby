# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      class OpenToBuySummary < Lithic::Internal::Type::BaseModel
        # @!attribute security
        #   Available balance of the Security Account backing card spend, in the currency's
        #   smallest unit (e.g., cents for USD)
        #
        #   @return [Integer]
        required :security, Integer

        # @!attribute settled_funds
        #   Funding that has moved out of the Security Account to cover card spend Lithic
        #   has already paid out to the networks, in the currency's smallest unit (e.g.,
        #   cents for USD). Open to buy counts it alongside `security`, and it clears once
        #   collected from your business clients. Only Commercial Charge tracks this
        #   separately, so this is `null` for every other program setup
        #
        #   @return [Integer, nil]
        required :settled_funds, Integer, nil?: true

        # @!attribute total_outstanding_spend
        #   Customer card spend that has not yet been collected, in the currency's smallest
        #   unit (e.g., cents for USD). Reported as a negative amount, because it reduces
        #   open to buy
        #
        #   @return [Integer]
        required :total_outstanding_spend, Integer

        # @!method initialize(security:, settled_funds:, total_outstanding_spend:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::FinancialAccounts::OpenToBuySummary} for more details.
        #
        #   Open to Buy Summary
        #
        #   @param security [Integer] Available balance of the Security Account backing card spend, in the currency's
        #
        #   @param settled_funds [Integer, nil] Funding that has moved out of the Security Account to cover card spend Lithic ha
        #
        #   @param total_outstanding_spend [Integer] Customer card spend that has not yet been collected, in the currency's
      end
    end
  end
end
