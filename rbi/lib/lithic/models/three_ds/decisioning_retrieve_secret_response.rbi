# typed: strong

module Lithic
  module Models
    module ThreeDS
      class DecisioningRetrieveSecretResponse < Lithic::Internal::Type::BaseModel
        # The 3DS Decisioning HMAC secret
        sig { returns(T.nilable(String)) }
        attr_reader :secret

        sig { params(secret: String).void }
        attr_writer :secret

        sig { params(secret: String).returns(T.attached_class) }
        def self.new(secret: nil); end

        sig { override.returns({secret: String}) }
        def to_hash; end
      end
    end
  end
end
