# typed: strong

module Lithic
  module Models
    class TransactionSimulateReturnResponse < Lithic::BaseModel
      # A unique token to reference this transaction.
      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      # Debugging request ID to share with Lithic Support team.
      sig { returns(T.nilable(String)) }
      attr_reader :debugging_request_id

      sig { params(debugging_request_id: String).void }
      attr_writer :debugging_request_id

      sig { params(token: String, debugging_request_id: String).returns(T.attached_class) }
      def self.new(token: nil, debugging_request_id: nil)
      end

      sig { override.returns({token: String, debugging_request_id: String}) }
      def to_hash
      end
    end
  end
end
