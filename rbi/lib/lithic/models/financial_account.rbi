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
        params(_: T.nilable(T.any(Lithic::Models::FinancialAccount::CreditConfiguration, Lithic::Util::AnyHash)))
          .returns(T.nilable(T.any(Lithic::Models::FinancialAccount::CreditConfiguration, Lithic::Util::AnyHash)))
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
      sig { returns(Lithic::Models::FinancialAccount::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Lithic::Models::FinancialAccount::Status::TaggedSymbol)
          .returns(Lithic::Models::FinancialAccount::Status::TaggedSymbol)
      end
      def status=(_)
      end

      sig { returns(Lithic::Models::FinancialAccount::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Lithic::Models::FinancialAccount::Type::TaggedSymbol)
          .returns(Lithic::Models::FinancialAccount::Type::TaggedSymbol)
      end
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
      sig { returns(T.nilable(Lithic::Models::FinancialAccount::StatusChangeReason::TaggedSymbol)) }
      def status_change_reason
      end

      sig do
        params(_: T.nilable(Lithic::Models::FinancialAccount::StatusChangeReason::TaggedSymbol))
          .returns(T.nilable(Lithic::Models::FinancialAccount::StatusChangeReason::TaggedSymbol))
      end
      def status_change_reason=(_)
      end

      sig do
        params(
          token: String,
          account_token: T.nilable(String),
          created: Time,
          credit_configuration: T.nilable(T.any(Lithic::Models::FinancialAccount::CreditConfiguration, Lithic::Util::AnyHash)),
          is_for_benefit_of: T::Boolean,
          nickname: T.nilable(String),
          status: Lithic::Models::FinancialAccount::Status::TaggedSymbol,
          type: Lithic::Models::FinancialAccount::Type::TaggedSymbol,
          updated: Time,
          account_number: T.nilable(String),
          routing_number: T.nilable(String),
          status_change_reason: T.nilable(Lithic::Models::FinancialAccount::StatusChangeReason::TaggedSymbol)
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
              status: Lithic::Models::FinancialAccount::Status::TaggedSymbol,
              type: Lithic::Models::FinancialAccount::Type::TaggedSymbol,
              updated: Time,
              account_number: T.nilable(String),
              routing_number: T.nilable(String),
              status_change_reason: T.nilable(Lithic::Models::FinancialAccount::StatusChangeReason::TaggedSymbol)
            }
          )
      end
      def to_hash
      end

      class CreditConfiguration < Lithic::BaseModel
        # Reason for the financial account being marked as Charged Off
        sig { returns(T.nilable(Lithic::Models::FinancialAccount::CreditConfiguration::ChargedOffReason::TaggedSymbol)) }
        def charged_off_reason
        end

        sig do
          params(
            _: T.nilable(Lithic::Models::FinancialAccount::CreditConfiguration::ChargedOffReason::TaggedSymbol)
          )
            .returns(T.nilable(Lithic::Models::FinancialAccount::CreditConfiguration::ChargedOffReason::TaggedSymbol))
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
            T.nilable(Lithic::Models::FinancialAccount::CreditConfiguration::FinancialAccountState::TaggedSymbol)
          )
        end
        def financial_account_state
        end

        sig do
          params(
            _: T.nilable(Lithic::Models::FinancialAccount::CreditConfiguration::FinancialAccountState::TaggedSymbol)
          )
            .returns(
              T.nilable(Lithic::Models::FinancialAccount::CreditConfiguration::FinancialAccountState::TaggedSymbol)
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
            charged_off_reason: T.nilable(Lithic::Models::FinancialAccount::CreditConfiguration::ChargedOffReason::TaggedSymbol),
            credit_limit: T.nilable(Integer),
            credit_product_token: T.nilable(String),
            external_bank_account_token: T.nilable(String),
            financial_account_state: T.nilable(Lithic::Models::FinancialAccount::CreditConfiguration::FinancialAccountState::TaggedSymbol),
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

          class << self
            sig do
              override
                .returns(T::Array[Lithic::Models::FinancialAccount::CreditConfiguration::ChargedOffReason::TaggedSymbol])
            end
            def values
            end
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

          class << self
            sig do
              override
                .returns(
                  T::Array[Lithic::Models::FinancialAccount::CreditConfiguration::FinancialAccountState::TaggedSymbol]
                )
            end
            def values
            end
          end
        end
      end

      # Status of the financial account
      module Status
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccount::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::FinancialAccount::Status::TaggedSymbol) }

        OPEN = T.let(:OPEN, Lithic::Models::FinancialAccount::Status::TaggedSymbol)
        CLOSED = T.let(:CLOSED, Lithic::Models::FinancialAccount::Status::TaggedSymbol)
        SUSPENDED = T.let(:SUSPENDED, Lithic::Models::FinancialAccount::Status::TaggedSymbol)
        PENDING = T.let(:PENDING, Lithic::Models::FinancialAccount::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::FinancialAccount::Status::TaggedSymbol]) }
          def values
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
        CHARGED_OFF_FEES = T.let(:CHARGED_OFF_FEES, Lithic::Models::FinancialAccount::Type::TaggedSymbol)
        CHARGED_OFF_INTEREST = T.let(:CHARGED_OFF_INTEREST, Lithic::Models::FinancialAccount::Type::TaggedSymbol)
        CHARGED_OFF_PRINCIPAL =
          T.let(:CHARGED_OFF_PRINCIPAL, Lithic::Models::FinancialAccount::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::FinancialAccount::Type::TaggedSymbol]) }
          def values
          end
        end
      end

      # Reason for the financial account status change
      module StatusChangeReason
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccount::StatusChangeReason) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::FinancialAccount::StatusChangeReason::TaggedSymbol) }

        CHARGED_OFF_DELINQUENT =
          T.let(:CHARGED_OFF_DELINQUENT, Lithic::Models::FinancialAccount::StatusChangeReason::TaggedSymbol)
        CHARGED_OFF_FRAUD =
          T.let(:CHARGED_OFF_FRAUD, Lithic::Models::FinancialAccount::StatusChangeReason::TaggedSymbol)
        END_USER_REQUEST =
          T.let(:END_USER_REQUEST, Lithic::Models::FinancialAccount::StatusChangeReason::TaggedSymbol)
        BANK_REQUEST = T.let(:BANK_REQUEST, Lithic::Models::FinancialAccount::StatusChangeReason::TaggedSymbol)
        DELINQUENT = T.let(:DELINQUENT, Lithic::Models::FinancialAccount::StatusChangeReason::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::FinancialAccount::StatusChangeReason::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
