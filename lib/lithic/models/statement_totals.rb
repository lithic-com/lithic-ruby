# frozen_string_literal: true

module Lithic
  module Models
    class StatementTotals < Lithic::Internal::Type::BaseModel
      # @!attribute balance_transfers
      #   Opening balance transferred from previous account in cents
      #
      #   @return [Integer]
      required :balance_transfers, Integer

      # @!attribute cash_advances
      #   ATM and cashback transactions in cents
      #
      #   @return [Integer]
      required :cash_advances, Integer

      # @!attribute credits
      #   Volume of credit management operation transactions less any balance transfers in
      #   cents
      #
      #   @return [Integer]
      required :credits, Integer

      # @!attribute debits
      #   Volume of debit management operation transactions less any interest in cents
      #
      #   @return [Integer]
      required :debits, Integer

      # @!attribute fees
      #   Volume of debit management operation transactions less any interest in cents
      #
      #   @return [Integer]
      required :fees, Integer

      # @!attribute interest
      #   Interest accrued in cents
      #
      #   @return [Integer]
      required :interest, Integer

      # @!attribute payments
      #   Any funds transfers which affective the balance in cents
      #
      #   @return [Integer]
      required :payments, Integer

      # @!attribute purchases
      #   Net card transaction volume less any cash advances in cents
      #
      #   @return [Integer]
      required :purchases, Integer

      # @!attribute credit_details
      #   Breakdown of credits
      #
      #   @return [Object, nil]
      optional :credit_details, Lithic::Internal::Type::Unknown

      # @!attribute debit_details
      #   Breakdown of debits
      #
      #   @return [Object, nil]
      optional :debit_details, Lithic::Internal::Type::Unknown

      # @!attribute payment_details
      #   Breakdown of payments
      #
      #   @return [Object, nil]
      optional :payment_details, Lithic::Internal::Type::Unknown

      # @!method initialize(balance_transfers:, cash_advances:, credits:, debits:, fees:, interest:, payments:, purchases:, credit_details: nil, debit_details: nil, payment_details: nil)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::StatementTotals} for more details.
      #
      #   @param balance_transfers [Integer] Opening balance transferred from previous account in cents
      #
      #   @param cash_advances [Integer] ATM and cashback transactions in cents
      #
      #   @param credits [Integer] Volume of credit management operation transactions less any balance transfers in
      #
      #   @param debits [Integer] Volume of debit management operation transactions less any interest in cents
      #
      #   @param fees [Integer] Volume of debit management operation transactions less any interest in cents
      #
      #   @param interest [Integer] Interest accrued in cents
      #
      #   @param payments [Integer] Any funds transfers which affective the balance in cents
      #
      #   @param purchases [Integer] Net card transaction volume less any cash advances in cents
      #
      #   @param credit_details [Object] Breakdown of credits
      #
      #   @param debit_details [Object] Breakdown of debits
      #
      #   @param payment_details [Object] Breakdown of payments
    end
  end
end
