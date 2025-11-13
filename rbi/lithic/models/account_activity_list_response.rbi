# typed: strong

module Lithic
  module Models
    # Response containing multiple transaction types. The `family` field determines
    # which transaction type is returned: INTERNAL returns FinancialTransaction,
    # TRANSFER returns BookTransferTransaction, CARD returns CardTransaction, PAYMENT
    # returns PaymentTransaction, EXTERNAL_PAYMENT returns ExternalPaymentResponse,
    # and MANAGEMENT_OPERATION returns ManagementOperationTransaction
    module AccountActivityListResponse
      extend Lithic::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Lithic::Models::AccountActivityListResponse::Internal,
            Lithic::BookTransferResponse,
            Lithic::Models::AccountActivityListResponse::Card,
            Lithic::Payment,
            Lithic::ExternalPayment,
            Lithic::ManagementOperationTransaction
          )
        end

      class Internal < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::AccountActivityListResponse::Internal,
              Lithic::Internal::AnyHash
            )
          end

        # Unique identifier for the transaction
        sig { returns(String) }
        attr_accessor :token

        # Transaction category
        sig do
          returns(
            Lithic::Models::AccountActivityListResponse::Internal::Category::TaggedSymbol
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
            Lithic::Models::AccountActivityListResponse::Internal::Result::TaggedSymbol
          )
        end
        attr_accessor :result

        # Settled amount in cents
        sig { returns(Integer) }
        attr_accessor :settled_amount

        # The status of the transaction
        sig do
          returns(
            Lithic::Models::AccountActivityListResponse::Internal::Status::TaggedSymbol
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
              Lithic::Models::AccountActivityListResponse::Internal::Category::OrSymbol,
            created: Time,
            currency: String,
            descriptor: String,
            events: T::Array[Lithic::FinancialEvent::OrHash],
            financial_account_token: String,
            pending_amount: Integer,
            result:
              Lithic::Models::AccountActivityListResponse::Internal::Result::OrSymbol,
            settled_amount: Integer,
            status:
              Lithic::Models::AccountActivityListResponse::Internal::Status::OrSymbol,
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
                Lithic::Models::AccountActivityListResponse::Internal::Category::TaggedSymbol,
              created: Time,
              currency: String,
              descriptor: String,
              events: T::Array[Lithic::FinancialEvent],
              family: Symbol,
              financial_account_token: String,
              pending_amount: Integer,
              result:
                Lithic::Models::AccountActivityListResponse::Internal::Result::TaggedSymbol,
              settled_amount: Integer,
              status:
                Lithic::Models::AccountActivityListResponse::Internal::Status::TaggedSymbol,
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
                Lithic::Models::AccountActivityListResponse::Internal::Category
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH =
            T.let(
              :ACH,
              Lithic::Models::AccountActivityListResponse::Internal::Category::TaggedSymbol
            )
          BALANCE_OR_FUNDING =
            T.let(
              :BALANCE_OR_FUNDING,
              Lithic::Models::AccountActivityListResponse::Internal::Category::TaggedSymbol
            )
          FEE =
            T.let(
              :FEE,
              Lithic::Models::AccountActivityListResponse::Internal::Category::TaggedSymbol
            )
          REWARD =
            T.let(
              :REWARD,
              Lithic::Models::AccountActivityListResponse::Internal::Category::TaggedSymbol
            )
          ADJUSTMENT =
            T.let(
              :ADJUSTMENT,
              Lithic::Models::AccountActivityListResponse::Internal::Category::TaggedSymbol
            )
          DERECOGNITION =
            T.let(
              :DERECOGNITION,
              Lithic::Models::AccountActivityListResponse::Internal::Category::TaggedSymbol
            )
          DISPUTE =
            T.let(
              :DISPUTE,
              Lithic::Models::AccountActivityListResponse::Internal::Category::TaggedSymbol
            )
          CARD =
            T.let(
              :CARD,
              Lithic::Models::AccountActivityListResponse::Internal::Category::TaggedSymbol
            )
          EXTERNAL_ACH =
            T.let(
              :EXTERNAL_ACH,
              Lithic::Models::AccountActivityListResponse::Internal::Category::TaggedSymbol
            )
          EXTERNAL_CHECK =
            T.let(
              :EXTERNAL_CHECK,
              Lithic::Models::AccountActivityListResponse::Internal::Category::TaggedSymbol
            )
          EXTERNAL_TRANSFER =
            T.let(
              :EXTERNAL_TRANSFER,
              Lithic::Models::AccountActivityListResponse::Internal::Category::TaggedSymbol
            )
          EXTERNAL_WIRE =
            T.let(
              :EXTERNAL_WIRE,
              Lithic::Models::AccountActivityListResponse::Internal::Category::TaggedSymbol
            )
          MANAGEMENT_ADJUSTMENT =
            T.let(
              :MANAGEMENT_ADJUSTMENT,
              Lithic::Models::AccountActivityListResponse::Internal::Category::TaggedSymbol
            )
          MANAGEMENT_DISPUTE =
            T.let(
              :MANAGEMENT_DISPUTE,
              Lithic::Models::AccountActivityListResponse::Internal::Category::TaggedSymbol
            )
          MANAGEMENT_FEE =
            T.let(
              :MANAGEMENT_FEE,
              Lithic::Models::AccountActivityListResponse::Internal::Category::TaggedSymbol
            )
          MANAGEMENT_REWARD =
            T.let(
              :MANAGEMENT_REWARD,
              Lithic::Models::AccountActivityListResponse::Internal::Category::TaggedSymbol
            )
          MANAGEMENT_DISBURSEMENT =
            T.let(
              :MANAGEMENT_DISBURSEMENT,
              Lithic::Models::AccountActivityListResponse::Internal::Category::TaggedSymbol
            )
          PROGRAM_FUNDING =
            T.let(
              :PROGRAM_FUNDING,
              Lithic::Models::AccountActivityListResponse::Internal::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityListResponse::Internal::Category::TaggedSymbol
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
                Lithic::Models::AccountActivityListResponse::Internal::Result
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(
              :APPROVED,
              Lithic::Models::AccountActivityListResponse::Internal::Result::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::Models::AccountActivityListResponse::Internal::Result::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityListResponse::Internal::Result::TaggedSymbol
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
                Lithic::Models::AccountActivityListResponse::Internal::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              Lithic::Models::AccountActivityListResponse::Internal::Status::TaggedSymbol
            )
          SETTLED =
            T.let(
              :SETTLED,
              Lithic::Models::AccountActivityListResponse::Internal::Status::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::Models::AccountActivityListResponse::Internal::Status::TaggedSymbol
            )
          REVERSED =
            T.let(
              :REVERSED,
              Lithic::Models::AccountActivityListResponse::Internal::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :CANCELED,
              Lithic::Models::AccountActivityListResponse::Internal::Status::TaggedSymbol
            )
          RETURNED =
            T.let(
              :RETURNED,
              Lithic::Models::AccountActivityListResponse::Internal::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityListResponse::Internal::Status::TaggedSymbol
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
              Lithic::Models::AccountActivityListResponse::Card,
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
            Lithic::Models::AccountActivityListResponse::Card::Status::TaggedSymbol
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
              Lithic::Models::AccountActivityListResponse::Card::Status::OrSymbol,
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
                Lithic::Models::AccountActivityListResponse::Card::Status::TaggedSymbol,
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
                Lithic::Models::AccountActivityListResponse::Card::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              Lithic::Models::AccountActivityListResponse::Card::Status::TaggedSymbol
            )
          SETTLED =
            T.let(
              :SETTLED,
              Lithic::Models::AccountActivityListResponse::Card::Status::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::Models::AccountActivityListResponse::Card::Status::TaggedSymbol
            )
          REVERSED =
            T.let(
              :REVERSED,
              Lithic::Models::AccountActivityListResponse::Card::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :CANCELED,
              Lithic::Models::AccountActivityListResponse::Card::Status::TaggedSymbol
            )
          RETURNED =
            T.let(
              :RETURNED,
              Lithic::Models::AccountActivityListResponse::Card::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityListResponse::Card::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      sig do
        override.returns(
          T::Array[Lithic::Models::AccountActivityListResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
