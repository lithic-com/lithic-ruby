# typed: strong

module Lithic
  module Models
    class TransactionSimulateReturnReversalResponse < Lithic::Internal::Type::BaseModel
      # Debugging request ID to share with Lithic Support team.
      sig { returns(T.nilable(String)) }
      attr_reader :debugging_request_id

      sig { params(debugging_request_id: String).void }
      attr_writer :debugging_request_id

      sig { params(debugging_request_id: String).returns(T.attached_class) }
      def self.new(debugging_request_id: nil)
      end

      sig { override.returns({debugging_request_id: String}) }
      def to_hash
      end
    end
  end
end
