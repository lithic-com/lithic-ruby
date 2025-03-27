# typed: strong

module Lithic
  module Models
    module ThreeDS
      class DecisioningSimulateChallengeParams < Lithic::BaseModel
        extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

        # A unique token returned as part of a /v1/three_ds_authentication/simulate call
        #   that responded with a CHALLENGE_REQUESTED status.
        sig { returns(T.nilable(String)) }
        attr_reader :token

        sig { params(token: String).void }
        attr_writer :token

        sig do
          params(token: String, request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash))
            .returns(T.attached_class)
        end
        def self.new(token: nil, request_options: {})
        end

        sig { override.returns({token: String, request_options: Lithic::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
