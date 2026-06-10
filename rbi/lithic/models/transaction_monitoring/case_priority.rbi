# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      # Priority level of a case, controlling queue ordering and SLA urgency
      module CasePriority
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::TransactionMonitoring::CasePriority)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOW =
          T.let(:LOW, Lithic::TransactionMonitoring::CasePriority::TaggedSymbol)
        MEDIUM =
          T.let(
            :MEDIUM,
            Lithic::TransactionMonitoring::CasePriority::TaggedSymbol
          )
        HIGH =
          T.let(
            :HIGH,
            Lithic::TransactionMonitoring::CasePriority::TaggedSymbol
          )
        CRITICAL =
          T.let(
            :CRITICAL,
            Lithic::TransactionMonitoring::CasePriority::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::TransactionMonitoring::CasePriority::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
