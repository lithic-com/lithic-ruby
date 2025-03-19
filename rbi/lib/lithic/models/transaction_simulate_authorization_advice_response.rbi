# typed: strong

module Lithic
  module Models
    class TransactionSimulateAuthorizationAdviceResponse < Lithic::BaseModel
      # A unique token to reference this transaction.
      sig { returns(T.nilable(String)) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # Debugging request ID to share with Lithic Support team.
      sig { returns(T.nilable(String)) }
      def debugging_request_id
      end

      sig { params(_: String).returns(String) }
      def debugging_request_id=(_)
      end

      sig { params(token: String, debugging_request_id: String).returns(T.attached_class) }
      def self.new(token: nil, debugging_request_id: nil)
      end

      sig { override.returns({token: String, debugging_request_id: String}) }
      def to_hash
      end
    end
  end
end
