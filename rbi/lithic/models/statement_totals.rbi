# typed: strong

module Lithic
  module Models
    class StatementTotals < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::StatementTotals, Lithic::Internal::AnyHash)
        end

      # Opening balance transferred from previous account in cents
      sig { returns(Integer) }
      attr_accessor :balance_transfers

      # ATM and cashback transactions in cents
      sig { returns(Integer) }
      attr_accessor :cash_advances

      # Volume of credit management operation transactions less any balance transfers in
      # cents
      sig { returns(Integer) }
      attr_accessor :credits

      # Volume of debit management operation transactions less any interest in cents
      sig { returns(Integer) }
      attr_accessor :debits

      # Volume of debit management operation transactions less any interest in cents
      sig { returns(Integer) }
      attr_accessor :fees

      # Interest accrued in cents
      sig { returns(Integer) }
      attr_accessor :interest

      # Any funds transfers which affective the balance in cents
      sig { returns(Integer) }
      attr_accessor :payments

      # Net card transaction volume less any cash advances in cents
      sig { returns(Integer) }
      attr_accessor :purchases

      # Breakdown of credits
      sig { returns(T.nilable(T.anything)) }
      attr_reader :credit_details

      sig { params(credit_details: T.anything).void }
      attr_writer :credit_details

      # Breakdown of debits
      sig { returns(T.nilable(T.anything)) }
      attr_reader :debit_details

      sig { params(debit_details: T.anything).void }
      attr_writer :debit_details

      # Breakdown of payments
      sig { returns(T.nilable(T.anything)) }
      attr_reader :payment_details

      sig { params(payment_details: T.anything).void }
      attr_writer :payment_details

      sig do
        params(
          balance_transfers: Integer,
          cash_advances: Integer,
          credits: Integer,
          debits: Integer,
          fees: Integer,
          interest: Integer,
          payments: Integer,
          purchases: Integer,
          credit_details: T.anything,
          debit_details: T.anything,
          payment_details: T.anything
        ).returns(T.attached_class)
      end
      def self.new(
        # Opening balance transferred from previous account in cents
        balance_transfers:,
        # ATM and cashback transactions in cents
        cash_advances:,
        # Volume of credit management operation transactions less any balance transfers in
        # cents
        credits:,
        # Volume of debit management operation transactions less any interest in cents
        debits:,
        # Volume of debit management operation transactions less any interest in cents
        fees:,
        # Interest accrued in cents
        interest:,
        # Any funds transfers which affective the balance in cents
        payments:,
        # Net card transaction volume less any cash advances in cents
        purchases:,
        # Breakdown of credits
        credit_details: nil,
        # Breakdown of debits
        debit_details: nil,
        # Breakdown of payments
        payment_details: nil
      )
      end

      sig do
        override.returns(
          {
            balance_transfers: Integer,
            cash_advances: Integer,
            credits: Integer,
            debits: Integer,
            fees: Integer,
            interest: Integer,
            payments: Integer,
            purchases: Integer,
            credit_details: T.anything,
            debit_details: T.anything,
            payment_details: T.anything
          }
        )
      end
      def to_hash
      end
    end
  end
end
