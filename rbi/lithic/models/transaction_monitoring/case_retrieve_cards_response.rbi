# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      CaseRetrieveCardsResponse =
        T.let(
          Lithic::Internal::Type::ArrayOf[
            Lithic::TransactionMonitoring::CaseCard
          ],
          Lithic::Internal::Type::Converter
        )
    end
  end
end
