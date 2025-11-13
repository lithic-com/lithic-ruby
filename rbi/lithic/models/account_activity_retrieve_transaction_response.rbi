# typed: strong

module Lithic
  module Models
    # Response containing multiple transaction types. The `family` field determines
    # which transaction type is returned: INTERNAL returns FinancialTransaction,
    # TRANSFER returns BookTransferTransaction, CARD returns CardTransaction, PAYMENT
    # returns PaymentTransaction, EXTERNAL_PAYMENT returns ExternalPaymentResponse,
    # and MANAGEMENT_OPERATION returns ManagementOperationTransaction
    module AccountActivityRetrieveTransactionResponse
      extend Lithic::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal,
            Lithic::BookTransferResponse,
            Lithic::Models::AccountActivityRetrieveTransactionResponse::Card,
            Lithic::Payment,
            Lithic::ExternalPayment,
            Lithic::ManagementOperationTransaction
          )
        end

      class Internal < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal,
              Lithic::Internal::AnyHash
            )
          end

        # Unique identifier for the transaction
        sig { returns(String) }
        attr_accessor :token

        # Transaction category
        sig do
          returns(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category::TaggedSymbol
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
        sig { returns(T::Array[Lithic::FinancialEvent]) }
        attr_accessor :events

        # INTERNAL - Financial Transaction
        sig { returns(Symbol) }
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
            Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Result::TaggedSymbol
          )
        end
        attr_accessor :result

        # Settled amount in cents
        sig { returns(Integer) }
        attr_accessor :settled_amount

        # The status of the transaction
        sig do
          returns(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Status::TaggedSymbol
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
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category::OrSymbol,
            created: Time,
            currency: String,
            descriptor: String,
            events: T::Array[Lithic::FinancialEvent::OrHash],
            financial_account_token: String,
            pending_amount: Integer,
            result:
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Result::OrSymbol,
            settled_amount: Integer,
            status:
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Status::OrSymbol,
            updated: Time,
            family: Symbol
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
          updated:,
          # INTERNAL - Financial Transaction
          family: :INTERNAL
        )
        end

        sig do
          override.returns(
            {
              token: String,
              category:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category::TaggedSymbol,
              created: Time,
              currency: String,
              descriptor: String,
              events: T::Array[Lithic::FinancialEvent],
              family: Symbol,
              financial_account_token: String,
              pending_amount: Integer,
              result:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Result::TaggedSymbol,
              settled_amount: Integer,
              status:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Status::TaggedSymbol,
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
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH =
            T.let(
              :ACH,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category::TaggedSymbol
            )
          BALANCE_OR_FUNDING =
            T.let(
              :BALANCE_OR_FUNDING,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category::TaggedSymbol
            )
          FEE =
            T.let(
              :FEE,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category::TaggedSymbol
            )
          REWARD =
            T.let(
              :REWARD,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category::TaggedSymbol
            )
          ADJUSTMENT =
            T.let(
              :ADJUSTMENT,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category::TaggedSymbol
            )
          DERECOGNITION =
            T.let(
              :DERECOGNITION,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category::TaggedSymbol
            )
          DISPUTE =
            T.let(
              :DISPUTE,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category::TaggedSymbol
            )
          CARD =
            T.let(
              :CARD,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category::TaggedSymbol
            )
          EXTERNAL_ACH =
            T.let(
              :EXTERNAL_ACH,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category::TaggedSymbol
            )
          EXTERNAL_CHECK =
            T.let(
              :EXTERNAL_CHECK,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category::TaggedSymbol
            )
          EXTERNAL_TRANSFER =
            T.let(
              :EXTERNAL_TRANSFER,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category::TaggedSymbol
            )
          EXTERNAL_WIRE =
            T.let(
              :EXTERNAL_WIRE,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category::TaggedSymbol
            )
          MANAGEMENT_ADJUSTMENT =
            T.let(
              :MANAGEMENT_ADJUSTMENT,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category::TaggedSymbol
            )
          MANAGEMENT_DISPUTE =
            T.let(
              :MANAGEMENT_DISPUTE,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category::TaggedSymbol
            )
          MANAGEMENT_FEE =
            T.let(
              :MANAGEMENT_FEE,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category::TaggedSymbol
            )
          MANAGEMENT_REWARD =
            T.let(
              :MANAGEMENT_REWARD,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category::TaggedSymbol
            )
          MANAGEMENT_DISBURSEMENT =
            T.let(
              :MANAGEMENT_DISBURSEMENT,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category::TaggedSymbol
            )
          PROGRAM_FUNDING =
            T.let(
              :PROGRAM_FUNDING,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category::TaggedSymbol
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
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Result
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(
              :APPROVED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Result::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Result::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Result::TaggedSymbol
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
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Status::TaggedSymbol
            )
          SETTLED =
            T.let(
              :SETTLED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Status::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Status::TaggedSymbol
            )
          REVERSED =
            T.let(
              :REVERSED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :CANCELED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Status::TaggedSymbol
            )
          RETURNED =
            T.let(
              :RETURNED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Card < Lithic::Models::Transaction
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Card,
              Lithic::Internal::AnyHash
            )
          end

        # Unique identifier for the transaction
        sig { returns(String) }
        attr_accessor :token

        # ISO 8601 timestamp of when the transaction was created
        sig { returns(Time) }
        attr_accessor :created

        # CARD - Card Transaction
        sig { returns(Symbol) }
        attr_accessor :family

        # The status of the transaction
        sig do
          returns(
            Lithic::Models::AccountActivityRetrieveTransactionResponse::Card::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # ISO 8601 timestamp of when the transaction was last updated
        sig { returns(Time) }
        attr_accessor :updated

        # Card transaction with ledger base properties
        sig do
          params(
            token: String,
            created: Time,
            status:
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Card::Status::OrSymbol,
            updated: Time,
            family: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the transaction
          token:,
          # ISO 8601 timestamp of when the transaction was created
          created:,
          # The status of the transaction
          status:,
          # ISO 8601 timestamp of when the transaction was last updated
          updated:,
          # CARD - Card Transaction
          family: :CARD
        )
        end

        sig do
          override.returns(
            {
              token: String,
              created: Time,
              family: Symbol,
              status:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Card::Status::TaggedSymbol,
              updated: Time
            }
          )
        end
        def to_hash
        end

        # The status of the transaction
        module Status
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Card::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Card::Status::TaggedSymbol
            )
          SETTLED =
            T.let(
              :SETTLED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Card::Status::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Card::Status::TaggedSymbol
            )
          REVERSED =
            T.let(
              :REVERSED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Card::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :CANCELED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Card::Status::TaggedSymbol
            )
          RETURNED =
            T.let(
              :RETURNED,
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Card::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Card::Status::TaggedSymbol
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
