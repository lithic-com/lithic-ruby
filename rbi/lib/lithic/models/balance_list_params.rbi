# typed: strong

module Lithic
  module Models
    class BalanceListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # List balances for all financial accounts of a given account_token.
      sig { returns(T.nilable(String)) }
      attr_reader :account_token

      sig { params(account_token: String).void }
      attr_writer :account_token

      # UTC date and time of the balances to retrieve. Defaults to latest available
      # balances
      sig { returns(T.nilable(Time)) }
      attr_reader :balance_date

      sig { params(balance_date: Time).void }
      attr_writer :balance_date

      # List balances for all financial accounts of a given business_account_token.
      sig { returns(T.nilable(String)) }
      attr_reader :business_account_token

      sig { params(business_account_token: String).void }
      attr_writer :business_account_token

      # List balances for a given Financial Account type.
      sig { returns(T.nilable(Lithic::Models::BalanceListParams::FinancialAccountType::OrSymbol)) }
      attr_reader :financial_account_type

      sig { params(financial_account_type: Lithic::Models::BalanceListParams::FinancialAccountType::OrSymbol).void }
      attr_writer :financial_account_type

      sig do
        params(
          account_token: String,
          balance_date: Time,
          business_account_token: String,
          financial_account_type: Lithic::Models::BalanceListParams::FinancialAccountType::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        account_token: nil,
        balance_date: nil,
        business_account_token: nil,
        financial_account_type: nil,
        request_options: {}
      ); end
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
      def to_hash; end

      # List balances for a given Financial Account type.
      module FinancialAccountType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::BalanceListParams::FinancialAccountType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ISSUING = T.let(:ISSUING, Lithic::Models::BalanceListParams::FinancialAccountType::TaggedSymbol)
        OPERATING = T.let(:OPERATING, Lithic::Models::BalanceListParams::FinancialAccountType::TaggedSymbol)
        RESERVE = T.let(:RESERVE, Lithic::Models::BalanceListParams::FinancialAccountType::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::BalanceListParams::FinancialAccountType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
