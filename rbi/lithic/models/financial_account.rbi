# typed: strong

module Lithic
  module Models
    class FinancialAccount < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::FinancialAccount, Lithic::Internal::AnyHash)
        end

      # Globally unique identifier for the account
      sig { returns(String) }
      attr_accessor :token

      sig { returns(T.nilable(String)) }
      attr_accessor :account_token

      sig { returns(Time) }
      attr_accessor :created

      sig { returns(T.nilable(Lithic::FinancialAccount::CreditConfiguration)) }
      attr_reader :credit_configuration

      sig do
        params(
          credit_configuration:
            T.nilable(Lithic::FinancialAccount::CreditConfiguration::OrHash)
        ).void
      end
      attr_writer :credit_configuration

      # Whether financial account is for the benefit of another entity
      sig { returns(T::Boolean) }
      attr_accessor :is_for_benefit_of

      sig { returns(T.nilable(String)) }
      attr_accessor :nickname

      # Status of the financial account
      sig { returns(Lithic::FinancialAccount::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(Lithic::FinancialAccount::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Time) }
      attr_accessor :updated

      sig { returns(T.nilable(String)) }
      attr_accessor :account_number

      sig { returns(T.nilable(String)) }
      attr_accessor :routing_number

      # Substatus for the financial account
      sig do
        returns(T.nilable(Lithic::FinancialAccount::Substatus::TaggedSymbol))
      end
      attr_accessor :substatus

      sig do
        params(
          token: String,
          account_token: T.nilable(String),
          created: Time,
          credit_configuration:
            T.nilable(Lithic::FinancialAccount::CreditConfiguration::OrHash),
          is_for_benefit_of: T::Boolean,
          nickname: T.nilable(String),
          status: Lithic::FinancialAccount::Status::OrSymbol,
          type: Lithic::FinancialAccount::Type::OrSymbol,
          updated: Time,
          account_number: T.nilable(String),
          routing_number: T.nilable(String),
          substatus: T.nilable(Lithic::FinancialAccount::Substatus::OrSymbol)
        ).returns(T.attached_class)
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
      )
      end

      sig do
        override.returns(
          {
            token: String,
            account_token: T.nilable(String),
            created: Time,
            credit_configuration:
              T.nilable(Lithic::FinancialAccount::CreditConfiguration),
            is_for_benefit_of: T::Boolean,
            nickname: T.nilable(String),
            status: Lithic::FinancialAccount::Status::TaggedSymbol,
            type: Lithic::FinancialAccount::Type::TaggedSymbol,
            updated: Time,
            account_number: T.nilable(String),
            routing_number: T.nilable(String),
            substatus:
              T.nilable(Lithic::FinancialAccount::Substatus::TaggedSymbol)
          }
        )
      end
      def to_hash
      end

      class CreditConfiguration < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::FinancialAccount::CreditConfiguration,
              Lithic::Internal::AnyHash
            )
          end

        # Reason for the financial account being marked as Charged Off
        sig do
          returns(
            T.nilable(
              Lithic::FinancialAccount::CreditConfiguration::ChargedOffReason::TaggedSymbol
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
            T.nilable(
              Lithic::FinancialAccount::CreditConfiguration::FinancialAccountState::TaggedSymbol
            )
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
            charged_off_reason:
              T.nilable(
                Lithic::FinancialAccount::CreditConfiguration::ChargedOffReason::OrSymbol
              ),
            credit_limit: T.nilable(Integer),
            credit_product_token: T.nilable(String),
            external_bank_account_token: T.nilable(String),
            financial_account_state:
              T.nilable(
                Lithic::FinancialAccount::CreditConfiguration::FinancialAccountState::OrSymbol
              ),
            is_spend_blocked: T::Boolean,
            tier: T.nilable(String)
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              charged_off_reason:
                T.nilable(
                  Lithic::FinancialAccount::CreditConfiguration::ChargedOffReason::TaggedSymbol
                ),
              credit_limit: T.nilable(Integer),
              credit_product_token: T.nilable(String),
              external_bank_account_token: T.nilable(String),
              financial_account_state:
                T.nilable(
                  Lithic::FinancialAccount::CreditConfiguration::FinancialAccountState::TaggedSymbol
                ),
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
            T.type_alias do
              T.all(
                Symbol,
                Lithic::FinancialAccount::CreditConfiguration::ChargedOffReason
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DELINQUENT =
            T.let(
              :DELINQUENT,
              Lithic::FinancialAccount::CreditConfiguration::ChargedOffReason::TaggedSymbol
            )
          FRAUD =
            T.let(
              :FRAUD,
              Lithic::FinancialAccount::CreditConfiguration::ChargedOffReason::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::FinancialAccount::CreditConfiguration::ChargedOffReason::TaggedSymbol
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
                Lithic::FinancialAccount::CreditConfiguration::FinancialAccountState
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              Lithic::FinancialAccount::CreditConfiguration::FinancialAccountState::TaggedSymbol
            )
          CURRENT =
            T.let(
              :CURRENT,
              Lithic::FinancialAccount::CreditConfiguration::FinancialAccountState::TaggedSymbol
            )
          DELINQUENT =
            T.let(
              :DELINQUENT,
              Lithic::FinancialAccount::CreditConfiguration::FinancialAccountState::TaggedSymbol
            )
          CHARGED_OFF =
            T.let(
              :CHARGED_OFF,
              Lithic::FinancialAccount::CreditConfiguration::FinancialAccountState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::FinancialAccount::CreditConfiguration::FinancialAccountState::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Status of the financial account
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::FinancialAccount::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OPEN = T.let(:OPEN, Lithic::FinancialAccount::Status::TaggedSymbol)
        CLOSED = T.let(:CLOSED, Lithic::FinancialAccount::Status::TaggedSymbol)
        SUSPENDED =
          T.let(:SUSPENDED, Lithic::FinancialAccount::Status::TaggedSymbol)
        PENDING =
          T.let(:PENDING, Lithic::FinancialAccount::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::FinancialAccount::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Type
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::FinancialAccount::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ISSUING = T.let(:ISSUING, Lithic::FinancialAccount::Type::TaggedSymbol)
        RESERVE = T.let(:RESERVE, Lithic::FinancialAccount::Type::TaggedSymbol)
        OPERATING =
          T.let(:OPERATING, Lithic::FinancialAccount::Type::TaggedSymbol)
        CHARGED_OFF_FEES =
          T.let(:CHARGED_OFF_FEES, Lithic::FinancialAccount::Type::TaggedSymbol)
        CHARGED_OFF_INTEREST =
          T.let(
            :CHARGED_OFF_INTEREST,
            Lithic::FinancialAccount::Type::TaggedSymbol
          )
        CHARGED_OFF_PRINCIPAL =
          T.let(
            :CHARGED_OFF_PRINCIPAL,
            Lithic::FinancialAccount::Type::TaggedSymbol
          )
        SECURITY =
          T.let(:SECURITY, Lithic::FinancialAccount::Type::TaggedSymbol)
        PROGRAM_RECEIVABLES =
          T.let(
            :PROGRAM_RECEIVABLES,
            Lithic::FinancialAccount::Type::TaggedSymbol
          )
        COLLECTION =
          T.let(:COLLECTION, Lithic::FinancialAccount::Type::TaggedSymbol)
        BANK_ACCOUNTS_PAYABLE =
          T.let(
            :BANK_ACCOUNTS_PAYABLE,
            Lithic::FinancialAccount::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::FinancialAccount::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Substatus for the financial account
      module Substatus
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::FinancialAccount::Substatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHARGED_OFF_DELINQUENT =
          T.let(
            :CHARGED_OFF_DELINQUENT,
            Lithic::FinancialAccount::Substatus::TaggedSymbol
          )
        CHARGED_OFF_FRAUD =
          T.let(
            :CHARGED_OFF_FRAUD,
            Lithic::FinancialAccount::Substatus::TaggedSymbol
          )
        END_USER_REQUEST =
          T.let(
            :END_USER_REQUEST,
            Lithic::FinancialAccount::Substatus::TaggedSymbol
          )
        BANK_REQUEST =
          T.let(
            :BANK_REQUEST,
            Lithic::FinancialAccount::Substatus::TaggedSymbol
          )
        DELINQUENT =
          T.let(:DELINQUENT, Lithic::FinancialAccount::Substatus::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::FinancialAccount::Substatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
