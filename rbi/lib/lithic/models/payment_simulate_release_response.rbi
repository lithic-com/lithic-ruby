# typed: strong

module Lithic
  module Models
    class PaymentSimulateReleaseResponse < Lithic::BaseModel
      # Debugging Request Id
      sig { returns(String) }
      attr_accessor :debugging_request_id

      # Request Result
      sig { returns(Lithic::Models::PaymentSimulateReleaseResponse::Result::TaggedSymbol) }
      attr_accessor :result

      # Transaction Event Token
      sig { returns(String) }
      attr_accessor :transaction_event_token

      sig do
        params(
          debugging_request_id: String,
          result: Lithic::Models::PaymentSimulateReleaseResponse::Result::OrSymbol,
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
              result: Lithic::Models::PaymentSimulateReleaseResponse::Result::TaggedSymbol,
              transaction_event_token: String
            }
          )
      end
      def to_hash
      end

      # Request Result
      module Result
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::PaymentSimulateReleaseResponse::Result) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::PaymentSimulateReleaseResponse::Result::TaggedSymbol) }

        APPROVED = T.let(:APPROVED, Lithic::Models::PaymentSimulateReleaseResponse::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::PaymentSimulateReleaseResponse::Result::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::PaymentSimulateReleaseResponse::Result::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
