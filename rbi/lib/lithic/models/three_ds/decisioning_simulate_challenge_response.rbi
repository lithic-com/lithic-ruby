# typed: strong

module Lithic
  module Models
    module ThreeDS
      class DecisioningSimulateChallengeResponse < Lithic::BaseModel
        # A unique token to reference this transaction with later calls to void or clear
        #   the authorization. This token is used in
        #   /v1/three_ds_decisioning/simulate/challenge_response to Approve or Decline the
        #   authentication
        sig { returns(T.nilable(String)) }
        attr_reader :token

        sig { params(token: String).void }
        attr_writer :token

        sig { params(token: String).returns(T.attached_class) }
        def self.new(token: nil)
        end

        sig { override.returns({token: String}) }
        def to_hash
        end
      end
    end
  end
end
