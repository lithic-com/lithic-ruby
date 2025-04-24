# typed: strong

module Lithic
  module Models
    class FinancialAccount < Lithic::Internal::Type::BaseModel
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
          credit_configuration: T.nilable(T.any(Lithic::Models::FinancialAccount::CreditConfiguration, Lithic::Internal::AnyHash))
        )
          .void
      end
      attr_writer :credit_configuration

      # Whether financial account is for the benefit of another entity
      sig { returns(T::Boolean) }
      attr_accessor :is_for_benefit_of

      sig { returns(T.nilable(String)) }
      attr_accessor :nickname

      # Status of the financial account
      sig { returns(Lithic::Models::FinancialAccount::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(Lithic::Models::FinancialAccount::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Time) }
      attr_accessor :updated

      sig { returns(T.nilable(String)) }
      attr_accessor :account_number

      sig { returns(T.nilable(String)) }
      attr_accessor :routing_number

      # Substatus for the financial account
      sig { returns(T.nilable(Lithic::Models::FinancialAccount::Substatus::TaggedSymbol)) }
      attr_accessor :substatus

      sig do
        params(
          token: String,
          account_token: T.nilable(String),
          created: Time,
          credit_configuration: T.nilable(T.any(Lithic::Models::FinancialAccount::CreditConfiguration, Lithic::Internal::AnyHash)),
          is_for_benefit_of: T::Boolean,
          nickname: T.nilable(String),
          status: Lithic::Models::FinancialAccount::Status::OrSymbol,
          type: Lithic::Models::FinancialAccount::Type::OrSymbol,
          updated: Time,
          account_number: T.nilable(String),
          routing_number: T.nilable(String),
          substatus: T.nilable(Lithic::Models::FinancialAccount::Substatus::OrSymbol)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Globally unique identifier for the account
        token:,
        account_token:,
        created:,
        credit_configuration:,
        # Whether financial account is for the benefit of another entity
        is_for_benefit_of:,
        nickname:,
        # Status of the financial account
        status:,
        type:,
        updated:,
        account_number: nil,
        routing_number: nil,
        # Substatus for the financial account
        substatus: nil
      ); end
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
              status: Lithic::Models::FinancialAccount::Status::TaggedSymbol,
              type: Lithic::Models::FinancialAccount::Type::TaggedSymbol,
              updated: Time,
              account_number: T.nilable(String),
              routing_number: T.nilable(String),
              substatus: T.nilable(Lithic::Models::FinancialAccount::Substatus::TaggedSymbol)
            }
          )
      end
      def to_hash; end

      class CreditConfiguration < Lithic::Internal::Type::BaseModel
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
        ); end
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
        def to_hash; end

        # Reason for the financial account being marked as Charged Off
        module ChargedOffReason
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccount::CreditConfiguration::ChargedOffReason) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DELINQUENT =
            T.let(:DELINQUENT, Lithic::Models::FinancialAccount::CreditConfiguration::ChargedOffReason::TaggedSymbol)
          FRAUD =
            T.let(:FRAUD, Lithic::Models::FinancialAccount::CreditConfiguration::ChargedOffReason::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Lithic::Models::FinancialAccount::CreditConfiguration::ChargedOffReason::TaggedSymbol])
          end
          def self.values; end
        end

        # State of the financial account
        module FinancialAccountState
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccount::CreditConfiguration::FinancialAccountState) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

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
          def self.values; end
        end
      end

      # Status of the financial account
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccount::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OPEN = T.let(:OPEN, Lithic::Models::FinancialAccount::Status::TaggedSymbol)
        CLOSED = T.let(:CLOSED, Lithic::Models::FinancialAccount::Status::TaggedSymbol)
        SUSPENDED = T.let(:SUSPENDED, Lithic::Models::FinancialAccount::Status::TaggedSymbol)
        PENDING = T.let(:PENDING, Lithic::Models::FinancialAccount::Status::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::FinancialAccount::Status::TaggedSymbol]) }
        def self.values; end
      end

      module Type
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccount::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ISSUING = T.let(:ISSUING, Lithic::Models::FinancialAccount::Type::TaggedSymbol)
        RESERVE = T.let(:RESERVE, Lithic::Models::FinancialAccount::Type::TaggedSymbol)
        OPERATING = T.let(:OPERATING, Lithic::Models::FinancialAccount::Type::TaggedSymbol)
        CHARGED_OFF_FEES = T.let(:CHARGED_OFF_FEES, Lithic::Models::FinancialAccount::Type::TaggedSymbol)
        CHARGED_OFF_INTEREST = T.let(:CHARGED_OFF_INTEREST, Lithic::Models::FinancialAccount::Type::TaggedSymbol)
        CHARGED_OFF_PRINCIPAL =
          T.let(:CHARGED_OFF_PRINCIPAL, Lithic::Models::FinancialAccount::Type::TaggedSymbol)
        SECURITY = T.let(:SECURITY, Lithic::Models::FinancialAccount::Type::TaggedSymbol)
        PROGRAM_RECEIVABLES = T.let(:PROGRAM_RECEIVABLES, Lithic::Models::FinancialAccount::Type::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::FinancialAccount::Type::TaggedSymbol]) }
        def self.values; end
      end

      # Substatus for the financial account
      module Substatus
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccount::Substatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHARGED_OFF_DELINQUENT =
          T.let(:CHARGED_OFF_DELINQUENT, Lithic::Models::FinancialAccount::Substatus::TaggedSymbol)
        CHARGED_OFF_FRAUD = T.let(:CHARGED_OFF_FRAUD, Lithic::Models::FinancialAccount::Substatus::TaggedSymbol)
        END_USER_REQUEST = T.let(:END_USER_REQUEST, Lithic::Models::FinancialAccount::Substatus::TaggedSymbol)
        BANK_REQUEST = T.let(:BANK_REQUEST, Lithic::Models::FinancialAccount::Substatus::TaggedSymbol)
        DELINQUENT = T.let(:DELINQUENT, Lithic::Models::FinancialAccount::Substatus::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::FinancialAccount::Substatus::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
