# typed: strong

module Lithic
  module Models
    class AggregateBalance < Lithic::Internal::Type::BaseModel
      # Funds available for spend in the currency's smallest unit (e.g., cents for USD)
      sig { returns(Integer) }
      attr_accessor :available_amount

      # Date and time for when the balance was first created.
      sig { returns(Time) }
      attr_accessor :created

      # 3-character alphabetic ISO 4217 code for the local currency of the balance.
      sig { returns(String) }
      attr_accessor :currency

      # Type of financial account
      sig { returns(Lithic::Models::AggregateBalance::FinancialAccountType::TaggedSymbol) }
      attr_accessor :financial_account_type

      # Globally unique identifier for the financial account that had its balance
      # updated most recently
      sig { returns(String) }
      attr_accessor :last_financial_account_token

      # Globally unique identifier for the last transaction event that impacted this
      # balance
      sig { returns(String) }
      attr_accessor :last_transaction_event_token

      # Globally unique identifier for the last transaction that impacted this balance
      sig { returns(String) }
      attr_accessor :last_transaction_token

      # Funds not available for spend due to card authorizations or pending ACH release.
      # Shown in the currency's smallest unit (e.g., cents for USD)
      sig { returns(Integer) }
      attr_accessor :pending_amount

      # The sum of available and pending balance in the currency's smallest unit (e.g.,
      # cents for USD)
      sig { returns(Integer) }
      attr_accessor :total_amount

      # Date and time for when the balance was last updated.
      sig { returns(Time) }
      attr_accessor :updated

      # Aggregate Balance across all end-user accounts
      sig do
        params(
          available_amount: Integer,
          created: Time,
          currency: String,
          financial_account_type: Lithic::Models::AggregateBalance::FinancialAccountType::OrSymbol,
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
        # Funds available for spend in the currency's smallest unit (e.g., cents for USD)
        available_amount:,
        # Date and time for when the balance was first created.
        created:,
        # 3-character alphabetic ISO 4217 code for the local currency of the balance.
        currency:,
        # Type of financial account
        financial_account_type:,
        # Globally unique identifier for the financial account that had its balance
        # updated most recently
        last_financial_account_token:,
        # Globally unique identifier for the last transaction event that impacted this
        # balance
        last_transaction_event_token:,
        # Globally unique identifier for the last transaction that impacted this balance
        last_transaction_token:,
        # Funds not available for spend due to card authorizations or pending ACH release.
        # Shown in the currency's smallest unit (e.g., cents for USD)
        pending_amount:,
        # The sum of available and pending balance in the currency's smallest unit (e.g.,
        # cents for USD)
        total_amount:,
        # Date and time for when the balance was last updated.
        updated:
      ); end
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
      def to_hash; end

      # Type of financial account
      module FinancialAccountType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AggregateBalance::FinancialAccountType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ISSUING = T.let(:ISSUING, Lithic::Models::AggregateBalance::FinancialAccountType::TaggedSymbol)
        OPERATING = T.let(:OPERATING, Lithic::Models::AggregateBalance::FinancialAccountType::TaggedSymbol)
        RESERVE = T.let(:RESERVE, Lithic::Models::AggregateBalance::FinancialAccountType::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::AggregateBalance::FinancialAccountType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
