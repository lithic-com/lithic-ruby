# typed: strong

module Lithic
  module Models
    class CardProvisionResponse < Lithic::BaseModel
      sig { returns(T.nilable(String)) }
      def provisioning_payload
      end

      sig { params(_: String).returns(String) }
      def provisioning_payload=(_)
      end

      sig { params(provisioning_payload: String).returns(T.attached_class) }
      def self.new(provisioning_payload: nil)
      end

      sig { override.returns({provisioning_payload: String}) }
      def to_hash
      end
    end
  end
end
