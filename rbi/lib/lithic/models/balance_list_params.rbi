# typed: strong

module Lithic
  module Models
    class BalanceListParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # List balances for all financial accounts of a given account_token.
      sig { returns(T.nilable(String)) }
      def account_token
      end

      sig { params(_: String).returns(String) }
      def account_token=(_)
      end

      # UTC date and time of the balances to retrieve. Defaults to latest available
      #   balances
      sig { returns(T.nilable(Time)) }
      def balance_date
      end

      sig { params(_: Time).returns(Time) }
      def balance_date=(_)
      end

      # List balances for all financial accounts of a given business_account_token.
      sig { returns(T.nilable(String)) }
      def business_account_token
      end

      sig { params(_: String).returns(String) }
      def business_account_token=(_)
      end

      # List balances for a given Financial Account type.
      sig { returns(T.nilable(Lithic::Models::BalanceListParams::FinancialAccountType::OrSymbol)) }
      def financial_account_type
      end

      sig do
        params(_: Lithic::Models::BalanceListParams::FinancialAccountType::OrSymbol)
          .returns(Lithic::Models::BalanceListParams::FinancialAccountType::OrSymbol)
      end
      def financial_account_type=(_)
      end

      sig do
        params(
          account_token: String,
          balance_date: Time,
          business_account_token: String,
          financial_account_type: Lithic::Models::BalanceListParams::FinancialAccountType::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        account_token: nil,
        balance_date: nil,
        business_account_token: nil,
        financial_account_type: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              account_token: String,
              balance_date: Time,
              business_account_token: String,
              financial_account_type: Lithic::Models::BalanceListParams::FinancialAccountType::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # List balances for a given Financial Account type.
      module FinancialAccountType
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::BalanceListParams::FinancialAccountType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::BalanceListParams::FinancialAccountType::TaggedSymbol) }

        ISSUING = T.let(:ISSUING, Lithic::Models::BalanceListParams::FinancialAccountType::TaggedSymbol)
        OPERATING = T.let(:OPERATING, Lithic::Models::BalanceListParams::FinancialAccountType::TaggedSymbol)
        RESERVE = T.let(:RESERVE, Lithic::Models::BalanceListParams::FinancialAccountType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::BalanceListParams::FinancialAccountType::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
