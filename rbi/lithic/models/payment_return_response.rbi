# typed: strong

module Lithic
  module Models
    class PaymentReturnResponse < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::Models::PaymentReturnResponse,
            Lithic::Internal::AnyHash
          )
        end

      # Transaction result
      sig do
        returns(Lithic::Models::PaymentReturnResponse::Result::TaggedSymbol)
      end
      attr_accessor :result

      # Globally unique identifier for the transaction group
      sig { returns(String) }
      attr_accessor :transaction_group_uuid

      # Globally unique identifier for the transaction
      sig { returns(String) }
      attr_accessor :transaction_uuid

      # Response from ACH operations including returns
      sig do
        params(
          result: Lithic::Models::PaymentReturnResponse::Result::OrSymbol,
          transaction_group_uuid: String,
          transaction_uuid: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Transaction result
        result:,
        # Globally unique identifier for the transaction group
        transaction_group_uuid:,
        # Globally unique identifier for the transaction
        transaction_uuid:
      )
      end

      sig do
        override.returns(
          {
            result: Lithic::Models::PaymentReturnResponse::Result::TaggedSymbol,
            transaction_group_uuid: String,
            transaction_uuid: String
          }
        )
      end
      def to_hash
      end

      # Transaction result
      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::Models::PaymentReturnResponse::Result)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(
            :APPROVED,
            Lithic::Models::PaymentReturnResponse::Result::TaggedSymbol
          )
        DECLINED =
          T.let(
            :DECLINED,
            Lithic::Models::PaymentReturnResponse::Result::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::Models::PaymentReturnResponse::Result::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
