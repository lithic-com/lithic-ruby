# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      class FinancialAccountsStatements < Lithic::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Lithic::Models::FinancialAccounts::Statement>]
        required :data, -> { Lithic::Internal::Type::ArrayOf[Lithic::FinancialAccounts::Statement] }

        # @!attribute has_more
        #
        #   @return [Boolean]
        required :has_more, Lithic::Internal::Type::Boolean

        # @!method initialize(data:, has_more:)
        #   @param data [Array<Lithic::Models::FinancialAccounts::Statement>]
        #   @param has_more [Boolean]
      end
    end
  end
end
