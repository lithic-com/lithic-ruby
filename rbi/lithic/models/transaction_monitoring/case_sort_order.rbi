# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      # Sort order for listing cases. Defaults to `CREATED_DESC` (newest first):
      #
      # - `CREATED_ASC` - Oldest first
      # - `CREATED_DESC` - Newest first
      # - `PRIORITY_DESC` - Highest priority first
      # - `PRIORITY_ASC` - Lowest priority first
      # - `STATUS_DESC` - Furthest workflow stage first
      # - `STATUS_ASC` - Earliest workflow stage first
      module CaseSortOrder
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::TransactionMonitoring::CaseSortOrder)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_ASC =
          T.let(
            :CREATED_ASC,
            Lithic::TransactionMonitoring::CaseSortOrder::TaggedSymbol
          )
        CREATED_DESC =
          T.let(
            :CREATED_DESC,
            Lithic::TransactionMonitoring::CaseSortOrder::TaggedSymbol
          )
        PRIORITY_DESC =
          T.let(
            :PRIORITY_DESC,
            Lithic::TransactionMonitoring::CaseSortOrder::TaggedSymbol
          )
        PRIORITY_ASC =
          T.let(
            :PRIORITY_ASC,
            Lithic::TransactionMonitoring::CaseSortOrder::TaggedSymbol
          )
        STATUS_DESC =
          T.let(
            :STATUS_DESC,
            Lithic::TransactionMonitoring::CaseSortOrder::TaggedSymbol
          )
        STATUS_ASC =
          T.let(
            :STATUS_ASC,
            Lithic::TransactionMonitoring::CaseSortOrder::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::TransactionMonitoring::CaseSortOrder::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
