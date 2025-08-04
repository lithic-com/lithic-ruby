# typed: strong

module Lithic
  module Models
    # Response containing multiple transaction types
    module AccountActivityRetrieveTransactionResponse
      extend Lithic::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction,
            Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction,
            Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction,
            Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction,
            Lithic::ExternalPayment,
            Lithic::ManagementOperationTransaction
          )
        end

      class FinancialTransaction < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction,
              Lithic::Internal::AnyHash
            )
          end

        # Unique identifier for the transaction
        sig { returns(String) }
        attr_accessor :token

        # Transaction category
        sig do
          returns(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category::TaggedSymbol
          )
        end
        attr_accessor :category

        # ISO 8601 timestamp of when the transaction was created
        sig { returns(Time) }
        attr_accessor :created

        # Currency of the transaction, represented in ISO 4217 format
        sig { returns(String) }
        attr_accessor :currency

        # Transaction descriptor
        sig { returns(String) }
        attr_accessor :descriptor

        # List of transaction events
        sig { returns(T::Array[T.anything]) }
        attr_accessor :events

        sig do
          returns(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Family::TaggedSymbol
          )
        end
        attr_accessor :family

        # Financial account token associated with the transaction
        sig { returns(String) }
        attr_accessor :financial_account_token

        # Pending amount in cents
        sig { returns(Integer) }
        attr_accessor :pending_amount

        # Transaction result
        sig do
          returns(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Result::TaggedSymbol
          )
        end
        attr_accessor :result

        # Settled amount in cents
        sig { returns(Integer) }
        attr_accessor :settled_amount

        # The status of the transaction
        sig do
          returns(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # ISO 8601 timestamp of when the transaction was last updated
        sig { returns(Time) }
        attr_accessor :updated

        # Financial transaction with inheritance from unified base transaction
        sig do
          params(
            token: String,
            category:
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category::OrSymbol,
            created: Time,
            currency: String,
            descriptor: String,
            events: T::Array[T.anything],
            family:
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Family::OrSymbol,
            financial_account_token: String,
            pending_amount: Integer,
            result:
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Result::OrSymbol,
            settled_amount: Integer,
            status:
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Status::OrSymbol,
            updated: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the transaction
          token:,
          # Transaction category
          category:,
          # ISO 8601 timestamp of when the transaction was created
          created:,
          # Currency of the transaction, represented in ISO 4217 format
          currency:,
          # Transaction descriptor
          descriptor:,
          # List of transaction events
          events:,
          family:,
          # Financial account token associated with the transaction
          financial_account_token:,
          # Pending amount in cents
          pending_amount:,
          # Transaction result
          result:,
          # Settled amount in cents
          settled_amount:,
          # The status of the transaction
          status:,
          # ISO 8601 timestamp of when the transaction was last updated
          updated:
        )
        end

        sig do
          override.returns(
            {
              token: String,
              category:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category::TaggedSymbol,
              created: Time,
              currency: String,
              descriptor: String,
              events: T::Array[T.anything],
              family:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Family::TaggedSymbol,
              financial_account_token: String,
              pending_amount: Integer,
              result:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Result::TaggedSymbol,
              settled_amount: Integer,
              status:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Status::TaggedSymbol,
              updated: Time
            }
          )
        end
        def to_hash
        end

        # Transaction category
        module Category
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH =
            T.let(
              :ACH,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category::TaggedSymbol
            )
          BALANCE_OR_FUNDING =
            T.let(
              :BALANCE_OR_FUNDING,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category::TaggedSymbol
            )
          CARD =
            T.let(
              :CARD,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category::TaggedSymbol
            )
          EXTERNAL_ACH =
            T.let(
              :EXTERNAL_ACH,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category::TaggedSymbol
            )
          EXTERNAL_CHECK =
            T.let(
              :EXTERNAL_CHECK,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category::TaggedSymbol
            )
          EXTERNAL_TRANSFER =
            T.let(
              :EXTERNAL_TRANSFER,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category::TaggedSymbol
            )
          EXTERNAL_WIRE =
            T.let(
              :EXTERNAL_WIRE,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_ADJUSTMENT =
            T.let(
              :MANAGEMENT_ADJUSTMENT,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_DISPUTE =
            T.let(
              :MANAGEMENT_DISPUTE,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_FEE =
            T.let(
              :MANAGEMENT_FEE,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_REWARD =
            T.let(
              :MANAGEMENT_REWARD,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_DISBURSEMENT =
            T.let(
              :MANAGEMENT_DISBURSEMENT,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category::TaggedSymbol
            )
          PROGRAM_FUNDING =
            T.let(
              :PROGRAM_FUNDING,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Family
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Family
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CARD =
            T.let(
              :CARD,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Family::TaggedSymbol
            )
          PAYMENT =
            T.let(
              :PAYMENT,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Family::TaggedSymbol
            )
          TRANSFER =
            T.let(
              :TRANSFER,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Family::TaggedSymbol
            )
          INTERNAL =
            T.let(
              :INTERNAL,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Family::TaggedSymbol
            )
          EXTERNAL_PAYMENT =
            T.let(
              :EXTERNAL_PAYMENT,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Family::TaggedSymbol
            )
          MANAGEMENT_OPERATION =
            T.let(
              :MANAGEMENT_OPERATION,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Family::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Family::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Transaction result
        module Result
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Result
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(
              :APPROVED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Result::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Result::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Result::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The status of the transaction
        module Status
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Status::TaggedSymbol
            )
          SETTLED =
            T.let(
              :SETTLED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Status::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Status::TaggedSymbol
            )
          REVERSED =
            T.let(
              :REVERSED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :CANCELED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class BookTransferTransaction < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction,
              Lithic::Internal::AnyHash
            )
          end

        # Unique identifier for the transaction
        sig { returns(String) }
        attr_accessor :token

        sig do
          returns(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category::TaggedSymbol
          )
        end
        attr_accessor :category

        # ISO 8601 timestamp of when the transaction was created
        sig { returns(Time) }
        attr_accessor :created

        # Currency of the transaction in ISO 4217 format
        sig { returns(String) }
        attr_accessor :currency

        # List of events associated with this book transfer
        sig { returns(T::Array[T.anything]) }
        attr_accessor :events

        sig do
          returns(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Family::TaggedSymbol
          )
        end
        attr_accessor :family

        # Source account token
        sig { returns(String) }
        attr_accessor :from_financial_account_token

        # The pending amount of the transaction in cents
        sig { returns(Integer) }
        attr_accessor :pending_amount

        sig do
          returns(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Result::TaggedSymbol
          )
        end
        attr_accessor :result

        # The settled amount of the transaction in cents
        sig { returns(Integer) }
        attr_accessor :settled_amount

        # The status of the transaction
        sig do
          returns(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # Destination account token
        sig { returns(String) }
        attr_accessor :to_financial_account_token

        # ISO 8601 timestamp of when the transaction was last updated
        sig { returns(Time) }
        attr_accessor :updated

        # External identifier for the transaction
        sig { returns(T.nilable(String)) }
        attr_reader :external_id

        sig { params(external_id: String).void }
        attr_writer :external_id

        # External resource associated with the management operation
        sig { returns(T.nilable(Lithic::ExternalResource)) }
        attr_reader :external_resource

        sig do
          params(
            external_resource: T.nilable(Lithic::ExternalResource::OrHash)
          ).void
        end
        attr_writer :external_resource

        sig do
          returns(
            T.nilable(
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::TransactionSeries
            )
          )
        end
        attr_reader :transaction_series

        sig do
          params(
            transaction_series:
              T.nilable(
                Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::TransactionSeries::OrHash
              )
          ).void
        end
        attr_writer :transaction_series

        # Book transfer transaction
        sig do
          params(
            token: String,
            category:
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category::OrSymbol,
            created: Time,
            currency: String,
            events: T::Array[T.anything],
            family:
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Family::OrSymbol,
            from_financial_account_token: String,
            pending_amount: Integer,
            result:
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Result::OrSymbol,
            settled_amount: Integer,
            status:
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Status::OrSymbol,
            to_financial_account_token: String,
            updated: Time,
            external_id: String,
            external_resource: T.nilable(Lithic::ExternalResource::OrHash),
            transaction_series:
              T.nilable(
                Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::TransactionSeries::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the transaction
          token:,
          category:,
          # ISO 8601 timestamp of when the transaction was created
          created:,
          # Currency of the transaction in ISO 4217 format
          currency:,
          # List of events associated with this book transfer
          events:,
          family:,
          # Source account token
          from_financial_account_token:,
          # The pending amount of the transaction in cents
          pending_amount:,
          result:,
          # The settled amount of the transaction in cents
          settled_amount:,
          # The status of the transaction
          status:,
          # Destination account token
          to_financial_account_token:,
          # ISO 8601 timestamp of when the transaction was last updated
          updated:,
          # External identifier for the transaction
          external_id: nil,
          # External resource associated with the management operation
          external_resource: nil,
          transaction_series: nil
        )
        end

        sig do
          override.returns(
            {
              token: String,
              category:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category::TaggedSymbol,
              created: Time,
              currency: String,
              events: T::Array[T.anything],
              family:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Family::TaggedSymbol,
              from_financial_account_token: String,
              pending_amount: Integer,
              result:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Result::TaggedSymbol,
              settled_amount: Integer,
              status:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Status::TaggedSymbol,
              to_financial_account_token: String,
              updated: Time,
              external_id: String,
              external_resource: T.nilable(Lithic::ExternalResource),
              transaction_series:
                T.nilable(
                  Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::TransactionSeries
                )
            }
          )
        end
        def to_hash
        end

        module Category
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH =
            T.let(
              :ACH,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          BALANCE_OR_FUNDING =
            T.let(
              :BALANCE_OR_FUNDING,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          CARD =
            T.let(
              :CARD,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          EXTERNAL_ACH =
            T.let(
              :EXTERNAL_ACH,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          EXTERNAL_CHECK =
            T.let(
              :EXTERNAL_CHECK,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          EXTERNAL_TRANSFER =
            T.let(
              :EXTERNAL_TRANSFER,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          EXTERNAL_WIRE =
            T.let(
              :EXTERNAL_WIRE,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_ADJUSTMENT =
            T.let(
              :MANAGEMENT_ADJUSTMENT,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_DISPUTE =
            T.let(
              :MANAGEMENT_DISPUTE,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_FEE =
            T.let(
              :MANAGEMENT_FEE,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_REWARD =
            T.let(
              :MANAGEMENT_REWARD,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_DISBURSEMENT =
            T.let(
              :MANAGEMENT_DISBURSEMENT,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          PROGRAM_FUNDING =
            T.let(
              :PROGRAM_FUNDING,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Family
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Family
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CARD =
            T.let(
              :CARD,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Family::TaggedSymbol
            )
          PAYMENT =
            T.let(
              :PAYMENT,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Family::TaggedSymbol
            )
          TRANSFER =
            T.let(
              :TRANSFER,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Family::TaggedSymbol
            )
          INTERNAL =
            T.let(
              :INTERNAL,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Family::TaggedSymbol
            )
          EXTERNAL_PAYMENT =
            T.let(
              :EXTERNAL_PAYMENT,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Family::TaggedSymbol
            )
          MANAGEMENT_OPERATION =
            T.let(
              :MANAGEMENT_OPERATION,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Family::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Family::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Result
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Result
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(
              :APPROVED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Result::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Result::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Result::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The status of the transaction
        module Status
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Status::TaggedSymbol
            )
          SETTLED =
            T.let(
              :SETTLED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Status::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Status::TaggedSymbol
            )
          REVERSED =
            T.let(
              :REVERSED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :CANCELED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class TransactionSeries < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::TransactionSeries,
                Lithic::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_accessor :related_transaction_event_token

          sig { returns(T.nilable(String)) }
          attr_accessor :related_transaction_token

          sig { returns(String) }
          attr_accessor :type

          sig do
            params(
              related_transaction_event_token: T.nilable(String),
              related_transaction_token: T.nilable(String),
              type: String
            ).returns(T.attached_class)
          end
          def self.new(
            related_transaction_event_token:,
            related_transaction_token:,
            type:
          )
          end

          sig do
            override.returns(
              {
                related_transaction_event_token: T.nilable(String),
                related_transaction_token: T.nilable(String),
                type: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class CardTransaction < Lithic::Models::Transaction
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction,
              Lithic::Internal::AnyHash
            )
          end

        # Unique identifier for the transaction
        sig { returns(String) }
        attr_accessor :token

        # ISO 8601 timestamp of when the transaction was created
        sig { returns(Time) }
        attr_accessor :created

        sig do
          returns(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Family::TaggedSymbol
          )
        end
        attr_accessor :family

        # The status of the transaction
        sig do
          returns(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # ISO 8601 timestamp of when the transaction was last updated
        sig { returns(Time) }
        attr_accessor :updated

        # Base class for all transaction types in the ledger service
        sig do
          params(
            token: String,
            created: Time,
            family:
              Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Family::OrSymbol,
            status:
              Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Status::OrSymbol,
            updated: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the transaction
          token:,
          # ISO 8601 timestamp of when the transaction was created
          created:,
          family:,
          # The status of the transaction
          status:,
          # ISO 8601 timestamp of when the transaction was last updated
          updated:
        )
        end

        sig do
          override.returns(
            {
              token: String,
              created: Time,
              family:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Family::TaggedSymbol,
              status:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Status::TaggedSymbol,
              updated: Time
            }
          )
        end
        def to_hash
        end

        module Family
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Family
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CARD =
            T.let(
              :CARD,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Family::TaggedSymbol
            )
          PAYMENT =
            T.let(
              :PAYMENT,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Family::TaggedSymbol
            )
          TRANSFER =
            T.let(
              :TRANSFER,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Family::TaggedSymbol
            )
          INTERNAL =
            T.let(
              :INTERNAL,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Family::TaggedSymbol
            )
          EXTERNAL_PAYMENT =
            T.let(
              :EXTERNAL_PAYMENT,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Family::TaggedSymbol
            )
          MANAGEMENT_OPERATION =
            T.let(
              :MANAGEMENT_OPERATION,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Family::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Family::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The status of the transaction
        module Status
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Status::TaggedSymbol
            )
          SETTLED =
            T.let(
              :SETTLED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Status::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Status::TaggedSymbol
            )
          REVERSED =
            T.let(
              :REVERSED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :CANCELED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class PaymentTransaction < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction,
              Lithic::Internal::AnyHash
            )
          end

        # Unique identifier for the transaction
        sig { returns(String) }
        attr_accessor :token

        # Transaction category
        sig do
          returns(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category::TaggedSymbol
          )
        end
        attr_accessor :category

        # ISO 8601 timestamp of when the transaction was created
        sig { returns(Time) }
        attr_accessor :created

        # Transaction descriptor
        sig { returns(String) }
        attr_accessor :descriptor

        # Transfer direction
        sig do
          returns(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Direction::TaggedSymbol
          )
        end
        attr_accessor :direction

        # List of transaction events
        sig { returns(T::Array[T.anything]) }
        attr_accessor :events

        sig do
          returns(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Family::TaggedSymbol
          )
        end
        attr_accessor :family

        # Financial account token
        sig { returns(String) }
        attr_accessor :financial_account_token

        # Transfer method
        sig do
          returns(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Method::TaggedSymbol
          )
        end
        attr_accessor :method_

        # Method-specific attributes
        sig do
          returns(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::Variants
          )
        end
        attr_accessor :method_attributes

        # Pending amount in cents
        sig { returns(Integer) }
        attr_accessor :pending_amount

        # Related account tokens for the transaction
        sig do
          returns(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::RelatedAccountTokens
          )
        end
        attr_reader :related_account_tokens

        sig do
          params(
            related_account_tokens:
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::RelatedAccountTokens::OrHash
          ).void
        end
        attr_writer :related_account_tokens

        # Transaction result
        sig do
          returns(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Result::TaggedSymbol
          )
        end
        attr_accessor :result

        # Settled amount in cents
        sig { returns(Integer) }
        attr_accessor :settled_amount

        # Transaction source
        sig do
          returns(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Source::TaggedSymbol
          )
        end
        attr_accessor :source

        # The status of the transaction
        sig do
          returns(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # ISO 8601 timestamp of when the transaction was last updated
        sig { returns(Time) }
        attr_accessor :updated

        # Currency of the transaction in ISO 4217 format
        sig { returns(T.nilable(String)) }
        attr_reader :currency

        sig { params(currency: String).void }
        attr_writer :currency

        # Expected release date for the transaction
        sig { returns(T.nilable(Date)) }
        attr_accessor :expected_release_date

        # External bank account token
        sig { returns(T.nilable(String)) }
        attr_accessor :external_bank_account_token

        # User-defined identifier
        sig { returns(T.nilable(String)) }
        attr_accessor :user_defined_id

        # Payment transaction
        sig do
          params(
            token: String,
            category:
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category::OrSymbol,
            created: Time,
            descriptor: String,
            direction:
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Direction::OrSymbol,
            events: T::Array[T.anything],
            family:
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Family::OrSymbol,
            financial_account_token: String,
            method_:
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Method::OrSymbol,
            method_attributes:
              T.any(
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::OrHash,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes::OrHash
              ),
            pending_amount: Integer,
            related_account_tokens:
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::RelatedAccountTokens::OrHash,
            result:
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Result::OrSymbol,
            settled_amount: Integer,
            source:
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Source::OrSymbol,
            status:
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Status::OrSymbol,
            updated: Time,
            currency: String,
            expected_release_date: T.nilable(Date),
            external_bank_account_token: T.nilable(String),
            user_defined_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the transaction
          token:,
          # Transaction category
          category:,
          # ISO 8601 timestamp of when the transaction was created
          created:,
          # Transaction descriptor
          descriptor:,
          # Transfer direction
          direction:,
          # List of transaction events
          events:,
          family:,
          # Financial account token
          financial_account_token:,
          # Transfer method
          method_:,
          # Method-specific attributes
          method_attributes:,
          # Pending amount in cents
          pending_amount:,
          # Related account tokens for the transaction
          related_account_tokens:,
          # Transaction result
          result:,
          # Settled amount in cents
          settled_amount:,
          # Transaction source
          source:,
          # The status of the transaction
          status:,
          # ISO 8601 timestamp of when the transaction was last updated
          updated:,
          # Currency of the transaction in ISO 4217 format
          currency: nil,
          # Expected release date for the transaction
          expected_release_date: nil,
          # External bank account token
          external_bank_account_token: nil,
          # User-defined identifier
          user_defined_id: nil
        )
        end

        sig do
          override.returns(
            {
              token: String,
              category:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category::TaggedSymbol,
              created: Time,
              descriptor: String,
              direction:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Direction::TaggedSymbol,
              events: T::Array[T.anything],
              family:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Family::TaggedSymbol,
              financial_account_token: String,
              method_:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Method::TaggedSymbol,
              method_attributes:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::Variants,
              pending_amount: Integer,
              related_account_tokens:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::RelatedAccountTokens,
              result:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Result::TaggedSymbol,
              settled_amount: Integer,
              source:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Source::TaggedSymbol,
              status:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Status::TaggedSymbol,
              updated: Time,
              currency: String,
              expected_release_date: T.nilable(Date),
              external_bank_account_token: T.nilable(String),
              user_defined_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # Transaction category
        module Category
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH =
            T.let(
              :ACH,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category::TaggedSymbol
            )
          BALANCE_OR_FUNDING =
            T.let(
              :BALANCE_OR_FUNDING,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category::TaggedSymbol
            )
          CARD =
            T.let(
              :CARD,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category::TaggedSymbol
            )
          EXTERNAL_ACH =
            T.let(
              :EXTERNAL_ACH,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category::TaggedSymbol
            )
          EXTERNAL_CHECK =
            T.let(
              :EXTERNAL_CHECK,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category::TaggedSymbol
            )
          EXTERNAL_TRANSFER =
            T.let(
              :EXTERNAL_TRANSFER,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category::TaggedSymbol
            )
          EXTERNAL_WIRE =
            T.let(
              :EXTERNAL_WIRE,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_ADJUSTMENT =
            T.let(
              :MANAGEMENT_ADJUSTMENT,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_DISPUTE =
            T.let(
              :MANAGEMENT_DISPUTE,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_FEE =
            T.let(
              :MANAGEMENT_FEE,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_REWARD =
            T.let(
              :MANAGEMENT_REWARD,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_DISBURSEMENT =
            T.let(
              :MANAGEMENT_DISBURSEMENT,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category::TaggedSymbol
            )
          PROGRAM_FUNDING =
            T.let(
              :PROGRAM_FUNDING,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Transfer direction
        module Direction
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Direction
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREDIT =
            T.let(
              :CREDIT,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Direction::TaggedSymbol
            )
          DEBIT =
            T.let(
              :DEBIT,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Direction::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Direction::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Family
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Family
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CARD =
            T.let(
              :CARD,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Family::TaggedSymbol
            )
          PAYMENT =
            T.let(
              :PAYMENT,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Family::TaggedSymbol
            )
          TRANSFER =
            T.let(
              :TRANSFER,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Family::TaggedSymbol
            )
          INTERNAL =
            T.let(
              :INTERNAL,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Family::TaggedSymbol
            )
          EXTERNAL_PAYMENT =
            T.let(
              :EXTERNAL_PAYMENT,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Family::TaggedSymbol
            )
          MANAGEMENT_OPERATION =
            T.let(
              :MANAGEMENT_OPERATION,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Family::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Family::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Transfer method
        module Method
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Method
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH_NEXT_DAY =
            T.let(
              :ACH_NEXT_DAY,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Method::TaggedSymbol
            )
          ACH_SAME_DAY =
            T.let(
              :ACH_SAME_DAY,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Method::TaggedSymbol
            )
          WIRE =
            T.let(
              :WIRE,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Method::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Method::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Method-specific attributes
        module MethodAttributes
          extend Lithic::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes
              )
            end

          class ACHMethodAttributes < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes,
                  Lithic::Internal::AnyHash
                )
              end

            # SEC code for ACH transaction
            sig do
              returns(
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
              )
            end
            attr_accessor :sec_code

            # Addenda information
            sig { returns(T.nilable(String)) }
            attr_accessor :addenda

            # Company ID for the ACH transaction
            sig { returns(T.nilable(String)) }
            attr_accessor :company_id

            # Receipt routing number
            sig { returns(T.nilable(String)) }
            attr_accessor :receipt_routing_number

            # Number of retries attempted
            sig { returns(T.nilable(Integer)) }
            attr_accessor :retries

            # Return reason code if the transaction was returned
            sig { returns(T.nilable(String)) }
            attr_accessor :return_reason_code

            # Trace numbers for the ACH transaction
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :trace_numbers

            sig { params(trace_numbers: T::Array[String]).void }
            attr_writer :trace_numbers

            sig do
              params(
                sec_code:
                  Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode::OrSymbol,
                addenda: T.nilable(String),
                company_id: T.nilable(String),
                receipt_routing_number: T.nilable(String),
                retries: T.nilable(Integer),
                return_reason_code: T.nilable(String),
                trace_numbers: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              # SEC code for ACH transaction
              sec_code:,
              # Addenda information
              addenda: nil,
              # Company ID for the ACH transaction
              company_id: nil,
              # Receipt routing number
              receipt_routing_number: nil,
              # Number of retries attempted
              retries: nil,
              # Return reason code if the transaction was returned
              return_reason_code: nil,
              # Trace numbers for the ACH transaction
              trace_numbers: nil
            )
            end

            sig do
              override.returns(
                {
                  sec_code:
                    Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol,
                  addenda: T.nilable(String),
                  company_id: T.nilable(String),
                  receipt_routing_number: T.nilable(String),
                  retries: T.nilable(Integer),
                  return_reason_code: T.nilable(String),
                  trace_numbers: T::Array[String]
                }
              )
            end
            def to_hash
            end

            # SEC code for ACH transaction
            module SecCode
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CCD =
                T.let(
                  :CCD,
                  Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
                )
              PPD =
                T.let(
                  :PPD,
                  Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
                )
              WEB =
                T.let(
                  :WEB,
                  Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
                )
              TEL =
                T.let(
                  :TEL,
                  Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
                )
              CIE =
                T.let(
                  :CIE,
                  Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
                )
              CTX =
                T.let(
                  :CTX,
                  Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class WireMethodAttributes < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes,
                  Lithic::Internal::AnyHash
                )
              end

            # Type of wire transfer
            sig do
              returns(
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes::WireTransferType::TaggedSymbol
              )
            end
            attr_accessor :wire_transfer_type

            # External bank name
            sig { returns(T.nilable(String)) }
            attr_accessor :external_bank_name

            # External bank routing number
            sig { returns(T.nilable(String)) }
            attr_accessor :external_bank_routing_number

            # External individual name
            sig { returns(T.nilable(String)) }
            attr_accessor :external_individual_name

            # Lithic bank name
            sig { returns(T.nilable(String)) }
            attr_accessor :lithic_bank_name

            # Lithic bank routing number
            sig { returns(T.nilable(String)) }
            attr_accessor :lithic_bank_routing_number

            # Lithic individual name
            sig { returns(T.nilable(String)) }
            attr_accessor :lithic_individual_name

            # UUID of previous transfer if this is a retry
            sig { returns(T.nilable(String)) }
            attr_accessor :previous_transfer

            sig do
              params(
                wire_transfer_type:
                  Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes::WireTransferType::OrSymbol,
                external_bank_name: T.nilable(String),
                external_bank_routing_number: T.nilable(String),
                external_individual_name: T.nilable(String),
                lithic_bank_name: T.nilable(String),
                lithic_bank_routing_number: T.nilable(String),
                lithic_individual_name: T.nilable(String),
                previous_transfer: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Type of wire transfer
              wire_transfer_type:,
              # External bank name
              external_bank_name: nil,
              # External bank routing number
              external_bank_routing_number: nil,
              # External individual name
              external_individual_name: nil,
              # Lithic bank name
              lithic_bank_name: nil,
              # Lithic bank routing number
              lithic_bank_routing_number: nil,
              # Lithic individual name
              lithic_individual_name: nil,
              # UUID of previous transfer if this is a retry
              previous_transfer: nil
            )
            end

            sig do
              override.returns(
                {
                  wire_transfer_type:
                    Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes::WireTransferType::TaggedSymbol,
                  external_bank_name: T.nilable(String),
                  external_bank_routing_number: T.nilable(String),
                  external_individual_name: T.nilable(String),
                  lithic_bank_name: T.nilable(String),
                  lithic_bank_routing_number: T.nilable(String),
                  lithic_individual_name: T.nilable(String),
                  previous_transfer: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # Type of wire transfer
            module WireTransferType
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes::WireTransferType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FEDWIRE =
                T.let(
                  :FEDWIRE,
                  Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes::WireTransferType::TaggedSymbol
                )
              SWIFT =
                T.let(
                  :SWIFT,
                  Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes::WireTransferType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes::WireTransferType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::Variants
              ]
            )
          end
          def self.variants
          end
        end

        class RelatedAccountTokens < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::RelatedAccountTokens,
                Lithic::Internal::AnyHash
              )
            end

          # Globally unique identifier for the account
          sig { returns(T.nilable(String)) }
          attr_accessor :account_token

          # Globally unique identifier for the business account
          sig { returns(T.nilable(String)) }
          attr_accessor :business_account_token

          # Related account tokens for the transaction
          sig do
            params(
              account_token: T.nilable(String),
              business_account_token: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Globally unique identifier for the account
            account_token:,
            # Globally unique identifier for the business account
            business_account_token:
          )
          end

          sig do
            override.returns(
              {
                account_token: T.nilable(String),
                business_account_token: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        # Transaction result
        module Result
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Result
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(
              :APPROVED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Result::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Result::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Result::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Transaction source
        module Source
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Source
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LITHIC =
            T.let(
              :LITHIC,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Source::TaggedSymbol
            )
          EXTERNAL =
            T.let(
              :EXTERNAL,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Source::TaggedSymbol
            )
          CUSTOMER =
            T.let(
              :CUSTOMER,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Source::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The status of the transaction
        module Status
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Status::TaggedSymbol
            )
          SETTLED =
            T.let(
              :SETTLED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Status::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Status::TaggedSymbol
            )
          REVERSED =
            T.let(
              :REVERSED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :CANCELED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      sig do
        override.returns(
          T::Array[
            Lithic::Models::AccountActivityRetrieveTransactionResponse::Variants
          ]
        )
      end
      def self.variants
      end
    end
  end
end
