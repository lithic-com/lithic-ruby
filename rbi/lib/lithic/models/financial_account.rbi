# typed: strong

module Lithic
  module Models
    class FinancialAccount < Lithic::BaseModel
      # Globally unique identifier for the account
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      sig { returns(T.nilable(String)) }
      def account_token
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def account_token=(_)
      end

      sig { returns(Time) }
      def created
      end

      sig { params(_: Time).returns(Time) }
      def created=(_)
      end

      sig { returns(T.nilable(Lithic::Models::FinancialAccount::CreditConfiguration)) }
      def credit_configuration
      end

      sig do
        params(_: T.nilable(Lithic::Models::FinancialAccount::CreditConfiguration))
          .returns(T.nilable(Lithic::Models::FinancialAccount::CreditConfiguration))
      end
      def credit_configuration=(_)
      end

      # Whether financial account is for the benefit of another entity
      sig { returns(T::Boolean) }
      def is_for_benefit_of
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def is_for_benefit_of=(_)
      end

      sig { returns(T.nilable(String)) }
      def nickname
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def nickname=(_)
      end

      # Status of the financial account
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig { returns(Time) }
      def updated
      end

      sig { params(_: Time).returns(Time) }
      def updated=(_)
      end

      sig { returns(T.nilable(String)) }
      def account_number
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def account_number=(_)
      end

      sig { returns(T.nilable(String)) }
      def routing_number
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def routing_number=(_)
      end

      # Reason for the financial account status change
      sig { returns(T.nilable(Symbol)) }
      def status_change_reason
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def status_change_reason=(_)
      end

      sig do
        params(
          token: String,
          account_token: T.nilable(String),
          created: Time,
          credit_configuration: T.nilable(Lithic::Models::FinancialAccount::CreditConfiguration),
          is_for_benefit_of: T::Boolean,
          nickname: T.nilable(String),
          status: Symbol,
          type: Symbol,
          updated: Time,
          account_number: T.nilable(String),
          routing_number: T.nilable(String),
          status_change_reason: T.nilable(Symbol)
        )
          .returns(T.attached_class)
      end
      def self.new(
        token:,
        account_token:,
        created:,
        credit_configuration:,
        is_for_benefit_of:,
        nickname:,
        status:,
        type:,
        updated:,
        account_number: nil,
        routing_number: nil,
        status_change_reason: nil
      )
      end

      sig do
        override
          .returns(
            {
              token: String,
              account_token: T.nilable(String),
              created: Time,
              credit_configuration: T.nilable(Lithic::Models::FinancialAccount::CreditConfiguration),
              is_for_benefit_of: T::Boolean,
              nickname: T.nilable(String),
              status: Symbol,
              type: Symbol,
              updated: Time,
              account_number: T.nilable(String),
              routing_number: T.nilable(String),
              status_change_reason: T.nilable(Symbol)
            }
          )
      end
      def to_hash
      end

      class CreditConfiguration < Lithic::BaseModel
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
        sig { returns(T.nilable(Symbol)) }
        def financial_account_state
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
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
            charged_off_reason: T.nilable(Symbol),
            credit_limit: T.nilable(Integer),
            credit_product_token: T.nilable(String),
            external_bank_account_token: T.nilable(String),
            financial_account_state: T.nilable(Symbol),
            is_spend_blocked: T::Boolean,
            tier: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(
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
                charged_off_reason: T.nilable(Symbol),
                credit_limit: T.nilable(Integer),
                credit_product_token: T.nilable(String),
                external_bank_account_token: T.nilable(String),
                financial_account_state: T.nilable(Symbol),
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

      # Status of the financial account
      class Status < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        OPEN = :OPEN
        CLOSED = :CLOSED
        SUSPENDED = :SUSPENDED
        PENDING = :PENDING
      end

      class Type < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ISSUING = :ISSUING
        RESERVE = :RESERVE
        OPERATING = :OPERATING
        CHARGED_OFF_FEES = :CHARGED_OFF_FEES
        CHARGED_OFF_INTEREST = :CHARGED_OFF_INTEREST
        CHARGED_OFF_PRINCIPAL = :CHARGED_OFF_PRINCIPAL
      end

      # Reason for the financial account status change
      class StatusChangeReason < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        CHARGED_OFF_DELINQUENT = :CHARGED_OFF_DELINQUENT
        CHARGED_OFF_FRAUD = :CHARGED_OFF_FRAUD
        END_USER_REQUEST = :END_USER_REQUEST
        BANK_REQUEST = :BANK_REQUEST
        DELINQUENT = :DELINQUENT
      end
    end
  end
end
