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

      # Substatus for the financial account
      sig do
        returns(T.nilable(Lithic::FinancialAccount::Substatus::TaggedSymbol))
      end
      attr_accessor :substatus

      sig { returns(Lithic::FinancialAccount::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Time) }
      attr_accessor :updated

      # User-defined status for the financial account
      sig { returns(T.nilable(String)) }
      attr_accessor :user_defined_status

      sig { returns(T.nilable(String)) }
      attr_accessor :account_number

      sig { returns(T.nilable(String)) }
      attr_accessor :routing_number

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
          substatus: T.nilable(Lithic::FinancialAccount::Substatus::OrSymbol),
          type: Lithic::FinancialAccount::Type::OrSymbol,
          updated: Time,
          user_defined_status: T.nilable(String),
          account_number: T.nilable(String),
          routing_number: T.nilable(String)
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
        # Substatus for the financial account
        substatus:,
        type:,
        updated:,
        # User-defined status for the financial account
        user_defined_status:,
        account_number: nil,
        routing_number: nil
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
            substatus:
              T.nilable(Lithic::FinancialAccount::Substatus::TaggedSymbol),
            type: Lithic::FinancialAccount::Type::TaggedSymbol,
            updated: Time,
            user_defined_status: T.nilable(String),
            account_number: T.nilable(String),
            routing_number: T.nilable(String)
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

        sig do
          returns(
            T.nilable(
              Lithic::FinancialAccount::CreditConfiguration::AutoCollectionConfiguration
            )
          )
        end
        attr_reader :auto_collection_configuration

        sig do
          params(
            auto_collection_configuration:
              T.nilable(
                Lithic::FinancialAccount::CreditConfiguration::AutoCollectionConfiguration::OrHash
              )
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
            auto_collection_configuration:
              T.nilable(
                Lithic::FinancialAccount::CreditConfiguration::AutoCollectionConfiguration::OrHash
              ),
            credit_limit: T.nilable(Integer),
            credit_product_token: T.nilable(String),
            external_bank_account_token: T.nilable(String),
            tier: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
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
              auto_collection_configuration:
                T.nilable(
                  Lithic::FinancialAccount::CreditConfiguration::AutoCollectionConfiguration
                ),
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
                Lithic::FinancialAccount::CreditConfiguration::AutoCollectionConfiguration,
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
        PROGRAM_BANK_ACCOUNTS_PAYABLE =
          T.let(
            :PROGRAM_BANK_ACCOUNTS_PAYABLE,
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
    end
  end
end
