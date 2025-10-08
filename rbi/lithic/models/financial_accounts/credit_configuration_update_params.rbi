# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class CreditConfigurationUpdateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::FinancialAccounts::CreditConfigurationUpdateParams,
              Lithic::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Lithic::FinancialAccounts::CreditConfigurationUpdateParams::AutoCollectionConfiguration
            )
          )
        end
        attr_reader :auto_collection_configuration

        sig do
          params(
            auto_collection_configuration:
              Lithic::FinancialAccounts::CreditConfigurationUpdateParams::AutoCollectionConfiguration::OrHash
          ).void
        end
        attr_writer :auto_collection_configuration

        sig { returns(T.nilable(Integer)) }
        attr_reader :credit_limit

        sig { params(credit_limit: Integer).void }
        attr_writer :credit_limit

        # Globally unique identifier for the credit product
        sig { returns(T.nilable(String)) }
        attr_reader :credit_product_token

        sig { params(credit_product_token: String).void }
        attr_writer :credit_product_token

        sig { returns(T.nilable(String)) }
        attr_reader :external_bank_account_token

        sig { params(external_bank_account_token: String).void }
        attr_writer :external_bank_account_token

        # Tier to assign to a financial account
        sig { returns(T.nilable(String)) }
        attr_reader :tier

        sig { params(tier: String).void }
        attr_writer :tier

        sig do
          params(
            auto_collection_configuration:
              Lithic::FinancialAccounts::CreditConfigurationUpdateParams::AutoCollectionConfiguration::OrHash,
            credit_limit: Integer,
            credit_product_token: String,
            external_bank_account_token: String,
            tier: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          auto_collection_configuration: nil,
          credit_limit: nil,
          # Globally unique identifier for the credit product
          credit_product_token: nil,
          external_bank_account_token: nil,
          # Tier to assign to a financial account
          tier: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              auto_collection_configuration:
                Lithic::FinancialAccounts::CreditConfigurationUpdateParams::AutoCollectionConfiguration,
              credit_limit: Integer,
              credit_product_token: String,
              external_bank_account_token: String,
              tier: String,
              request_options: Lithic::RequestOptions
            }
          )
        end
        def to_hash
        end

        class AutoCollectionConfiguration < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::FinancialAccounts::CreditConfigurationUpdateParams::AutoCollectionConfiguration,
                Lithic::Internal::AnyHash
              )
            end

          # If auto collection is enabled for this account
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :auto_collection_enabled

          sig { params(auto_collection_enabled: T::Boolean).void }
          attr_writer :auto_collection_enabled

          sig do
            params(auto_collection_enabled: T::Boolean).returns(
              T.attached_class
            )
          end
          def self.new(
            # If auto collection is enabled for this account
            auto_collection_enabled: nil
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
