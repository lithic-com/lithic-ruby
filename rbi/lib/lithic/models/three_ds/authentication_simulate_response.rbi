# typed: strong

module Lithic
  module Models
    module ThreeDS
      class AuthenticationSimulateResponse < Lithic::BaseModel
        # A unique token to reference this transaction with later calls to void or clear
        #   the authorization.
        sig { returns(T.nilable(String)) }
        def token
        end

        sig { params(_: String).returns(String) }
        def token=(_)
        end

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
