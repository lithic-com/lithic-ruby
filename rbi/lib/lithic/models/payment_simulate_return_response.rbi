# typed: strong

module Lithic
  module Models
    class PaymentSimulateReturnResponse < Lithic::BaseModel
      # Debugging Request Id
      sig { returns(String) }
      def debugging_request_id
      end

      sig { params(_: String).returns(String) }
      def debugging_request_id=(_)
      end

      # Request Result
      sig { returns(Symbol) }
      def result
      end

      sig { params(_: Symbol).returns(Symbol) }
      def result=(_)
      end

      # Transaction Event Token
      sig { returns(String) }
      def transaction_event_token
      end

      sig { params(_: String).returns(String) }
      def transaction_event_token=(_)
      end

      sig do
        params(debugging_request_id: String, result: Symbol, transaction_event_token: String)
          .returns(T.attached_class)
      end
      def self.new(debugging_request_id:, result:, transaction_event_token:)
      end

      sig do
        override.returns({debugging_request_id: String, result: Symbol, transaction_event_token: String})
      end
      def to_hash
      end

      # Request Result
      class Result < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        APPROVED = :APPROVED
        DECLINED = :DECLINED
      end
    end
  end
end
