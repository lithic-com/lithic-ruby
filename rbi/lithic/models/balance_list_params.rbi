# typed: strong

module Lithic
  module Models
    class BalanceListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::BalanceListParams, Lithic::Internal::AnyHash)
        end

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
      sig do
        returns(
          T.nilable(Lithic::BalanceListParams::FinancialAccountType::OrSymbol)
        )
      end
      attr_reader :financial_account_type

      sig do
        params(
          financial_account_type:
            Lithic::BalanceListParams::FinancialAccountType::OrSymbol
        ).void
      end
      attr_writer :financial_account_type

      sig do
        params(
          account_token: String,
          balance_date: Time,
          business_account_token: String,
          financial_account_type:
            Lithic::BalanceListParams::FinancialAccountType::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # List balances for all financial accounts of a given account_token.
        account_token: nil,
        # UTC date and time of the balances to retrieve. Defaults to latest available
        # balances
        balance_date: nil,
        # List balances for all financial accounts of a given business_account_token.
        business_account_token: nil,
        # List balances for a given Financial Account type.
        financial_account_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_token: String,
            balance_date: Time,
            business_account_token: String,
            financial_account_type:
              Lithic::BalanceListParams::FinancialAccountType::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # List balances for a given Financial Account type.
      module FinancialAccountType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::BalanceListParams::FinancialAccountType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ISSUING =
          T.let(
            :ISSUING,
            Lithic::BalanceListParams::FinancialAccountType::TaggedSymbol
          )
        OPERATING =
          T.let(
            :OPERATING,
            Lithic::BalanceListParams::FinancialAccountType::TaggedSymbol
          )
        RESERVE =
          T.let(
            :RESERVE,
            Lithic::BalanceListParams::FinancialAccountType::TaggedSymbol
          )
        SECURITY =
          T.let(
            :SECURITY,
            Lithic::BalanceListParams::FinancialAccountType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::BalanceListParams::FinancialAccountType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
