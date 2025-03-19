# typed: strong

module Lithic
  module Models
    module Events
      class SubscriptionRetrieveSecretResponse < Lithic::BaseModel
        # The secret for the event subscription.
        sig { returns(T.nilable(String)) }
        def secret
        end

        sig { params(_: String).returns(String) }
        def secret=(_)
        end

        sig { params(secret: String).returns(T.attached_class) }
        def self.new(secret: nil)
        end

        sig { override.returns({secret: String}) }
        def to_hash
        end
      end
    end
  end
end
