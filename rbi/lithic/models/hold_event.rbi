# typed: strong

module Lithic
  module Models
    class HoldEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Lithic::HoldEvent, Lithic::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :token

      # Amount in cents
      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(Time) }
      attr_accessor :created

      sig { returns(T::Array[Lithic::HoldEvent::DetailedResult::TaggedSymbol]) }
      attr_accessor :detailed_results

      sig { returns(T.nilable(String)) }
      attr_accessor :memo

      sig { returns(Lithic::HoldEvent::Result::TaggedSymbol) }
      attr_accessor :result

      # Transaction token of the payment that settled this hold (only populated for
      # HOLD_SETTLED events)
      sig { returns(T.nilable(String)) }
      attr_accessor :settling_transaction_token

      # Type of hold lifecycle event
      sig { returns(Lithic::HoldEvent::Type::TaggedSymbol) }
      attr_accessor :type

      # Event representing a lifecycle change to a hold
      sig do
        params(
          token: String,
          amount: Integer,
          created: Time,
          detailed_results:
            T::Array[Lithic::HoldEvent::DetailedResult::OrSymbol],
          memo: T.nilable(String),
          result: Lithic::HoldEvent::Result::OrSymbol,
          settling_transaction_token: T.nilable(String),
          type: Lithic::HoldEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        token:,
        # Amount in cents
        amount:,
        created:,
        detailed_results:,
        memo:,
        result:,
        # Transaction token of the payment that settled this hold (only populated for
        # HOLD_SETTLED events)
        settling_transaction_token:,
        # Type of hold lifecycle event
        type:
      )
      end

      sig do
        override.returns(
          {
            token: String,
            amount: Integer,
            created: Time,
            detailed_results:
              T::Array[Lithic::HoldEvent::DetailedResult::TaggedSymbol],
            memo: T.nilable(String),
            result: Lithic::HoldEvent::Result::TaggedSymbol,
            settling_transaction_token: T.nilable(String),
            type: Lithic::HoldEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module DetailedResult
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::HoldEvent::DetailedResult) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(:APPROVED, Lithic::HoldEvent::DetailedResult::TaggedSymbol)
        INSUFFICIENT_FUNDS =
          T.let(
            :INSUFFICIENT_FUNDS,
            Lithic::HoldEvent::DetailedResult::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::HoldEvent::DetailedResult::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::HoldEvent::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED = T.let(:APPROVED, Lithic::HoldEvent::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::HoldEvent::Result::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::HoldEvent::Result::TaggedSymbol])
        end
        def self.values
        end
      end

      # Type of hold lifecycle event
      module Type
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::HoldEvent::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HOLD_INITIATED =
          T.let(:HOLD_INITIATED, Lithic::HoldEvent::Type::TaggedSymbol)
        HOLD_VOIDED = T.let(:HOLD_VOIDED, Lithic::HoldEvent::Type::TaggedSymbol)
        HOLD_EXPIRED =
          T.let(:HOLD_EXPIRED, Lithic::HoldEvent::Type::TaggedSymbol)
        HOLD_SETTLED =
          T.let(:HOLD_SETTLED, Lithic::HoldEvent::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::HoldEvent::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
