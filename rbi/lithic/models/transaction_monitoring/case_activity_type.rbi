# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      # The case field that changed, or the action that was taken, in an activity entry:
      #
      # - `STATUS` - The case status changed
      # - `TITLE` - The case title changed
      # - `ASSIGNED_TO` - The case assignee changed
      # - `RESOLUTION_OUTCOME` - The resolution outcome was set or changed
      # - `RESOLUTION_NOTES` - The resolution notes were set or changed
      # - `TAGS` - The case tags changed
      # - `PRIORITY` - The case priority changed
      # - `COMMENT` - A comment was added or edited
      # - `FILE` - A file was attached to the case
      module CaseActivityType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::TransactionMonitoring::CaseActivityType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STATUS =
          T.let(
            :STATUS,
            Lithic::TransactionMonitoring::CaseActivityType::TaggedSymbol
          )
        TITLE =
          T.let(
            :TITLE,
            Lithic::TransactionMonitoring::CaseActivityType::TaggedSymbol
          )
        ASSIGNED_TO =
          T.let(
            :ASSIGNED_TO,
            Lithic::TransactionMonitoring::CaseActivityType::TaggedSymbol
          )
        RESOLUTION_OUTCOME =
          T.let(
            :RESOLUTION_OUTCOME,
            Lithic::TransactionMonitoring::CaseActivityType::TaggedSymbol
          )
        RESOLUTION_NOTES =
          T.let(
            :RESOLUTION_NOTES,
            Lithic::TransactionMonitoring::CaseActivityType::TaggedSymbol
          )
        TAGS =
          T.let(
            :TAGS,
            Lithic::TransactionMonitoring::CaseActivityType::TaggedSymbol
          )
        PRIORITY =
          T.let(
            :PRIORITY,
            Lithic::TransactionMonitoring::CaseActivityType::TaggedSymbol
          )
        COMMENT =
          T.let(
            :COMMENT,
            Lithic::TransactionMonitoring::CaseActivityType::TaggedSymbol
          )
        FILE =
          T.let(
            :FILE,
            Lithic::TransactionMonitoring::CaseActivityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::TransactionMonitoring::CaseActivityType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
