# typed: strong

module Lithic
  module Models
    # Response containing multiple transaction types
    module AccountActivityListResponse
      extend Lithic::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Lithic::Models::AccountActivityListResponse::FinancialTransaction,
            Lithic::Models::AccountActivityListResponse::BookTransferTransaction,
            Lithic::Models::AccountActivityListResponse::CardTransaction,
            Lithic::Models::AccountActivityListResponse::PaymentTransaction,
            Lithic::ExternalPayment,
            Lithic::ManagementOperationTransaction
          )
        end

      class FinancialTransaction < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::AccountActivityListResponse::FinancialTransaction,
              Lithic::Internal::AnyHash
            )
          end

        # Unique identifier for the transaction
        sig { returns(String) }
        attr_accessor :token

        # Transaction category
        sig do
          returns(
            Lithic::Models::AccountActivityListResponse::FinancialTransaction::Category::TaggedSymbol
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
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event
            ]
          )
        end
        attr_accessor :events

        sig do
          returns(
            Lithic::Models::AccountActivityListResponse::FinancialTransaction::Family::TaggedSymbol
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
            Lithic::Models::AccountActivityListResponse::FinancialTransaction::Result::TaggedSymbol
          )
        end
        attr_accessor :result

        # Settled amount in cents
        sig { returns(Integer) }
        attr_accessor :settled_amount

        # The status of the transaction
        sig do
          returns(
            Lithic::Models::AccountActivityListResponse::FinancialTransaction::Status::TaggedSymbol
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
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Category::OrSymbol,
            created: Time,
            currency: String,
            descriptor: String,
            events:
              T::Array[
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::OrHash
              ],
            family:
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Family::OrSymbol,
            financial_account_token: String,
            pending_amount: Integer,
            result:
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Result::OrSymbol,
            settled_amount: Integer,
            status:
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Status::OrSymbol,
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
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Category::TaggedSymbol,
              created: Time,
              currency: String,
              descriptor: String,
              events:
                T::Array[
                  Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event
                ],
              family:
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Family::TaggedSymbol,
              financial_account_token: String,
              pending_amount: Integer,
              result:
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Result::TaggedSymbol,
              settled_amount: Integer,
              status:
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Status::TaggedSymbol,
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
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Category
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH =
            T.let(
              :ACH,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Category::TaggedSymbol
            )
          BALANCE_OR_FUNDING =
            T.let(
              :BALANCE_OR_FUNDING,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Category::TaggedSymbol
            )
          CARD =
            T.let(
              :CARD,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Category::TaggedSymbol
            )
          EXTERNAL_ACH =
            T.let(
              :EXTERNAL_ACH,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Category::TaggedSymbol
            )
          EXTERNAL_CHECK =
            T.let(
              :EXTERNAL_CHECK,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Category::TaggedSymbol
            )
          EXTERNAL_TRANSFER =
            T.let(
              :EXTERNAL_TRANSFER,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Category::TaggedSymbol
            )
          EXTERNAL_WIRE =
            T.let(
              :EXTERNAL_WIRE,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_ADJUSTMENT =
            T.let(
              :MANAGEMENT_ADJUSTMENT,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_DISPUTE =
            T.let(
              :MANAGEMENT_DISPUTE,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_FEE =
            T.let(
              :MANAGEMENT_FEE,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_REWARD =
            T.let(
              :MANAGEMENT_REWARD,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_DISBURSEMENT =
            T.let(
              :MANAGEMENT_DISBURSEMENT,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Category::TaggedSymbol
            )
          PROGRAM_FUNDING =
            T.let(
              :PROGRAM_FUNDING,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Category::TaggedSymbol
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
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event,
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
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Result::TaggedSymbol
              )
            )
          end
          attr_reader :result

          sig do
            params(
              result:
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Result::OrSymbol
            ).void
          end
          attr_writer :result

          sig do
            returns(
              T.nilable(
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::OrSymbol
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
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Result::OrSymbol,
              type:
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::OrSymbol
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
                  Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Result::TaggedSymbol,
                type:
                  Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
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
                  Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Result
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            APPROVED =
              T.let(
                :APPROVED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Result::TaggedSymbol
              )
            DECLINED =
              T.let(
                :DECLINED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Result::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Result::TaggedSymbol
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
                  Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACH_ORIGINATION_CANCELLED =
              T.let(
                :ACH_ORIGINATION_CANCELLED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            ACH_ORIGINATION_INITIATED =
              T.let(
                :ACH_ORIGINATION_INITIATED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            ACH_ORIGINATION_PROCESSED =
              T.let(
                :ACH_ORIGINATION_PROCESSED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            ACH_ORIGINATION_RELEASED =
              T.let(
                :ACH_ORIGINATION_RELEASED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            ACH_ORIGINATION_REVIEWED =
              T.let(
                :ACH_ORIGINATION_REVIEWED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            ACH_ORIGINATION_SETTLED =
              T.let(
                :ACH_ORIGINATION_SETTLED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            ACH_RECEIPT_PROCESSED =
              T.let(
                :ACH_RECEIPT_PROCESSED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            ACH_RECEIPT_SETTLED =
              T.let(
                :ACH_RECEIPT_SETTLED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            ACH_RETURN_INITIATED =
              T.let(
                :ACH_RETURN_INITIATED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            ACH_RETURN_PROCESSED =
              T.let(
                :ACH_RETURN_PROCESSED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            ACH_RETURN_SETTLED =
              T.let(
                :ACH_RETURN_SETTLED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            AUTHORIZATION =
              T.let(
                :AUTHORIZATION,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            AUTHORIZATION_ADVICE =
              T.let(
                :AUTHORIZATION_ADVICE,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            AUTHORIZATION_EXPIRY =
              T.let(
                :AUTHORIZATION_EXPIRY,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            AUTHORIZATION_REVERSAL =
              T.let(
                :AUTHORIZATION_REVERSAL,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            BALANCE_INQUIRY =
              T.let(
                :BALANCE_INQUIRY,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            BILLING_ERROR =
              T.let(
                :BILLING_ERROR,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            BILLING_ERROR_REVERSAL =
              T.let(
                :BILLING_ERROR_REVERSAL,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            CARD_TO_CARD =
              T.let(
                :CARD_TO_CARD,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            CASH_BACK =
              T.let(
                :CASH_BACK,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            CASH_BACK_REVERSAL =
              T.let(
                :CASH_BACK_REVERSAL,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            CLEARING =
              T.let(
                :CLEARING,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            COLLECTION =
              T.let(
                :COLLECTION,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            CORRECTION_CREDIT =
              T.let(
                :CORRECTION_CREDIT,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            CORRECTION_DEBIT =
              T.let(
                :CORRECTION_DEBIT,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            CREDIT_AUTHORIZATION =
              T.let(
                :CREDIT_AUTHORIZATION,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            CREDIT_AUTHORIZATION_ADVICE =
              T.let(
                :CREDIT_AUTHORIZATION_ADVICE,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            CURRENCY_CONVERSION =
              T.let(
                :CURRENCY_CONVERSION,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            CURRENCY_CONVERSION_REVERSAL =
              T.let(
                :CURRENCY_CONVERSION_REVERSAL,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            DISPUTE_WON =
              T.let(
                :DISPUTE_WON,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            EXTERNAL_ACH_CANCELED =
              T.let(
                :EXTERNAL_ACH_CANCELED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            EXTERNAL_ACH_INITIATED =
              T.let(
                :EXTERNAL_ACH_INITIATED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            EXTERNAL_ACH_RELEASED =
              T.let(
                :EXTERNAL_ACH_RELEASED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            EXTERNAL_ACH_REVERSED =
              T.let(
                :EXTERNAL_ACH_REVERSED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            EXTERNAL_ACH_SETTLED =
              T.let(
                :EXTERNAL_ACH_SETTLED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            EXTERNAL_CHECK_CANCELED =
              T.let(
                :EXTERNAL_CHECK_CANCELED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            EXTERNAL_CHECK_INITIATED =
              T.let(
                :EXTERNAL_CHECK_INITIATED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            EXTERNAL_CHECK_RELEASED =
              T.let(
                :EXTERNAL_CHECK_RELEASED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            EXTERNAL_CHECK_REVERSED =
              T.let(
                :EXTERNAL_CHECK_REVERSED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            EXTERNAL_CHECK_SETTLED =
              T.let(
                :EXTERNAL_CHECK_SETTLED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            EXTERNAL_TRANSFER_CANCELED =
              T.let(
                :EXTERNAL_TRANSFER_CANCELED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            EXTERNAL_TRANSFER_INITIATED =
              T.let(
                :EXTERNAL_TRANSFER_INITIATED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            EXTERNAL_TRANSFER_RELEASED =
              T.let(
                :EXTERNAL_TRANSFER_RELEASED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            EXTERNAL_TRANSFER_REVERSED =
              T.let(
                :EXTERNAL_TRANSFER_REVERSED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            EXTERNAL_TRANSFER_SETTLED =
              T.let(
                :EXTERNAL_TRANSFER_SETTLED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            EXTERNAL_WIRE_CANCELED =
              T.let(
                :EXTERNAL_WIRE_CANCELED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            EXTERNAL_WIRE_INITIATED =
              T.let(
                :EXTERNAL_WIRE_INITIATED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            EXTERNAL_WIRE_RELEASED =
              T.let(
                :EXTERNAL_WIRE_RELEASED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            EXTERNAL_WIRE_REVERSED =
              T.let(
                :EXTERNAL_WIRE_REVERSED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            EXTERNAL_WIRE_SETTLED =
              T.let(
                :EXTERNAL_WIRE_SETTLED,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            FINANCIAL_AUTHORIZATION =
              T.let(
                :FINANCIAL_AUTHORIZATION,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            FINANCIAL_CREDIT_AUTHORIZATION =
              T.let(
                :FINANCIAL_CREDIT_AUTHORIZATION,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            INTEREST =
              T.let(
                :INTEREST,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            INTEREST_REVERSAL =
              T.let(
                :INTEREST_REVERSAL,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            INTERNAL_ADJUSTMENT =
              T.let(
                :INTERNAL_ADJUSTMENT,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            LATE_PAYMENT =
              T.let(
                :LATE_PAYMENT,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            LATE_PAYMENT_REVERSAL =
              T.let(
                :LATE_PAYMENT_REVERSAL,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            LOSS_WRITE_OFF =
              T.let(
                :LOSS_WRITE_OFF,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            PROVISIONAL_CREDIT =
              T.let(
                :PROVISIONAL_CREDIT,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            PROVISIONAL_CREDIT_REVERSAL =
              T.let(
                :PROVISIONAL_CREDIT_REVERSAL,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            SERVICE =
              T.let(
                :SERVICE,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            RETURN =
              T.let(
                :RETURN,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            RETURN_REVERSAL =
              T.let(
                :RETURN_REVERSAL,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            TRANSFER =
              T.let(
                :TRANSFER,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            TRANSFER_INSUFFICIENT_FUNDS =
              T.let(
                :TRANSFER_INSUFFICIENT_FUNDS,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            RETURNED_PAYMENT =
              T.let(
                :RETURNED_PAYMENT,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            RETURNED_PAYMENT_REVERSAL =
              T.let(
                :RETURNED_PAYMENT_REVERSAL,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )
            LITHIC_NETWORK_PAYMENT =
              T.let(
                :LITHIC_NETWORK_PAYMENT,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::Models::AccountActivityListResponse::FinancialTransaction::Event::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Family
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Family
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CARD =
            T.let(
              :CARD,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Family::TaggedSymbol
            )
          PAYMENT =
            T.let(
              :PAYMENT,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Family::TaggedSymbol
            )
          TRANSFER =
            T.let(
              :TRANSFER,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Family::TaggedSymbol
            )
          INTERNAL =
            T.let(
              :INTERNAL,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Family::TaggedSymbol
            )
          EXTERNAL_PAYMENT =
            T.let(
              :EXTERNAL_PAYMENT,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Family::TaggedSymbol
            )
          MANAGEMENT_OPERATION =
            T.let(
              :MANAGEMENT_OPERATION,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Family::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Family::TaggedSymbol
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
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Result
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(
              :APPROVED,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Result::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Result::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Result::TaggedSymbol
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
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Status::TaggedSymbol
            )
          SETTLED =
            T.let(
              :SETTLED,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Status::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Status::TaggedSymbol
            )
          REVERSED =
            T.let(
              :REVERSED,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :CANCELED,
              Lithic::Models::AccountActivityListResponse::FinancialTransaction::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityListResponse::FinancialTransaction::Status::TaggedSymbol
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
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction,
              Lithic::Internal::AnyHash
            )
          end

        # Unique identifier for the transaction
        sig { returns(String) }
        attr_accessor :token

        sig do
          returns(
            Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Category::TaggedSymbol
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
        sig do
          returns(
            T::Array[
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event
            ]
          )
        end
        attr_accessor :events

        sig do
          returns(
            Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Family::TaggedSymbol
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
            Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Result::TaggedSymbol
          )
        end
        attr_accessor :result

        # The settled amount of the transaction in cents
        sig { returns(Integer) }
        attr_accessor :settled_amount

        # The status of the transaction
        sig do
          returns(
            Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Status::TaggedSymbol
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
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::TransactionSeries
            )
          )
        end
        attr_reader :transaction_series

        sig do
          params(
            transaction_series:
              T.nilable(
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::TransactionSeries::OrHash
              )
          ).void
        end
        attr_writer :transaction_series

        # Book transfer transaction
        sig do
          params(
            token: String,
            category:
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Category::OrSymbol,
            created: Time,
            currency: String,
            events:
              T::Array[
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::OrHash
              ],
            family:
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Family::OrSymbol,
            from_financial_account_token: String,
            pending_amount: Integer,
            result:
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Result::OrSymbol,
            settled_amount: Integer,
            status:
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Status::OrSymbol,
            to_financial_account_token: String,
            updated: Time,
            external_id: String,
            external_resource: T.nilable(Lithic::ExternalResource::OrHash),
            transaction_series:
              T.nilable(
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::TransactionSeries::OrHash
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
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Category::TaggedSymbol,
              created: Time,
              currency: String,
              events:
                T::Array[
                  Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event
                ],
              family:
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Family::TaggedSymbol,
              from_financial_account_token: String,
              pending_amount: Integer,
              result:
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Result::TaggedSymbol,
              settled_amount: Integer,
              status:
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Status::TaggedSymbol,
              to_financial_account_token: String,
              updated: Time,
              external_id: String,
              external_resource: T.nilable(Lithic::ExternalResource),
              transaction_series:
                T.nilable(
                  Lithic::Models::AccountActivityListResponse::BookTransferTransaction::TransactionSeries
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
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Category
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH =
            T.let(
              :ACH,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          BALANCE_OR_FUNDING =
            T.let(
              :BALANCE_OR_FUNDING,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          CARD =
            T.let(
              :CARD,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          EXTERNAL_ACH =
            T.let(
              :EXTERNAL_ACH,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          EXTERNAL_CHECK =
            T.let(
              :EXTERNAL_CHECK,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          EXTERNAL_TRANSFER =
            T.let(
              :EXTERNAL_TRANSFER,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          EXTERNAL_WIRE =
            T.let(
              :EXTERNAL_WIRE,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_ADJUSTMENT =
            T.let(
              :MANAGEMENT_ADJUSTMENT,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_DISPUTE =
            T.let(
              :MANAGEMENT_DISPUTE,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_FEE =
            T.let(
              :MANAGEMENT_FEE,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_REWARD =
            T.let(
              :MANAGEMENT_REWARD,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_DISBURSEMENT =
            T.let(
              :MANAGEMENT_DISBURSEMENT,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Category::TaggedSymbol
            )
          PROGRAM_FUNDING =
            T.let(
              :PROGRAM_FUNDING,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Category::TaggedSymbol
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
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event,
                Lithic::Internal::AnyHash
              )
            end

          # Globally unique identifier.
          sig { returns(String) }
          attr_accessor :token

          # Amount of the financial event that has been settled in the currency's smallest
          # unit (e.g., cents).
          sig { returns(Integer) }
          attr_accessor :amount

          # Date and time when the financial event occurred. UTC time zone.
          sig { returns(Time) }
          attr_accessor :created

          sig do
            returns(
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::DetailedResults::TaggedSymbol
            )
          end
          attr_accessor :detailed_results

          # Memo for the transfer.
          sig { returns(String) }
          attr_accessor :memo

          # APPROVED financial events were successful while DECLINED financial events were
          # declined by user, Lithic, or the network.
          sig do
            returns(
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Result::TaggedSymbol
            )
          end
          attr_accessor :result

          # The program specific subtype code for the specified category/type.
          sig { returns(String) }
          attr_accessor :subtype

          # Type of the book transfer
          sig do
            returns(
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          # Book transfer Event
          sig do
            params(
              token: String,
              amount: Integer,
              created: Time,
              detailed_results:
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::DetailedResults::OrSymbol,
              memo: String,
              result:
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Result::OrSymbol,
              subtype: String,
              type:
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Globally unique identifier.
            token:,
            # Amount of the financial event that has been settled in the currency's smallest
            # unit (e.g., cents).
            amount:,
            # Date and time when the financial event occurred. UTC time zone.
            created:,
            detailed_results:,
            # Memo for the transfer.
            memo:,
            # APPROVED financial events were successful while DECLINED financial events were
            # declined by user, Lithic, or the network.
            result:,
            # The program specific subtype code for the specified category/type.
            subtype:,
            # Type of the book transfer
            type:
          )
          end

          sig do
            override.returns(
              {
                token: String,
                amount: Integer,
                created: Time,
                detailed_results:
                  Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::DetailedResults::TaggedSymbol,
                memo: String,
                result:
                  Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Result::TaggedSymbol,
                subtype: String,
                type:
                  Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DetailedResults
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::DetailedResults
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            APPROVED =
              T.let(
                :APPROVED,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::DetailedResults::TaggedSymbol
              )
            FUNDS_INSUFFICIENT =
              T.let(
                :FUNDS_INSUFFICIENT,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::DetailedResults::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::DetailedResults::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # APPROVED financial events were successful while DECLINED financial events were
          # declined by user, Lithic, or the network.
          module Result
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Result
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            APPROVED =
              T.let(
                :APPROVED,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Result::TaggedSymbol
              )
            DECLINED =
              T.let(
                :DECLINED,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Result::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Result::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Type of the book transfer
          module Type
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ATM_WITHDRAWAL =
              T.let(
                :ATM_WITHDRAWAL,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            ATM_DECLINE =
              T.let(
                :ATM_DECLINE,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            INTERNATIONAL_ATM_WITHDRAWAL =
              T.let(
                :INTERNATIONAL_ATM_WITHDRAWAL,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            INACTIVITY =
              T.let(
                :INACTIVITY,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            STATEMENT =
              T.let(
                :STATEMENT,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            MONTHLY =
              T.let(
                :MONTHLY,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            QUARTERLY =
              T.let(
                :QUARTERLY,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            ANNUAL =
              T.let(
                :ANNUAL,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            CUSTOMER_SERVICE =
              T.let(
                :CUSTOMER_SERVICE,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            ACCOUNT_MAINTENANCE =
              T.let(
                :ACCOUNT_MAINTENANCE,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            ACCOUNT_ACTIVATION =
              T.let(
                :ACCOUNT_ACTIVATION,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            ACCOUNT_CLOSURE =
              T.let(
                :ACCOUNT_CLOSURE,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            CARD_REPLACEMENT =
              T.let(
                :CARD_REPLACEMENT,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            CARD_DELIVERY =
              T.let(
                :CARD_DELIVERY,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            CARD_CREATE =
              T.let(
                :CARD_CREATE,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            CURRENCY_CONVERSION =
              T.let(
                :CURRENCY_CONVERSION,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            INTEREST =
              T.let(
                :INTEREST,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            LATE_PAYMENT =
              T.let(
                :LATE_PAYMENT,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            BILL_PAYMENT =
              T.let(
                :BILL_PAYMENT,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            CASH_BACK =
              T.let(
                :CASH_BACK,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            ACCOUNT_TO_ACCOUNT =
              T.let(
                :ACCOUNT_TO_ACCOUNT,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            CARD_TO_CARD =
              T.let(
                :CARD_TO_CARD,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            DISBURSE =
              T.let(
                :DISBURSE,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            BILLING_ERROR =
              T.let(
                :BILLING_ERROR,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            LOSS_WRITE_OFF =
              T.let(
                :LOSS_WRITE_OFF,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            EXPIRED_CARD =
              T.let(
                :EXPIRED_CARD,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            EARLY_DERECOGNITION =
              T.let(
                :EARLY_DERECOGNITION,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            ESCHEATMENT =
              T.let(
                :ESCHEATMENT,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            INACTIVITY_FEE_DOWN =
              T.let(
                :INACTIVITY_FEE_DOWN,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            PROVISIONAL_CREDIT =
              T.let(
                :PROVISIONAL_CREDIT,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            DISPUTE_WON =
              T.let(
                :DISPUTE_WON,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            SERVICE =
              T.let(
                :SERVICE,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            TRANSFER =
              T.let(
                :TRANSFER,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )
            COLLECTION =
              T.let(
                :COLLECTION,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Event::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Family
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Family
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CARD =
            T.let(
              :CARD,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Family::TaggedSymbol
            )
          PAYMENT =
            T.let(
              :PAYMENT,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Family::TaggedSymbol
            )
          TRANSFER =
            T.let(
              :TRANSFER,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Family::TaggedSymbol
            )
          INTERNAL =
            T.let(
              :INTERNAL,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Family::TaggedSymbol
            )
          EXTERNAL_PAYMENT =
            T.let(
              :EXTERNAL_PAYMENT,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Family::TaggedSymbol
            )
          MANAGEMENT_OPERATION =
            T.let(
              :MANAGEMENT_OPERATION,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Family::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Family::TaggedSymbol
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
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Result
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(
              :APPROVED,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Result::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Result::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Result::TaggedSymbol
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
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Status::TaggedSymbol
            )
          SETTLED =
            T.let(
              :SETTLED,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Status::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Status::TaggedSymbol
            )
          REVERSED =
            T.let(
              :REVERSED,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :CANCELED,
              Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::Status::TaggedSymbol
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
                Lithic::Models::AccountActivityListResponse::BookTransferTransaction::TransactionSeries,
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
              Lithic::Models::AccountActivityListResponse::CardTransaction,
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
            Lithic::Models::AccountActivityListResponse::CardTransaction::Family::TaggedSymbol
          )
        end
        attr_accessor :family

        # The status of the transaction
        sig do
          returns(
            Lithic::Models::AccountActivityListResponse::CardTransaction::Status::TaggedSymbol
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
              Lithic::Models::AccountActivityListResponse::CardTransaction::Family::OrSymbol,
            status:
              Lithic::Models::AccountActivityListResponse::CardTransaction::Status::OrSymbol,
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
                Lithic::Models::AccountActivityListResponse::CardTransaction::Family::TaggedSymbol,
              status:
                Lithic::Models::AccountActivityListResponse::CardTransaction::Status::TaggedSymbol,
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
                Lithic::Models::AccountActivityListResponse::CardTransaction::Family
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CARD =
            T.let(
              :CARD,
              Lithic::Models::AccountActivityListResponse::CardTransaction::Family::TaggedSymbol
            )
          PAYMENT =
            T.let(
              :PAYMENT,
              Lithic::Models::AccountActivityListResponse::CardTransaction::Family::TaggedSymbol
            )
          TRANSFER =
            T.let(
              :TRANSFER,
              Lithic::Models::AccountActivityListResponse::CardTransaction::Family::TaggedSymbol
            )
          INTERNAL =
            T.let(
              :INTERNAL,
              Lithic::Models::AccountActivityListResponse::CardTransaction::Family::TaggedSymbol
            )
          EXTERNAL_PAYMENT =
            T.let(
              :EXTERNAL_PAYMENT,
              Lithic::Models::AccountActivityListResponse::CardTransaction::Family::TaggedSymbol
            )
          MANAGEMENT_OPERATION =
            T.let(
              :MANAGEMENT_OPERATION,
              Lithic::Models::AccountActivityListResponse::CardTransaction::Family::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityListResponse::CardTransaction::Family::TaggedSymbol
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
                Lithic::Models::AccountActivityListResponse::CardTransaction::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              Lithic::Models::AccountActivityListResponse::CardTransaction::Status::TaggedSymbol
            )
          SETTLED =
            T.let(
              :SETTLED,
              Lithic::Models::AccountActivityListResponse::CardTransaction::Status::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::Models::AccountActivityListResponse::CardTransaction::Status::TaggedSymbol
            )
          REVERSED =
            T.let(
              :REVERSED,
              Lithic::Models::AccountActivityListResponse::CardTransaction::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :CANCELED,
              Lithic::Models::AccountActivityListResponse::CardTransaction::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityListResponse::CardTransaction::Status::TaggedSymbol
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
              Lithic::Models::AccountActivityListResponse::PaymentTransaction,
              Lithic::Internal::AnyHash
            )
          end

        # Unique identifier for the transaction
        sig { returns(String) }
        attr_accessor :token

        # Transaction category
        sig do
          returns(
            Lithic::Models::AccountActivityListResponse::PaymentTransaction::Category::TaggedSymbol
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
            Lithic::Models::AccountActivityListResponse::PaymentTransaction::Direction::TaggedSymbol
          )
        end
        attr_accessor :direction

        # List of transaction events
        sig do
          returns(
            T::Array[
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event
            ]
          )
        end
        attr_accessor :events

        sig do
          returns(
            Lithic::Models::AccountActivityListResponse::PaymentTransaction::Family::TaggedSymbol
          )
        end
        attr_accessor :family

        # Financial account token
        sig { returns(String) }
        attr_accessor :financial_account_token

        # Transfer method
        sig do
          returns(
            Lithic::Models::AccountActivityListResponse::PaymentTransaction::Method::TaggedSymbol
          )
        end
        attr_accessor :method_

        # Method-specific attributes
        sig do
          returns(
            Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::Variants
          )
        end
        attr_accessor :method_attributes

        # Pending amount in cents
        sig { returns(Integer) }
        attr_accessor :pending_amount

        # Related account tokens for the transaction
        sig do
          returns(
            Lithic::Models::AccountActivityListResponse::PaymentTransaction::RelatedAccountTokens
          )
        end
        attr_reader :related_account_tokens

        sig do
          params(
            related_account_tokens:
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::RelatedAccountTokens::OrHash
          ).void
        end
        attr_writer :related_account_tokens

        # Transaction result
        sig do
          returns(
            Lithic::Models::AccountActivityListResponse::PaymentTransaction::Result::TaggedSymbol
          )
        end
        attr_accessor :result

        # Settled amount in cents
        sig { returns(Integer) }
        attr_accessor :settled_amount

        # Transaction source
        sig do
          returns(
            Lithic::Models::AccountActivityListResponse::PaymentTransaction::Source::TaggedSymbol
          )
        end
        attr_accessor :source

        # The status of the transaction
        sig do
          returns(
            Lithic::Models::AccountActivityListResponse::PaymentTransaction::Status::TaggedSymbol
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

        sig do
          returns(
            T.nilable(
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Type::TaggedSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type:
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Type::OrSymbol
          ).void
        end
        attr_writer :type

        # User-defined identifier
        sig { returns(T.nilable(String)) }
        attr_accessor :user_defined_id

        # Payment transaction
        sig do
          params(
            token: String,
            category:
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Category::OrSymbol,
            created: Time,
            descriptor: String,
            direction:
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Direction::OrSymbol,
            events:
              T::Array[
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::OrHash
              ],
            family:
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Family::OrSymbol,
            financial_account_token: String,
            method_:
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Method::OrSymbol,
            method_attributes:
              T.any(
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::OrHash,
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes::OrHash
              ),
            pending_amount: Integer,
            related_account_tokens:
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::RelatedAccountTokens::OrHash,
            result:
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Result::OrSymbol,
            settled_amount: Integer,
            source:
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Source::OrSymbol,
            status:
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Status::OrSymbol,
            updated: Time,
            currency: String,
            expected_release_date: T.nilable(Date),
            external_bank_account_token: T.nilable(String),
            type:
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Type::OrSymbol,
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
          type: nil,
          # User-defined identifier
          user_defined_id: nil
        )
        end

        sig do
          override.returns(
            {
              token: String,
              category:
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Category::TaggedSymbol,
              created: Time,
              descriptor: String,
              direction:
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Direction::TaggedSymbol,
              events:
                T::Array[
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event
                ],
              family:
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Family::TaggedSymbol,
              financial_account_token: String,
              method_:
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Method::TaggedSymbol,
              method_attributes:
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::Variants,
              pending_amount: Integer,
              related_account_tokens:
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::RelatedAccountTokens,
              result:
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Result::TaggedSymbol,
              settled_amount: Integer,
              source:
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Source::TaggedSymbol,
              status:
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Status::TaggedSymbol,
              updated: Time,
              currency: String,
              expected_release_date: T.nilable(Date),
              external_bank_account_token: T.nilable(String),
              type:
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Type::TaggedSymbol,
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
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Category
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH =
            T.let(
              :ACH,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Category::TaggedSymbol
            )
          BALANCE_OR_FUNDING =
            T.let(
              :BALANCE_OR_FUNDING,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Category::TaggedSymbol
            )
          CARD =
            T.let(
              :CARD,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Category::TaggedSymbol
            )
          EXTERNAL_ACH =
            T.let(
              :EXTERNAL_ACH,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Category::TaggedSymbol
            )
          EXTERNAL_CHECK =
            T.let(
              :EXTERNAL_CHECK,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Category::TaggedSymbol
            )
          EXTERNAL_TRANSFER =
            T.let(
              :EXTERNAL_TRANSFER,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Category::TaggedSymbol
            )
          EXTERNAL_WIRE =
            T.let(
              :EXTERNAL_WIRE,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_ADJUSTMENT =
            T.let(
              :MANAGEMENT_ADJUSTMENT,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_DISPUTE =
            T.let(
              :MANAGEMENT_DISPUTE,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_FEE =
            T.let(
              :MANAGEMENT_FEE,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_REWARD =
            T.let(
              :MANAGEMENT_REWARD,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Category::TaggedSymbol
            )
          MANAGEMENT_DISBURSEMENT =
            T.let(
              :MANAGEMENT_DISBURSEMENT,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Category::TaggedSymbol
            )
          PROGRAM_FUNDING =
            T.let(
              :PROGRAM_FUNDING,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Category::TaggedSymbol
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
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Direction
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREDIT =
            T.let(
              :CREDIT,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Direction::TaggedSymbol
            )
          DEBIT =
            T.let(
              :DEBIT,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Direction::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Direction::TaggedSymbol
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
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event,
                Lithic::Internal::AnyHash
              )
            end

          # Globally unique identifier.
          sig { returns(String) }
          attr_accessor :token

          # Amount of the financial event that has been settled in the currency's smallest
          # unit (e.g., cents).
          sig { returns(Integer) }
          attr_accessor :amount

          # Date and time when the financial event occurred. UTC time zone.
          sig { returns(Time) }
          attr_accessor :created

          # APPROVED financial events were successful while DECLINED financial events were
          # declined by user, Lithic, or the network.
          sig do
            returns(
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::Result::TaggedSymbol
            )
          end
          attr_accessor :result

          # Event types:
          #
          # - `ACH_ORIGINATION_INITIATED` - ACH origination received and pending
          #   approval/release from an ACH hold.
          # - `ACH_ORIGINATION_REVIEWED` - ACH origination has completed the review process.
          # - `ACH_ORIGINATION_CANCELLED` - ACH origination has been cancelled.
          # - `ACH_ORIGINATION_PROCESSED` - ACH origination has been processed and sent to
          #   the Federal Reserve.
          # - `ACH_ORIGINATION_SETTLED` - ACH origination has settled.
          # - `ACH_ORIGINATION_RELEASED` - ACH origination released from pending to
          #   available balance.
          # - `ACH_RETURN_PROCESSED` - ACH origination returned by the Receiving Depository
          #   Financial Institution.
          # - `ACH_RECEIPT_PROCESSED` - ACH receipt pending release from an ACH holder.
          # - `ACH_RETURN_INITIATED` - ACH initiated return for a ACH receipt.
          # - `ACH_RECEIPT_SETTLED` - ACH receipt funds have settled.
          # - `ACH_RECEIPT_RELEASED` - ACH receipt released from pending to available
          #   balance.
          # - `ACH_RETURN_SETTLED` - ACH receipt return settled by the Receiving Depository
          #   Financial Institution.
          sig do
            returns(
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          # More detailed reasons for the event
          sig do
            returns(
              T.nilable(
                T::Array[
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::DetailedResult::TaggedSymbol
                ]
              )
            )
          end
          attr_reader :detailed_results

          sig do
            params(
              detailed_results:
                T::Array[
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::DetailedResult::OrSymbol
                ]
            ).void
          end
          attr_writer :detailed_results

          # Payment Event
          sig do
            params(
              token: String,
              amount: Integer,
              created: Time,
              result:
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::Result::OrSymbol,
              type:
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::Type::OrSymbol,
              detailed_results:
                T::Array[
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::DetailedResult::OrSymbol
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Globally unique identifier.
            token:,
            # Amount of the financial event that has been settled in the currency's smallest
            # unit (e.g., cents).
            amount:,
            # Date and time when the financial event occurred. UTC time zone.
            created:,
            # APPROVED financial events were successful while DECLINED financial events were
            # declined by user, Lithic, or the network.
            result:,
            # Event types:
            #
            # - `ACH_ORIGINATION_INITIATED` - ACH origination received and pending
            #   approval/release from an ACH hold.
            # - `ACH_ORIGINATION_REVIEWED` - ACH origination has completed the review process.
            # - `ACH_ORIGINATION_CANCELLED` - ACH origination has been cancelled.
            # - `ACH_ORIGINATION_PROCESSED` - ACH origination has been processed and sent to
            #   the Federal Reserve.
            # - `ACH_ORIGINATION_SETTLED` - ACH origination has settled.
            # - `ACH_ORIGINATION_RELEASED` - ACH origination released from pending to
            #   available balance.
            # - `ACH_RETURN_PROCESSED` - ACH origination returned by the Receiving Depository
            #   Financial Institution.
            # - `ACH_RECEIPT_PROCESSED` - ACH receipt pending release from an ACH holder.
            # - `ACH_RETURN_INITIATED` - ACH initiated return for a ACH receipt.
            # - `ACH_RECEIPT_SETTLED` - ACH receipt funds have settled.
            # - `ACH_RECEIPT_RELEASED` - ACH receipt released from pending to available
            #   balance.
            # - `ACH_RETURN_SETTLED` - ACH receipt return settled by the Receiving Depository
            #   Financial Institution.
            type:,
            # More detailed reasons for the event
            detailed_results: nil
          )
          end

          sig do
            override.returns(
              {
                token: String,
                amount: Integer,
                created: Time,
                result:
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::Result::TaggedSymbol,
                type:
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::Type::TaggedSymbol,
                detailed_results:
                  T::Array[
                    Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::DetailedResult::TaggedSymbol
                  ]
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
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::Result
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            APPROVED =
              T.let(
                :APPROVED,
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::Result::TaggedSymbol
              )
            DECLINED =
              T.let(
                :DECLINED,
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::Result::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::Result::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Event types:
          #
          # - `ACH_ORIGINATION_INITIATED` - ACH origination received and pending
          #   approval/release from an ACH hold.
          # - `ACH_ORIGINATION_REVIEWED` - ACH origination has completed the review process.
          # - `ACH_ORIGINATION_CANCELLED` - ACH origination has been cancelled.
          # - `ACH_ORIGINATION_PROCESSED` - ACH origination has been processed and sent to
          #   the Federal Reserve.
          # - `ACH_ORIGINATION_SETTLED` - ACH origination has settled.
          # - `ACH_ORIGINATION_RELEASED` - ACH origination released from pending to
          #   available balance.
          # - `ACH_RETURN_PROCESSED` - ACH origination returned by the Receiving Depository
          #   Financial Institution.
          # - `ACH_RECEIPT_PROCESSED` - ACH receipt pending release from an ACH holder.
          # - `ACH_RETURN_INITIATED` - ACH initiated return for a ACH receipt.
          # - `ACH_RECEIPT_SETTLED` - ACH receipt funds have settled.
          # - `ACH_RECEIPT_RELEASED` - ACH receipt released from pending to available
          #   balance.
          # - `ACH_RETURN_SETTLED` - ACH receipt return settled by the Receiving Depository
          #   Financial Institution.
          module Type
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACH_ORIGINATION_CANCELLED =
              T.let(
                :ACH_ORIGINATION_CANCELLED,
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::Type::TaggedSymbol
              )
            ACH_ORIGINATION_INITIATED =
              T.let(
                :ACH_ORIGINATION_INITIATED,
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::Type::TaggedSymbol
              )
            ACH_ORIGINATION_PROCESSED =
              T.let(
                :ACH_ORIGINATION_PROCESSED,
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::Type::TaggedSymbol
              )
            ACH_ORIGINATION_SETTLED =
              T.let(
                :ACH_ORIGINATION_SETTLED,
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::Type::TaggedSymbol
              )
            ACH_ORIGINATION_RELEASED =
              T.let(
                :ACH_ORIGINATION_RELEASED,
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::Type::TaggedSymbol
              )
            ACH_ORIGINATION_REVIEWED =
              T.let(
                :ACH_ORIGINATION_REVIEWED,
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::Type::TaggedSymbol
              )
            ACH_RECEIPT_PROCESSED =
              T.let(
                :ACH_RECEIPT_PROCESSED,
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::Type::TaggedSymbol
              )
            ACH_RECEIPT_SETTLED =
              T.let(
                :ACH_RECEIPT_SETTLED,
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::Type::TaggedSymbol
              )
            ACH_RETURN_INITIATED =
              T.let(
                :ACH_RETURN_INITIATED,
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::Type::TaggedSymbol
              )
            ACH_RETURN_PROCESSED =
              T.let(
                :ACH_RETURN_PROCESSED,
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::Type::TaggedSymbol
              )
            ACH_RETURN_SETTLED =
              T.let(
                :ACH_RETURN_SETTLED,
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module DetailedResult
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::DetailedResult
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            APPROVED =
              T.let(
                :APPROVED,
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::DetailedResult::TaggedSymbol
              )
            FUNDS_INSUFFICIENT =
              T.let(
                :FUNDS_INSUFFICIENT,
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::DetailedResult::TaggedSymbol
              )
            ACCOUNT_INVALID =
              T.let(
                :ACCOUNT_INVALID,
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::DetailedResult::TaggedSymbol
              )
            PROGRAM_TRANSACTION_LIMIT_EXCEEDED =
              T.let(
                :PROGRAM_TRANSACTION_LIMIT_EXCEEDED,
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::DetailedResult::TaggedSymbol
              )
            PROGRAM_DAILY_LIMIT_EXCEEDED =
              T.let(
                :PROGRAM_DAILY_LIMIT_EXCEEDED,
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::DetailedResult::TaggedSymbol
              )
            PROGRAM_MONTHLY_LIMIT_EXCEEDED =
              T.let(
                :PROGRAM_MONTHLY_LIMIT_EXCEEDED,
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::DetailedResult::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::Event::DetailedResult::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Family
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Family
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CARD =
            T.let(
              :CARD,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Family::TaggedSymbol
            )
          PAYMENT =
            T.let(
              :PAYMENT,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Family::TaggedSymbol
            )
          TRANSFER =
            T.let(
              :TRANSFER,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Family::TaggedSymbol
            )
          INTERNAL =
            T.let(
              :INTERNAL,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Family::TaggedSymbol
            )
          EXTERNAL_PAYMENT =
            T.let(
              :EXTERNAL_PAYMENT,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Family::TaggedSymbol
            )
          MANAGEMENT_OPERATION =
            T.let(
              :MANAGEMENT_OPERATION,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Family::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Family::TaggedSymbol
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
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Method
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH_NEXT_DAY =
            T.let(
              :ACH_NEXT_DAY,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Method::TaggedSymbol
            )
          ACH_SAME_DAY =
            T.let(
              :ACH_SAME_DAY,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Method::TaggedSymbol
            )
          WIRE =
            T.let(
              :WIRE,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Method::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Method::TaggedSymbol
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
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes,
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes
              )
            end

          class ACHMethodAttributes < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes,
                  Lithic::Internal::AnyHash
                )
              end

            # SEC code for ACH transaction
            sig do
              returns(
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
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
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode::OrSymbol,
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
                    Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol,
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
                    Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CCD =
                T.let(
                  :CCD,
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
                )
              PPD =
                T.let(
                  :PPD,
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
                )
              WEB =
                T.let(
                  :WEB,
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
                )
              TEL =
                T.let(
                  :TEL,
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
                )
              CIE =
                T.let(
                  :CIE,
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
                )
              CTX =
                T.let(
                  :CTX,
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
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
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes,
                  Lithic::Internal::AnyHash
                )
              end

            # Type of wire transfer
            sig do
              returns(
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes::WireNetwork::TaggedSymbol
              )
            end
            attr_accessor :wire_network

            sig { returns(T.nilable(Lithic::WirePartyDetails)) }
            attr_reader :creditor

            sig { params(creditor: Lithic::WirePartyDetails::OrHash).void }
            attr_writer :creditor

            sig { returns(T.nilable(Lithic::WirePartyDetails)) }
            attr_reader :debtor

            sig { params(debtor: Lithic::WirePartyDetails::OrHash).void }
            attr_writer :debtor

            # Point to point reference identifier, as assigned by the instructing party, used
            # for tracking the message through the Fedwire system
            sig { returns(T.nilable(String)) }
            attr_accessor :message_id

            # Payment details or invoice reference
            sig { returns(T.nilable(String)) }
            attr_accessor :remittance_information

            # Type of wire message
            sig { returns(T.nilable(String)) }
            attr_reader :wire_message_type

            sig { params(wire_message_type: String).void }
            attr_writer :wire_message_type

            sig do
              params(
                wire_network:
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes::WireNetwork::OrSymbol,
                creditor: Lithic::WirePartyDetails::OrHash,
                debtor: Lithic::WirePartyDetails::OrHash,
                message_id: T.nilable(String),
                remittance_information: T.nilable(String),
                wire_message_type: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Type of wire transfer
              wire_network:,
              creditor: nil,
              debtor: nil,
              # Point to point reference identifier, as assigned by the instructing party, used
              # for tracking the message through the Fedwire system
              message_id: nil,
              # Payment details or invoice reference
              remittance_information: nil,
              # Type of wire message
              wire_message_type: nil
            )
            end

            sig do
              override.returns(
                {
                  wire_network:
                    Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes::WireNetwork::TaggedSymbol,
                  creditor: Lithic::WirePartyDetails,
                  debtor: Lithic::WirePartyDetails,
                  message_id: T.nilable(String),
                  remittance_information: T.nilable(String),
                  wire_message_type: String
                }
              )
            end
            def to_hash
            end

            # Type of wire transfer
            module WireNetwork
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes::WireNetwork
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FEDWIRE =
                T.let(
                  :FEDWIRE,
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes::WireNetwork::TaggedSymbol
                )
              SWIFT =
                T.let(
                  :SWIFT,
                  Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes::WireNetwork::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes::WireNetwork::TaggedSymbol
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
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::MethodAttributes::Variants
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
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::RelatedAccountTokens,
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
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Result
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(
              :APPROVED,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Result::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Result::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Result::TaggedSymbol
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
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Source
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LITHIC =
            T.let(
              :LITHIC,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Source::TaggedSymbol
            )
          EXTERNAL =
            T.let(
              :EXTERNAL,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Source::TaggedSymbol
            )
          CUSTOMER =
            T.let(
              :CUSTOMER,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Source::TaggedSymbol
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
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Status::TaggedSymbol
            )
          SETTLED =
            T.let(
              :SETTLED,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Status::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Status::TaggedSymbol
            )
          REVERSED =
            T.let(
              :REVERSED,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :CANCELED,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Status::TaggedSymbol
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
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ORIGINATION_CREDIT =
            T.let(
              :ORIGINATION_CREDIT,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Type::TaggedSymbol
            )
          ORIGINATION_DEBIT =
            T.let(
              :ORIGINATION_DEBIT,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Type::TaggedSymbol
            )
          RECEIPT_CREDIT =
            T.let(
              :RECEIPT_CREDIT,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Type::TaggedSymbol
            )
          RECEIPT_DEBIT =
            T.let(
              :RECEIPT_DEBIT,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Type::TaggedSymbol
            )
          WIRE_INBOUND_PAYMENT =
            T.let(
              :WIRE_INBOUND_PAYMENT,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Type::TaggedSymbol
            )
          WIRE_INBOUND_ADMIN =
            T.let(
              :WIRE_INBOUND_ADMIN,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Type::TaggedSymbol
            )
          WIRE_OUTBOUND_PAYMENT =
            T.let(
              :WIRE_OUTBOUND_PAYMENT,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Type::TaggedSymbol
            )
          WIRE_OUTBOUND_ADMIN =
            T.let(
              :WIRE_OUTBOUND_ADMIN,
              Lithic::Models::AccountActivityListResponse::PaymentTransaction::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountActivityListResponse::PaymentTransaction::Type::TaggedSymbol
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
