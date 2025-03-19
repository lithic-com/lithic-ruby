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
        sig { returns(T.nilable(Symbol)) }
        def charged_off_reason
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
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
        sig { returns(Symbol) }
        def financial_account_state
        end

        sig { params(_: Symbol).returns(Symbol) }
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
            charged_off_reason: T.nilable(Symbol),
            credit_limit: T.nilable(Integer),
            credit_product_token: T.nilable(String),
            external_bank_account_token: T.nilable(String),
            financial_account_state: Symbol,
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
                charged_off_reason: T.nilable(Symbol),
                credit_limit: T.nilable(Integer),
                credit_product_token: T.nilable(String),
                external_bank_account_token: T.nilable(String),
                financial_account_state: Symbol,
                is_spend_blocked: T::Boolean,
                tier: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        # Reason for the financial account being marked as Charged Off
        class ChargedOffReason < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          DELINQUENT = :DELINQUENT
          FRAUD = :FRAUD
        end

        # State of the financial account
        class FinancialAccountState < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          PENDING = :PENDING
          CURRENT = :CURRENT
          DELINQUENT = :DELINQUENT
          CHARGED_OFF = :CHARGED_OFF
        end
      end
    end

    FinancialAccountCreditConfig = FinancialAccounts::FinancialAccountCreditConfig
  end
end
