# typed: strong

module Lithic
  module Models
    class FinancialAccountListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

      # List financial accounts for a given account_token or business_account_token
      sig { returns(T.nilable(String)) }
      attr_reader :account_token

      sig { params(account_token: String).void }
      attr_writer :account_token

      # List financial accounts for a given business_account_token
      sig { returns(T.nilable(String)) }
      attr_reader :business_account_token

      sig { params(business_account_token: String).void }
      attr_writer :business_account_token

      # List financial accounts of a given type
      sig do
        returns(T.nilable(Lithic::FinancialAccountListParams::Type::OrSymbol))
      end
      attr_reader :type

      sig do
        params(type: Lithic::FinancialAccountListParams::Type::OrSymbol).void
      end
      attr_writer :type

      sig do
        params(
          account_token: String,
          business_account_token: String,
          type: Lithic::FinancialAccountListParams::Type::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # List financial accounts for a given account_token or business_account_token
        account_token: nil,
        # List financial accounts for a given business_account_token
        business_account_token: nil,
        # List financial accounts of a given type
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_token: String,
            business_account_token: String,
            type: Lithic::FinancialAccountListParams::Type::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # List financial accounts of a given type
      module Type
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::FinancialAccountListParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ISSUING =
          T.let(
            :ISSUING,
            Lithic::FinancialAccountListParams::Type::TaggedSymbol
          )
        OPERATING =
          T.let(
            :OPERATING,
            Lithic::FinancialAccountListParams::Type::TaggedSymbol
          )
        RESERVE =
          T.let(
            :RESERVE,
            Lithic::FinancialAccountListParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::FinancialAccountListParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
