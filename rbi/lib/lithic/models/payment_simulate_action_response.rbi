# typed: strong

module Lithic
  module Models
    class PaymentSimulateActionResponse < Lithic::BaseModel
      # Debugging Request Id
      sig { returns(String) }
      def debugging_request_id
      end

      sig { params(_: String).returns(String) }
      def debugging_request_id=(_)
      end

      # Request Result
      sig { returns(Lithic::Models::PaymentSimulateActionResponse::Result::TaggedSymbol) }
      def result
      end

      sig do
        params(_: Lithic::Models::PaymentSimulateActionResponse::Result::TaggedSymbol)
          .returns(Lithic::Models::PaymentSimulateActionResponse::Result::TaggedSymbol)
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
          result: Lithic::Models::PaymentSimulateActionResponse::Result::TaggedSymbol,
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
              result: Lithic::Models::PaymentSimulateActionResponse::Result::TaggedSymbol,
              transaction_event_token: String
            }
          )
      end
      def to_hash
      end

      # Request Result
      module Result
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::PaymentSimulateActionResponse::Result) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::PaymentSimulateActionResponse::Result::TaggedSymbol) }

        APPROVED = T.let(:APPROVED, Lithic::Models::PaymentSimulateActionResponse::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::PaymentSimulateActionResponse::Result::TaggedSymbol)
      end
    end
  end
end
