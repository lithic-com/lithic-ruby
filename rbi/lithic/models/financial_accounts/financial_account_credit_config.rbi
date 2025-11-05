# typed: strong

module Lithic
  module Models
    FinancialAccountCreditConfig =
      FinancialAccounts::FinancialAccountCreditConfig

    module FinancialAccounts
      class FinancialAccountCreditConfig < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::FinancialAccounts::FinancialAccountCreditConfig,
              Lithic::Internal::AnyHash
            )
          end

        # Globally unique identifier for the account
        sig { returns(String) }
        attr_accessor :account_token

        sig do
          returns(
            Lithic::FinancialAccounts::FinancialAccountCreditConfig::AutoCollectionConfiguration
          )
        end
        attr_reader :auto_collection_configuration

        sig do
          params(
            auto_collection_configuration:
              Lithic::FinancialAccounts::FinancialAccountCreditConfig::AutoCollectionConfiguration::OrHash
          ).void
        end
        attr_writer :auto_collection_configuration

        sig { returns(T.nilable(Integer)) }
        attr_accessor :credit_limit

        # Globally unique identifier for the credit product
        sig { returns(T.nilable(String)) }
        attr_accessor :credit_product_token

        sig { returns(T.nilable(String)) }
        attr_accessor :external_bank_account_token

        # Tier assigned to the financial account
        sig { returns(T.nilable(String)) }
        attr_accessor :tier

        sig do
          params(
            account_token: String,
            auto_collection_configuration:
              Lithic::FinancialAccounts::FinancialAccountCreditConfig::AutoCollectionConfiguration::OrHash,
            credit_limit: T.nilable(Integer),
            credit_product_token: T.nilable(String),
            external_bank_account_token: T.nilable(String),
            tier: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier for the account
          account_token:,
          auto_collection_configuration:,
          credit_limit:,
          # Globally unique identifier for the credit product
          credit_product_token:,
          external_bank_account_token:,
          # Tier assigned to the financial account
          tier:
        )
        end

        sig do
          override.returns(
            {
              account_token: String,
              auto_collection_configuration:
                Lithic::FinancialAccounts::FinancialAccountCreditConfig::AutoCollectionConfiguration,
              credit_limit: T.nilable(Integer),
              credit_product_token: T.nilable(String),
              external_bank_account_token: T.nilable(String),
              tier: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class AutoCollectionConfiguration < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::FinancialAccounts::FinancialAccountCreditConfig::AutoCollectionConfiguration,
                Lithic::Internal::AnyHash
              )
            end

          # If auto collection is enabled for this account
          sig { returns(T::Boolean) }
          attr_accessor :auto_collection_enabled

          sig do
            params(auto_collection_enabled: T::Boolean).returns(
              T.attached_class
            )
          end
          def self.new(
            # If auto collection is enabled for this account
            auto_collection_enabled:
          )
          end

          sig { override.returns({ auto_collection_enabled: T::Boolean }) }
          def to_hash
          end
        end
      end
    end
  end
end
