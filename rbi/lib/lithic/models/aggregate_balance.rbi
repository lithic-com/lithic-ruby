# typed: strong

module Lithic
  module Models
    class AggregateBalance < Lithic::BaseModel
      # Funds available for spend in the currency's smallest unit (e.g., cents for USD)
      sig { returns(Integer) }
      def available_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def available_amount=(_)
      end

      # Date and time for when the balance was first created.
      sig { returns(Time) }
      def created
      end

      sig { params(_: Time).returns(Time) }
      def created=(_)
      end

      # 3-character alphabetic ISO 4217 code for the local currency of the balance.
      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      # Type of financial account
      sig { returns(Lithic::Models::AggregateBalance::FinancialAccountType::TaggedSymbol) }
      def financial_account_type
      end

      sig do
        params(_: Lithic::Models::AggregateBalance::FinancialAccountType::TaggedSymbol)
          .returns(Lithic::Models::AggregateBalance::FinancialAccountType::TaggedSymbol)
      end
      def financial_account_type=(_)
      end

      # Globally unique identifier for the financial account that had its balance
      #   updated most recently
      sig { returns(String) }
      def last_financial_account_token
      end

      sig { params(_: String).returns(String) }
      def last_financial_account_token=(_)
      end

      # Globally unique identifier for the last transaction event that impacted this
      #   balance
      sig { returns(String) }
      def last_transaction_event_token
      end

      sig { params(_: String).returns(String) }
      def last_transaction_event_token=(_)
      end

      # Globally unique identifier for the last transaction that impacted this balance
      sig { returns(String) }
      def last_transaction_token
      end

      sig { params(_: String).returns(String) }
      def last_transaction_token=(_)
      end

      # Funds not available for spend due to card authorizations or pending ACH release.
      #   Shown in the currency's smallest unit (e.g., cents for USD)
      sig { returns(Integer) }
      def pending_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def pending_amount=(_)
      end

      # The sum of available and pending balance in the currency's smallest unit (e.g.,
      #   cents for USD)
      sig { returns(Integer) }
      def total_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def total_amount=(_)
      end

      # Date and time for when the balance was last updated.
      sig { returns(Time) }
      def updated
      end

      sig { params(_: Time).returns(Time) }
      def updated=(_)
      end

      # Aggregate Balance across all end-user accounts
      sig do
        params(
          available_amount: Integer,
          created: Time,
          currency: String,
          financial_account_type: Lithic::Models::AggregateBalance::FinancialAccountType::TaggedSymbol,
          last_financial_account_token: String,
          last_transaction_event_token: String,
          last_transaction_token: String,
          pending_amount: Integer,
          total_amount: Integer,
          updated: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
        available_amount:,
        created:,
        currency:,
        financial_account_type:,
        last_financial_account_token:,
        last_transaction_event_token:,
        last_transaction_token:,
        pending_amount:,
        total_amount:,
        updated:
      )
      end

      sig do
        override
          .returns(
            {
              available_amount: Integer,
              created: Time,
              currency: String,
              financial_account_type: Lithic::Models::AggregateBalance::FinancialAccountType::TaggedSymbol,
              last_financial_account_token: String,
              last_transaction_event_token: String,
              last_transaction_token: String,
              pending_amount: Integer,
              total_amount: Integer,
              updated: Time
            }
          )
      end
      def to_hash
      end

      # Type of financial account
      module FinancialAccountType
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AggregateBalance::FinancialAccountType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::AggregateBalance::FinancialAccountType::TaggedSymbol) }

        ISSUING = T.let(:ISSUING, Lithic::Models::AggregateBalance::FinancialAccountType::TaggedSymbol)
        OPERATING = T.let(:OPERATING, Lithic::Models::AggregateBalance::FinancialAccountType::TaggedSymbol)
        RESERVE = T.let(:RESERVE, Lithic::Models::AggregateBalance::FinancialAccountType::TaggedSymbol)
      end
    end
  end
end
