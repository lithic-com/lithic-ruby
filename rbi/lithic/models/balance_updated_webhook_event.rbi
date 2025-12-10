# typed: strong

module Lithic
  module Models
    class BalanceUpdatedWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::BalanceUpdatedWebhookEvent, Lithic::Internal::AnyHash)
        end

      sig { returns(T::Array[Lithic::FinancialAccountBalance]) }
      attr_accessor :data

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      sig do
        params(
          data: T::Array[Lithic::FinancialAccountBalance::OrHash],
          event_type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        data:,
        # The type of event that occurred.
        event_type: :"balance.updated"
      )
      end

      sig do
        override.returns(
          {
            data: T::Array[Lithic::FinancialAccountBalance],
            event_type: Symbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
