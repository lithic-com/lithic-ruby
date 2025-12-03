# frozen_string_literal: true

module Lithic
  module Models
    class WalletDecisioningInfo < Lithic::Internal::Type::BaseModel
      # @!attribute account_score
      #   Score given to the account by the Wallet Provider
      #
      #   @return [String, nil]
      required :account_score, String, nil?: true

      # @!attribute device_score
      #   Score given to the device by the Wallet Provider
      #
      #   @return [String, nil]
      required :device_score, String, nil?: true

      # @!attribute recommended_decision
      #   The decision recommended by the Wallet Provider
      #
      #   @return [String, nil]
      required :recommended_decision, String, nil?: true

      # @!attribute recommendation_reasons
      #   Reasons provided to the Wallet Provider on how the recommended decision was
      #   reached
      #
      #   @return [Array<String>, nil]
      optional :recommendation_reasons, Lithic::Internal::Type::ArrayOf[String], nil?: true

      # @!method initialize(account_score:, device_score:, recommended_decision:, recommendation_reasons: nil)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::WalletDecisioningInfo} for more details.
      #
      #   @param account_score [String, nil] Score given to the account by the Wallet Provider
      #
      #   @param device_score [String, nil] Score given to the device by the Wallet Provider
      #
      #   @param recommended_decision [String, nil] The decision recommended by the Wallet Provider
      #
      #   @param recommendation_reasons [Array<String>, nil] Reasons provided to the Wallet Provider on how the recommended decision was reac
    end
  end
end
