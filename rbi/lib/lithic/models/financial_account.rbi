# typed: strong

module Lithic
  module Models
    class FinancialAccount < Lithic::BaseModel
      # Globally unique identifier for the account
      sig { returns(String) }
      attr_accessor :token

      sig { returns(T.nilable(String)) }
      attr_accessor :account_token

      sig { returns(Time) }
      attr_accessor :created

      sig { returns(T.nilable(Lithic::Models::FinancialAccount::CreditConfiguration)) }
      attr_reader :credit_configuration

      sig do
        params(
          credit_configuration: T.nilable(T.any(Lithic::Models::FinancialAccount::CreditConfiguration, Lithic::Util::AnyHash))
        )
          .void
      end
      attr_writer :credit_configuration

      # Whether financial account is for the benefit of another entity
      sig { returns(T::Boolean) }
      attr_accessor :is_for_benefit_of

      sig { returns(T.nilable(String)) }
      attr_accessor :nickname

      sig { returns(Lithic::Models::FinancialAccount::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Time) }
      attr_accessor :updated

      sig { returns(T.nilable(String)) }
      attr_accessor :account_number

      sig { returns(T.nilable(String)) }
      attr_accessor :routing_number

      sig do
        params(
          token: String,
          account_token: T.nilable(String),
          created: Time,
          credit_configuration: T.nilable(T.any(Lithic::Models::FinancialAccount::CreditConfiguration, Lithic::Util::AnyHash)),
          is_for_benefit_of: T::Boolean,
          nickname: T.nilable(String),
          type: Lithic::Models::FinancialAccount::Type::OrSymbol,
          updated: Time,
          account_number: T.nilable(String),
          routing_number: T.nilable(String)
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
        type:,
        updated:,
        account_number: nil,
        routing_number: nil
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
              type: Lithic::Models::FinancialAccount::Type::TaggedSymbol,
              updated: Time,
              account_number: T.nilable(String),
              routing_number: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      class CreditConfiguration < Lithic::BaseModel
        # Reason for the financial account being marked as Charged Off
        sig { returns(T.nilable(Lithic::Models::FinancialAccount::CreditConfiguration::ChargedOffReason::TaggedSymbol)) }
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
            T.nilable(Lithic::Models::FinancialAccount::CreditConfiguration::FinancialAccountState::TaggedSymbol)
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
            charged_off_reason: T.nilable(Lithic::Models::FinancialAccount::CreditConfiguration::ChargedOffReason::OrSymbol),
            credit_limit: T.nilable(Integer),
            credit_product_token: T.nilable(String),
            external_bank_account_token: T.nilable(String),
            financial_account_state: T.nilable(Lithic::Models::FinancialAccount::CreditConfiguration::FinancialAccountState::OrSymbol),
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
                charged_off_reason: T.nilable(Lithic::Models::FinancialAccount::CreditConfiguration::ChargedOffReason::TaggedSymbol),
                credit_limit: T.nilable(Integer),
                credit_product_token: T.nilable(String),
                external_bank_account_token: T.nilable(String),
                financial_account_state: T.nilable(Lithic::Models::FinancialAccount::CreditConfiguration::FinancialAccountState::TaggedSymbol),
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
            T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccount::CreditConfiguration::ChargedOffReason) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::FinancialAccount::CreditConfiguration::ChargedOffReason::TaggedSymbol) }

          DELINQUENT =
            T.let(:DELINQUENT, Lithic::Models::FinancialAccount::CreditConfiguration::ChargedOffReason::TaggedSymbol)
          FRAUD =
            T.let(:FRAUD, Lithic::Models::FinancialAccount::CreditConfiguration::ChargedOffReason::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Lithic::Models::FinancialAccount::CreditConfiguration::ChargedOffReason::TaggedSymbol])
          end
          def self.values
          end
        end

        # State of the financial account
        module FinancialAccountState
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccount::CreditConfiguration::FinancialAccountState) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::FinancialAccount::CreditConfiguration::FinancialAccountState::TaggedSymbol) }

          PENDING =
            T.let(
              :PENDING,
              Lithic::Models::FinancialAccount::CreditConfiguration::FinancialAccountState::TaggedSymbol
            )
          CURRENT =
            T.let(
              :CURRENT,
              Lithic::Models::FinancialAccount::CreditConfiguration::FinancialAccountState::TaggedSymbol
            )
          DELINQUENT =
            T.let(
              :DELINQUENT,
              Lithic::Models::FinancialAccount::CreditConfiguration::FinancialAccountState::TaggedSymbol
            )
          CHARGED_OFF =
            T.let(
              :CHARGED_OFF,
              Lithic::Models::FinancialAccount::CreditConfiguration::FinancialAccountState::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[Lithic::Models::FinancialAccount::CreditConfiguration::FinancialAccountState::TaggedSymbol]
              )
          end
          def self.values
          end
        end
      end

      module Type
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccount::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::FinancialAccount::Type::TaggedSymbol) }

        ISSUING = T.let(:ISSUING, Lithic::Models::FinancialAccount::Type::TaggedSymbol)
        RESERVE = T.let(:RESERVE, Lithic::Models::FinancialAccount::Type::TaggedSymbol)
        OPERATING = T.let(:OPERATING, Lithic::Models::FinancialAccount::Type::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::FinancialAccount::Type::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
