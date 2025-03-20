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
      sig { returns(Lithic::Models::PaymentSimulateReturnResponse::Result::TaggedSymbol) }
      def result
      end

      sig do
        params(_: Lithic::Models::PaymentSimulateReturnResponse::Result::TaggedSymbol)
          .returns(Lithic::Models::PaymentSimulateReturnResponse::Result::TaggedSymbol)
      end
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
        params(
          debugging_request_id: String,
          result: Lithic::Models::PaymentSimulateReturnResponse::Result::TaggedSymbol,
          transaction_event_token: String
        )
          .returns(T.attached_class)
      end
      def self.new(debugging_request_id:, result:, transaction_event_token:)
      end

      sig do
        override
          .returns(
            {
              debugging_request_id: String,
              result: Lithic::Models::PaymentSimulateReturnResponse::Result::TaggedSymbol,
              transaction_event_token: String
            }
          )
      end
      def to_hash
      end

      # Request Result
      module Result
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::PaymentSimulateReturnResponse::Result) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::PaymentSimulateReturnResponse::Result::TaggedSymbol) }

        APPROVED = T.let(:APPROVED, Lithic::Models::PaymentSimulateReturnResponse::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::PaymentSimulateReturnResponse::Result::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::PaymentSimulateReturnResponse::Result::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
