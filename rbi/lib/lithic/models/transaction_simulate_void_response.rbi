# typed: strong

module Lithic
  module Models
    class TransactionSimulateVoidResponse < Lithic::BaseModel
      # Debugging request ID to share with Lithic Support team.
      sig { returns(T.nilable(String)) }
      def debugging_request_id
      end

      sig { params(_: String).returns(String) }
      def debugging_request_id=(_)
      end

      sig { params(debugging_request_id: String).returns(T.attached_class) }
      def self.new(debugging_request_id: nil)
      end

      sig { override.returns({debugging_request_id: String}) }
      def to_hash
      end
    end
  end
end
