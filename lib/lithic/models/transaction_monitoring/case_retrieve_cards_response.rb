# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      # @type [Lithic::Internal::Type::Converter]
      CaseRetrieveCardsResponse =
        Lithic::Internal::Type::ArrayOf[-> { Lithic::TransactionMonitoring::CaseCard }]
    end
  end
end
