# typed: strong

module Lithic
  module Models
    module ThreeDS
      class AuthenticationSimulateResponse < Lithic::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

        # A unique token to reference this transaction with later calls to void or clear
        # the authorization.
        sig { returns(T.nilable(String)) }
        attr_reader :token

        sig { params(token: String).void }
        attr_writer :token

        sig { params(token: String).returns(T.attached_class) }
        def self.new(
          # A unique token to reference this transaction with later calls to void or clear
          # the authorization.
          token: nil
        )
        end

        sig { override.returns({ token: String }) }
        def to_hash
        end
      end
    end
  end
end
