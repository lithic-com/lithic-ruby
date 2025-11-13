# frozen_string_literal: true

module Lithic
  module Models
    class CategoryDetails < Lithic::Internal::Type::BaseModel
      # @!attribute balance_transfers
      #
      #   @return [String]
      required :balance_transfers, String

      # @!attribute cash_advances
      #
      #   @return [String]
      required :cash_advances, String

      # @!attribute purchases
      #
      #   @return [String]
      required :purchases, String

      # @!method initialize(balance_transfers:, cash_advances:, purchases:)
      #   @param balance_transfers [String]
      #   @param cash_advances [String]
      #   @param purchases [String]
    end
  end
end
