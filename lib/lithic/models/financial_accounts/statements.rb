# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      class FinancialAccountsStatements < Lithic::BaseModel
        # @!attribute data
        #
        #   @return [Array<Lithic::Models::FinancialAccounts::Statement>]
        required :data, -> { Lithic::ArrayOf[Lithic::Models::FinancialAccounts::Statement] }

        # @!attribute has_more
        #
        #   @return [Boolean]
        required :has_more, Lithic::BooleanModel

        # @!parse
        #   # @param data [Array<Lithic::Models::FinancialAccounts::Statement>]
        #   # @param has_more [Boolean]
        #   #
        #   def initialize(data:, has_more:, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
