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
        sig do
          returns(
            T::Array[
              Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event
            ]
          )
        end
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
            events:
              T::Array[
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::OrHash
              ],
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
              events:
                T::Array[
                  Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event
                ],
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

        class Event < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event,
                Lithic::Internal::AnyHash
              )
            end

          # Globally unique identifier.
          sig { returns(T.nilable(String)) }
          attr_reader :token

          sig { params(token: String).void }
          attr_writer :token

          # Amount of the financial event that has been settled in the currency's smallest
          # unit (e.g., cents).
          sig { returns(T.nilable(Integer)) }
          attr_reader :amount

          sig { params(amount: Integer).void }
          attr_writer :amount

          # Date and time when the financial event occurred. UTC time zone.
          sig { returns(T.nilable(Time)) }
          attr_reader :created

          sig { params(created: Time).void }
          attr_writer :created

          # APPROVED financial events were successful while DECLINED financial events were
          # declined by user, Lithic, or the network.
          sig do
            returns(
              T.nilable(
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Result::TaggedSymbol
              )
            )
          end
          attr_reader :result

          sig do
            params(
              result:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Result::OrSymbol
            ).void
          end
          attr_writer :result

          sig do
            returns(
              T.nilable(
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::OrSymbol
            ).void
          end
          attr_writer :type

          # Financial Event
          sig do
            params(
              token: String,
              amount: Integer,
              created: Time,
              result:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Result::OrSymbol,
              type:
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Globally unique identifier.
            token: nil,
            # Amount of the financial event that has been settled in the currency's smallest
            # unit (e.g., cents).
            amount: nil,
            # Date and time when the financial event occurred. UTC time zone.
            created: nil,
            # APPROVED financial events were successful while DECLINED financial events were
            # declined by user, Lithic, or the network.
            result: nil,
            type: nil
          )
          end

          sig do
            override.returns(
              {
                token: String,
                amount: Integer,
                created: Time,
                result:
                  Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Result::TaggedSymbol,
                type:
                  Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # APPROVED financial events were successful while DECLINED financial events were
          # declined by user, Lithic, or the network.
          module Result
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Result
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            APPROVED =
              T.let(
                :APPROVED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Result::TaggedSymbol
              )
            DECLINED =
              T.let(
                :DECLINED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Result::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Result::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Type
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACH_ORIGINATION_CANCELLED =
              T.let(
                :ACH_ORIGINATION_CANCELLED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            ACH_ORIGINATION_INITIATED =
              T.let(
                :ACH_ORIGINATION_INITIATED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            ACH_ORIGINATION_PROCESSED =
              T.let(
                :ACH_ORIGINATION_PROCESSED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            ACH_ORIGINATION_RELEASED =
              T.let(
                :ACH_ORIGINATION_RELEASED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            ACH_ORIGINATION_REJECTED =
              T.let(
                :ACH_ORIGINATION_REJECTED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            ACH_ORIGINATION_REVIEWED =
              T.let(
                :ACH_ORIGINATION_REVIEWED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            ACH_ORIGINATION_SETTLED =
              T.let(
                :ACH_ORIGINATION_SETTLED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            ACH_RECEIPT_PROCESSED =
              T.let(
                :ACH_RECEIPT_PROCESSED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            ACH_RECEIPT_RELEASED =
              T.let(
                :ACH_RECEIPT_RELEASED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            ACH_RECEIPT_SETTLED =
              T.let(
                :ACH_RECEIPT_SETTLED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            ACH_RETURN_INITIATED =
              T.let(
                :ACH_RETURN_INITIATED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            ACH_RETURN_PROCESSED =
              T.let(
                :ACH_RETURN_PROCESSED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            ACH_RETURN_REJECTED =
              T.let(
                :ACH_RETURN_REJECTED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            ACH_RETURN_SETTLED =
              T.let(
                :ACH_RETURN_SETTLED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            AUTHORIZATION =
              T.let(
                :AUTHORIZATION,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            AUTHORIZATION_ADVICE =
              T.let(
                :AUTHORIZATION_ADVICE,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            AUTHORIZATION_EXPIRY =
              T.let(
                :AUTHORIZATION_EXPIRY,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            AUTHORIZATION_REVERSAL =
              T.let(
                :AUTHORIZATION_REVERSAL,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            BALANCE_INQUIRY =
              T.let(
                :BALANCE_INQUIRY,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            BILLING_ERROR =
              T.let(
                :BILLING_ERROR,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            BILLING_ERROR_REVERSAL =
              T.let(
                :BILLING_ERROR_REVERSAL,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            CARD_TO_CARD =
              T.let(
                :CARD_TO_CARD,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            CASH_BACK =
              T.let(
                :CASH_BACK,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            CASH_BACK_REVERSAL =
              T.let(
                :CASH_BACK_REVERSAL,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            CLEARING =
              T.let(
                :CLEARING,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            COLLECTION =
              T.let(
                :COLLECTION,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            CORRECTION_CREDIT =
              T.let(
                :CORRECTION_CREDIT,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            CORRECTION_DEBIT =
              T.let(
                :CORRECTION_DEBIT,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            CREDIT_AUTHORIZATION =
              T.let(
                :CREDIT_AUTHORIZATION,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            CREDIT_AUTHORIZATION_ADVICE =
              T.let(
                :CREDIT_AUTHORIZATION_ADVICE,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            CURRENCY_CONVERSION =
              T.let(
                :CURRENCY_CONVERSION,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            CURRENCY_CONVERSION_REVERSAL =
              T.let(
                :CURRENCY_CONVERSION_REVERSAL,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            DISPUTE_WON =
              T.let(
                :DISPUTE_WON,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            EXTERNAL_ACH_CANCELED =
              T.let(
                :EXTERNAL_ACH_CANCELED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            EXTERNAL_ACH_INITIATED =
              T.let(
                :EXTERNAL_ACH_INITIATED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            EXTERNAL_ACH_RELEASED =
              T.let(
                :EXTERNAL_ACH_RELEASED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            EXTERNAL_ACH_REVERSED =
              T.let(
                :EXTERNAL_ACH_REVERSED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            EXTERNAL_ACH_SETTLED =
              T.let(
                :EXTERNAL_ACH_SETTLED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            EXTERNAL_CHECK_CANCELED =
              T.let(
                :EXTERNAL_CHECK_CANCELED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            EXTERNAL_CHECK_INITIATED =
              T.let(
                :EXTERNAL_CHECK_INITIATED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            EXTERNAL_CHECK_RELEASED =
              T.let(
                :EXTERNAL_CHECK_RELEASED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            EXTERNAL_CHECK_REVERSED =
              T.let(
                :EXTERNAL_CHECK_REVERSED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            EXTERNAL_CHECK_SETTLED =
              T.let(
                :EXTERNAL_CHECK_SETTLED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            EXTERNAL_TRANSFER_CANCELED =
              T.let(
                :EXTERNAL_TRANSFER_CANCELED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            EXTERNAL_TRANSFER_INITIATED =
              T.let(
                :EXTERNAL_TRANSFER_INITIATED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            EXTERNAL_TRANSFER_RELEASED =
              T.let(
                :EXTERNAL_TRANSFER_RELEASED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            EXTERNAL_TRANSFER_REVERSED =
              T.let(
                :EXTERNAL_TRANSFER_REVERSED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            EXTERNAL_TRANSFER_SETTLED =
              T.let(
                :EXTERNAL_TRANSFER_SETTLED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            EXTERNAL_WIRE_CANCELED =
              T.let(
                :EXTERNAL_WIRE_CANCELED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            EXTERNAL_WIRE_INITIATED =
              T.let(
                :EXTERNAL_WIRE_INITIATED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            EXTERNAL_WIRE_RELEASED =
              T.let(
                :EXTERNAL_WIRE_RELEASED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            EXTERNAL_WIRE_REVERSED =
              T.let(
                :EXTERNAL_WIRE_REVERSED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            EXTERNAL_WIRE_SETTLED =
              T.let(
                :EXTERNAL_WIRE_SETTLED,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            FINANCIAL_AUTHORIZATION =
              T.let(
                :FINANCIAL_AUTHORIZATION,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            FINANCIAL_CREDIT_AUTHORIZATION =
              T.let(
                :FINANCIAL_CREDIT_AUTHORIZATION,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            INTEREST =
              T.let(
                :INTEREST,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            INTEREST_REVERSAL =
              T.let(
                :INTEREST_REVERSAL,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            INTERNAL_ADJUSTMENT =
              T.let(
                :INTERNAL_ADJUSTMENT,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            LATE_PAYMENT =
              T.let(
                :LATE_PAYMENT,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            LATE_PAYMENT_REVERSAL =
              T.let(
                :LATE_PAYMENT_REVERSAL,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            LOSS_WRITE_OFF =
              T.let(
                :LOSS_WRITE_OFF,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            PROVISIONAL_CREDIT =
              T.let(
                :PROVISIONAL_CREDIT,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            PROVISIONAL_CREDIT_REVERSAL =
              T.let(
                :PROVISIONAL_CREDIT_REVERSAL,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            SERVICE =
              T.let(
                :SERVICE,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            RETURN =
              T.let(
                :RETURN,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            RETURN_REVERSAL =
              T.let(
                :RETURN_REVERSAL,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            TRANSFER =
              T.let(
                :TRANSFER,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            TRANSFER_INSUFFICIENT_FUNDS =
              T.let(
                :TRANSFER_INSUFFICIENT_FUNDS,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            RETURNED_PAYMENT =
              T.let(
                :RETURNED_PAYMENT,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            RETURNED_PAYMENT_REVERSAL =
              T.let(
                :RETURNED_PAYMENT_REVERSAL,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )
            LITHIC_NETWORK_PAYMENT =
              T.let(
                :LITHIC_NETWORK_PAYMENT,
                Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Event::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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

        # Card transaction with ledger base properties
        sig { returns(T.attached_class) }
        def self.new
        end

        sig { override.returns({}) }
        def to_hash
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
