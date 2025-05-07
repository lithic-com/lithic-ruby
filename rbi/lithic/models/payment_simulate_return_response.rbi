# typed: strong

module Lithic
  module Models
    class PaymentSimulateReturnResponse < Lithic::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

      # Debugging Request Id
      sig { returns(String) }
      attr_accessor :debugging_request_id

      # Request Result
      sig do
        returns(
          Lithic::Models::PaymentSimulateReturnResponse::Result::TaggedSymbol
        )
      end
      attr_accessor :result

      # Transaction Event Token
      sig { returns(String) }
      attr_accessor :transaction_event_token

      sig do
        params(
          debugging_request_id: String,
          result:
            Lithic::Models::PaymentSimulateReturnResponse::Result::OrSymbol,
          transaction_event_token: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Debugging Request Id
        debugging_request_id:,
        # Request Result
        result:,
        # Transaction Event Token
        transaction_event_token:
      )
      end

      sig do
        override.returns(
          {
            debugging_request_id: String,
            result:
              Lithic::Models::PaymentSimulateReturnResponse::Result::TaggedSymbol,
            transaction_event_token: String
          }
        )
      end
      def to_hash
      end

      # Request Result
      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::Models::PaymentSimulateReturnResponse::Result)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(
            :APPROVED,
            Lithic::Models::PaymentSimulateReturnResponse::Result::TaggedSymbol
          )
        DECLINED =
          T.let(
            :DECLINED,
            Lithic::Models::PaymentSimulateReturnResponse::Result::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::Models::PaymentSimulateReturnResponse::Result::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
