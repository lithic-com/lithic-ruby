# typed: strong

module Lithic
  module Models
    class ManagementOperationCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Lithic::ManagementOperationCreateParams,
            Lithic::Internal::AnyHash
          )
        end

      sig { returns(Integer) }
      attr_accessor :amount

      sig do
        returns(Lithic::ManagementOperationCreateParams::Category::OrSymbol)
      end
      attr_accessor :category

      sig do
        returns(Lithic::ManagementOperationCreateParams::Direction::OrSymbol)
      end
      attr_accessor :direction

      sig { returns(Date) }
      attr_accessor :effective_date

      sig do
        returns(Lithic::ManagementOperationCreateParams::EventType::OrSymbol)
      end
      attr_accessor :event_type

      sig { returns(String) }
      attr_accessor :financial_account_token

      # Customer-provided token that will serve as an idempotency token. This token will
      # become the transaction token.
      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      sig { returns(T.nilable(String)) }
      attr_reader :memo

      sig { params(memo: String).void }
      attr_writer :memo

      # What to do if the financial account is closed when posting an operation
      sig do
        returns(
          T.nilable(
            Lithic::ManagementOperationCreateParams::OnClosedAccount::OrSymbol
          )
        )
      end
      attr_reader :on_closed_account

      sig do
        params(
          on_closed_account:
            Lithic::ManagementOperationCreateParams::OnClosedAccount::OrSymbol
        ).void
      end
      attr_writer :on_closed_account

      sig { returns(T.nilable(String)) }
      attr_reader :subtype

      sig { params(subtype: String).void }
      attr_writer :subtype

      sig { returns(T.nilable(String)) }
      attr_reader :user_defined_id

      sig { params(user_defined_id: String).void }
      attr_writer :user_defined_id

      sig do
        params(
          amount: Integer,
          category: Lithic::ManagementOperationCreateParams::Category::OrSymbol,
          direction:
            Lithic::ManagementOperationCreateParams::Direction::OrSymbol,
          effective_date: Date,
          event_type:
            Lithic::ManagementOperationCreateParams::EventType::OrSymbol,
          financial_account_token: String,
          token: String,
          memo: String,
          on_closed_account:
            Lithic::ManagementOperationCreateParams::OnClosedAccount::OrSymbol,
          subtype: String,
          user_defined_id: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        amount:,
        category:,
        direction:,
        effective_date:,
        event_type:,
        financial_account_token:,
        # Customer-provided token that will serve as an idempotency token. This token will
        # become the transaction token.
        token: nil,
        memo: nil,
        # What to do if the financial account is closed when posting an operation
        on_closed_account: nil,
        subtype: nil,
        user_defined_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount: Integer,
            category:
              Lithic::ManagementOperationCreateParams::Category::OrSymbol,
            direction:
              Lithic::ManagementOperationCreateParams::Direction::OrSymbol,
            effective_date: Date,
            event_type:
              Lithic::ManagementOperationCreateParams::EventType::OrSymbol,
            financial_account_token: String,
            token: String,
            memo: String,
            on_closed_account:
              Lithic::ManagementOperationCreateParams::OnClosedAccount::OrSymbol,
            subtype: String,
            user_defined_id: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Category
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::ManagementOperationCreateParams::Category)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MANAGEMENT_FEE =
          T.let(
            :MANAGEMENT_FEE,
            Lithic::ManagementOperationCreateParams::Category::TaggedSymbol
          )
        MANAGEMENT_DISPUTE =
          T.let(
            :MANAGEMENT_DISPUTE,
            Lithic::ManagementOperationCreateParams::Category::TaggedSymbol
          )
        MANAGEMENT_REWARD =
          T.let(
            :MANAGEMENT_REWARD,
            Lithic::ManagementOperationCreateParams::Category::TaggedSymbol
          )
        MANAGEMENT_ADJUSTMENT =
          T.let(
            :MANAGEMENT_ADJUSTMENT,
            Lithic::ManagementOperationCreateParams::Category::TaggedSymbol
          )
        MANAGEMENT_DISBURSEMENT =
          T.let(
            :MANAGEMENT_DISBURSEMENT,
            Lithic::ManagementOperationCreateParams::Category::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::ManagementOperationCreateParams::Category::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Direction
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::ManagementOperationCreateParams::Direction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT =
          T.let(
            :CREDIT,
            Lithic::ManagementOperationCreateParams::Direction::TaggedSymbol
          )
        DEBIT =
          T.let(
            :DEBIT,
            Lithic::ManagementOperationCreateParams::Direction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::ManagementOperationCreateParams::Direction::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module EventType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::ManagementOperationCreateParams::EventType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOSS_WRITE_OFF =
          T.let(
            :LOSS_WRITE_OFF,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        CASH_BACK =
          T.let(
            :CASH_BACK,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        CASH_BACK_REVERSAL =
          T.let(
            :CASH_BACK_REVERSAL,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        CURRENCY_CONVERSION =
          T.let(
            :CURRENCY_CONVERSION,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        CURRENCY_CONVERSION_REVERSAL =
          T.let(
            :CURRENCY_CONVERSION_REVERSAL,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        INTEREST =
          T.let(
            :INTEREST,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        INTEREST_REVERSAL =
          T.let(
            :INTEREST_REVERSAL,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        LATE_PAYMENT =
          T.let(
            :LATE_PAYMENT,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        LATE_PAYMENT_REVERSAL =
          T.let(
            :LATE_PAYMENT_REVERSAL,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        BILLING_ERROR =
          T.let(
            :BILLING_ERROR,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        BILLING_ERROR_REVERSAL =
          T.let(
            :BILLING_ERROR_REVERSAL,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        PROVISIONAL_CREDIT =
          T.let(
            :PROVISIONAL_CREDIT,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        PROVISIONAL_CREDIT_REVERSAL =
          T.let(
            :PROVISIONAL_CREDIT_REVERSAL,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        RETURNED_PAYMENT =
          T.let(
            :RETURNED_PAYMENT,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        RETURNED_PAYMENT_REVERSAL =
          T.let(
            :RETURNED_PAYMENT_REVERSAL,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        DISPUTE_WON =
          T.let(
            :DISPUTE_WON,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        DISPUTE_WON_REVERSAL =
          T.let(
            :DISPUTE_WON_REVERSAL,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        DISBURSE =
          T.let(
            :DISBURSE,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        DISBURSE_REVERSAL =
          T.let(
            :DISBURSE_REVERSAL,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        ANNUAL =
          T.let(
            :ANNUAL,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        ANNUAL_REVERSAL =
          T.let(
            :ANNUAL_REVERSAL,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        QUARTERLY =
          T.let(
            :QUARTERLY,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        QUARTERLY_REVERSAL =
          T.let(
            :QUARTERLY_REVERSAL,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        MONTHLY =
          T.let(
            :MONTHLY,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        MONTHLY_REVERSAL =
          T.let(
            :MONTHLY_REVERSAL,
            Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::ManagementOperationCreateParams::EventType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # What to do if the financial account is closed when posting an operation
      module OnClosedAccount
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::ManagementOperationCreateParams::OnClosedAccount
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FAIL =
          T.let(
            :FAIL,
            Lithic::ManagementOperationCreateParams::OnClosedAccount::TaggedSymbol
          )
        USE_SUSPENSE =
          T.let(
            :USE_SUSPENSE,
            Lithic::ManagementOperationCreateParams::OnClosedAccount::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::ManagementOperationCreateParams::OnClosedAccount::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
