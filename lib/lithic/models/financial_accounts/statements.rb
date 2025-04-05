# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      class FinancialAccountsStatements < Lithic::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Lithic::Models::FinancialAccounts::Statement>]
        required :data, -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::FinancialAccounts::Statement] }

        # @!attribute has_more
        #
        #   @return [Boolean]
        required :has_more, Lithic::Internal::Type::Boolean

        # @!parse
        #   # @param data [Array<Lithic::Models::FinancialAccounts::Statement>]
        #   # @param has_more [Boolean]
        #   #
        #   def initialize(data:, has_more:, **) = super

        # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
      end
    end
  end
end
