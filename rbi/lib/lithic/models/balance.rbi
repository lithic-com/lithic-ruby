# typed: strong

module Lithic
  module Models
    class Balance < Lithic::BaseModel
      # Funds available for spend in the currency's smallest unit (e.g., cents for USD)
      sig { returns(Integer) }
      attr_accessor :available_amount

      # Date and time for when the balance was first created.
      sig { returns(Time) }
      attr_accessor :created

      # 3-character alphabetic ISO 4217 code for the local currency of the balance.
      sig { returns(String) }
      attr_accessor :currency

      # Globally unique identifier for the financial account that holds this balance.
      sig { returns(String) }
      attr_accessor :financial_account_token

      # Type of financial account.
      sig { returns(Lithic::Models::Balance::FinancialAccountType::TaggedSymbol) }
      attr_accessor :financial_account_type

      # Globally unique identifier for the last financial transaction event that
      #   impacted this balance.
      sig { returns(String) }
      attr_accessor :last_transaction_event_token

      # Globally unique identifier for the last financial transaction that impacted this
      #   balance.
      sig { returns(String) }
      attr_accessor :last_transaction_token

      # Funds not available for spend due to card authorizations or pending ACH release.
      #   Shown in the currency's smallest unit (e.g., cents for USD).
      sig { returns(Integer) }
      attr_accessor :pending_amount

      # The sum of available and pending balance in the currency's smallest unit (e.g.,
      #   cents for USD).
      sig { returns(Integer) }
      attr_accessor :total_amount

      # Date and time for when the balance was last updated.
      sig { returns(Time) }
      attr_accessor :updated

      # Balance
      sig do
        params(
          available_amount: Integer,
          created: Time,
          currency: String,
          financial_account_token: String,
          financial_account_type: Lithic::Models::Balance::FinancialAccountType::OrSymbol,
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
        financial_account_token:,
        financial_account_type:,
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
              financial_account_token: String,
              financial_account_type: Lithic::Models::Balance::FinancialAccountType::TaggedSymbol,
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

      # Type of financial account.
      module FinancialAccountType
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Balance::FinancialAccountType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::Balance::FinancialAccountType::TaggedSymbol) }

        ISSUING = T.let(:ISSUING, Lithic::Models::Balance::FinancialAccountType::TaggedSymbol)
        OPERATING = T.let(:OPERATING, Lithic::Models::Balance::FinancialAccountType::TaggedSymbol)
        RESERVE = T.let(:RESERVE, Lithic::Models::Balance::FinancialAccountType::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::Balance::FinancialAccountType::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
