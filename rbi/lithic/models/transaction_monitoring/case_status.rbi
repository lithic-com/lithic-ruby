# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      # Status of a case as it progresses through the review workflow:
      #
      # - `OPEN` - The case has been created and is still collecting matching
      #   transactions
      # - `ASSIGNED` - An analyst has been assigned and transaction collection has
      #   stopped
      # - `IN_REVIEW` - The case is actively being investigated
      # - `ESCALATED` - The case has been reviewed and requires additional oversight
      # - `RESOLVED` - A determination has been made and a resolution recorded
      # - `CLOSED` - The case is finalized
      module CaseStatus
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::TransactionMonitoring::CaseStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OPEN =
          T.let(:OPEN, Lithic::TransactionMonitoring::CaseStatus::TaggedSymbol)
        ASSIGNED =
          T.let(
            :ASSIGNED,
            Lithic::TransactionMonitoring::CaseStatus::TaggedSymbol
          )
        IN_REVIEW =
          T.let(
            :IN_REVIEW,
            Lithic::TransactionMonitoring::CaseStatus::TaggedSymbol
          )
        ESCALATED =
          T.let(
            :ESCALATED,
            Lithic::TransactionMonitoring::CaseStatus::TaggedSymbol
          )
        RESOLVED =
          T.let(
            :RESOLVED,
            Lithic::TransactionMonitoring::CaseStatus::TaggedSymbol
          )
        CLOSED =
          T.let(
            :CLOSED,
            Lithic::TransactionMonitoring::CaseStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::TransactionMonitoring::CaseStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
