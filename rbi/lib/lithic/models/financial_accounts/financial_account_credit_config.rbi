# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class FinancialAccountCreditConfig < Lithic::Internal::Type::BaseModel
        # Globally unique identifier for the account
        sig { returns(String) }
        attr_accessor :account_token

        # Reason for the financial account being marked as Charged Off
        sig do
          returns(
            T.nilable(Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason::TaggedSymbol)
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
            Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState::TaggedSymbol
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
            charged_off_reason: T.nilable(Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason::OrSymbol),
            credit_limit: T.nilable(Integer),
            credit_product_token: T.nilable(String),
            external_bank_account_token: T.nilable(String),
            financial_account_state: Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState::OrSymbol,
            is_spend_blocked: T::Boolean,
            tier: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(
          account_token:,
          charged_off_reason:,
          credit_limit:,
          credit_product_token:,
          external_bank_account_token:,
          financial_account_state:,
          is_spend_blocked:,
          tier:
        )
        end

        sig do
          override
            .returns(
              {
                account_token: String,
                charged_off_reason: T.nilable(Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason::TaggedSymbol),
                credit_limit: T.nilable(Integer),
                credit_product_token: T.nilable(String),
                external_bank_account_token: T.nilable(String),
                financial_account_state: Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState::TaggedSymbol,
                is_spend_blocked: T::Boolean,
                tier: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        # Reason for the financial account being marked as Charged Off
        module ChargedOffReason
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason::TaggedSymbol
              )
            end

          DELINQUENT =
            T.let(
              :DELINQUENT,
              Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason::TaggedSymbol
            )
          FRAUD =
            T.let(
              :FRAUD,
              Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason::TaggedSymbol]
              )
          end
          def self.values
          end
        end

        # State of the financial account
        module FinancialAccountState
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState::TaggedSymbol
              )
            end

          PENDING =
            T.let(
              :PENDING,
              Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState::TaggedSymbol
            )
          CURRENT =
            T.let(
              :CURRENT,
              Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState::TaggedSymbol
            )
          DELINQUENT =
            T.let(
              :DELINQUENT,
              Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState::TaggedSymbol
            )
          CHARGED_OFF =
            T.let(
              :CHARGED_OFF,
              Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState::TaggedSymbol]
              )
          end
          def self.values
          end
        end
      end
    end

    FinancialAccountCreditConfig = FinancialAccounts::FinancialAccountCreditConfig
  end
end
