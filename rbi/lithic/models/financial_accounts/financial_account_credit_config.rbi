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

        # Reason for the financial account being marked as Charged Off
        sig do
          returns(
            T.nilable(
              Lithic::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason::TaggedSymbol
            )
          )
        end
        attr_accessor :charged_off_reason

        sig { returns(T.nilable(Integer)) }
        attr_accessor :credit_limit

        # Globally unique identifier for the credit product
        sig { returns(T.nilable(String)) }
        attr_accessor :credit_product_token

        sig { returns(T.nilable(String)) }
        attr_accessor :external_bank_account_token

        # State of the financial account
        sig do
          returns(
            Lithic::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState::TaggedSymbol
          )
        end
        attr_accessor :financial_account_state

        sig { returns(T::Boolean) }
        attr_accessor :is_spend_blocked

        # Tier assigned to the financial account
        sig { returns(T.nilable(String)) }
        attr_accessor :tier

        sig do
          params(
            account_token: String,
            auto_collection_configuration:
              Lithic::FinancialAccounts::FinancialAccountCreditConfig::AutoCollectionConfiguration::OrHash,
            charged_off_reason:
              T.nilable(
                Lithic::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason::OrSymbol
              ),
            credit_limit: T.nilable(Integer),
            credit_product_token: T.nilable(String),
            external_bank_account_token: T.nilable(String),
            financial_account_state:
              Lithic::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState::OrSymbol,
            is_spend_blocked: T::Boolean,
            tier: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier for the account
          account_token:,
          auto_collection_configuration:,
          # Reason for the financial account being marked as Charged Off
          charged_off_reason:,
          credit_limit:,
          # Globally unique identifier for the credit product
          credit_product_token:,
          external_bank_account_token:,
          # State of the financial account
          financial_account_state:,
          is_spend_blocked:,
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
              charged_off_reason:
                T.nilable(
                  Lithic::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason::TaggedSymbol
                ),
              credit_limit: T.nilable(Integer),
              credit_product_token: T.nilable(String),
              external_bank_account_token: T.nilable(String),
              financial_account_state:
                Lithic::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState::TaggedSymbol,
              is_spend_blocked: T::Boolean,
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

        # Reason for the financial account being marked as Charged Off
        module ChargedOffReason
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DELINQUENT =
            T.let(
              :DELINQUENT,
              Lithic::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason::TaggedSymbol
            )
          FRAUD =
            T.let(
              :FRAUD,
              Lithic::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # State of the financial account
        module FinancialAccountState
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              Lithic::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState::TaggedSymbol
            )
          CURRENT =
            T.let(
              :CURRENT,
              Lithic::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState::TaggedSymbol
            )
          DELINQUENT =
            T.let(
              :DELINQUENT,
              Lithic::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState::TaggedSymbol
            )
          CHARGED_OFF =
            T.let(
              :CHARGED_OFF,
              Lithic::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
