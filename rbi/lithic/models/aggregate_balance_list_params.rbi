# typed: strong

module Lithic
  module Models
    class AggregateBalanceListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::AggregateBalanceListParams, Lithic::Internal::AnyHash)
        end

      # Get the aggregate balance for a given Financial Account type.
      sig do
        returns(
          T.nilable(
            Lithic::AggregateBalanceListParams::FinancialAccountType::OrSymbol
          )
        )
      end
      attr_reader :financial_account_type

      sig do
        params(
          financial_account_type:
            Lithic::AggregateBalanceListParams::FinancialAccountType::OrSymbol
        ).void
      end
      attr_writer :financial_account_type

      sig do
        params(
          financial_account_type:
            Lithic::AggregateBalanceListParams::FinancialAccountType::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Get the aggregate balance for a given Financial Account type.
        financial_account_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            financial_account_type:
              Lithic::AggregateBalanceListParams::FinancialAccountType::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Get the aggregate balance for a given Financial Account type.
      module FinancialAccountType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::AggregateBalanceListParams::FinancialAccountType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ISSUING =
          T.let(
            :ISSUING,
            Lithic::AggregateBalanceListParams::FinancialAccountType::TaggedSymbol
          )
        OPERATING =
          T.let(
            :OPERATING,
            Lithic::AggregateBalanceListParams::FinancialAccountType::TaggedSymbol
          )
        RESERVE =
          T.let(
            :RESERVE,
            Lithic::AggregateBalanceListParams::FinancialAccountType::TaggedSymbol
          )
        SECURITY =
          T.let(
            :SECURITY,
            Lithic::AggregateBalanceListParams::FinancialAccountType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::AggregateBalanceListParams::FinancialAccountType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
