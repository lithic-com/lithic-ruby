# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class FinancialAccountCreditConfig < Lithic::BaseModel
        # Globally unique identifier for the account
        sig { returns(String) }
        def account_token
        end

        sig { params(_: String).returns(String) }
        def account_token=(_)
        end

        # Reason for the financial account being marked as Charged Off
        sig do
          returns(
            T.nilable(Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason::TaggedSymbol)
          )
        end
        def charged_off_reason
        end

        sig do
          params(
            _: T.nilable(Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason::TaggedSymbol)
          )
            .returns(
              T.nilable(Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason::TaggedSymbol)
            )
        end
        def charged_off_reason=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def credit_limit
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def credit_limit=(_)
        end

        # Globally unique identifier for the credit product
        sig { returns(T.nilable(String)) }
        def credit_product_token
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def credit_product_token=(_)
        end

        sig { returns(T.nilable(String)) }
        def external_bank_account_token
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def external_bank_account_token=(_)
        end

        # State of the financial account
        sig do
          returns(
            Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState::TaggedSymbol
          )
        end
        def financial_account_state
        end

        sig do
          params(
            _: Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState::TaggedSymbol
          )
            .returns(
              Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState::TaggedSymbol
            )
        end
        def financial_account_state=(_)
        end

        sig { returns(T::Boolean) }
        def is_spend_blocked
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def is_spend_blocked=(_)
        end

        # Tier assigned to the financial account
        sig { returns(T.nilable(String)) }
        def tier
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def tier=(_)
        end

        sig do
          params(
            account_token: String,
            charged_off_reason: T.nilable(Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason::TaggedSymbol),
            credit_limit: T.nilable(Integer),
            credit_product_token: T.nilable(String),
            external_bank_account_token: T.nilable(String),
            financial_account_state: Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState::TaggedSymbol,
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
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
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

          class << self
            sig do
              override
                .returns(
                  T::Array[Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::ChargedOffReason::TaggedSymbol]
                )
            end
            def values
            end
          end
        end

        # State of the financial account
        module FinancialAccountState
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
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

          class << self
            sig do
              override
                .returns(
                  T::Array[Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig::FinancialAccountState::TaggedSymbol]
                )
            end
            def values
            end
          end
        end
      end
    end

    FinancialAccountCreditConfig = FinancialAccounts::FinancialAccountCreditConfig
  end
end
