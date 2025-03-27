# frozen_string_literal: true

module Lithic
  module Models
    module ThreeDS
      class DecisioningSimulateChallengeResponse < Lithic::BaseModel
        # @!attribute [r] token
        #   A unique token to reference this transaction with later calls to void or clear
        #     the authorization. This token is used in
        #     /v1/three_ds_decisioning/simulate/challenge_response to Approve or Decline the
        #     authentication
        #
        #   @return [String, nil]
        optional :token, String

        # @!parse
        #   # @return [String]
        #   attr_writer :token

        # @!parse
        #   # @param token [String]
        #   #
        #   def initialize(token: nil, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
