# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      StatementLineItems = Statements::StatementLineItems

      module Statements
        class StatementLineItems < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::FinancialAccounts::Statements::StatementLineItems,
                Lithic::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                Lithic::FinancialAccounts::Statements::StatementLineItems::Data
              ]
            )
          end
          attr_accessor :data

          sig { returns(T::Boolean) }
          attr_accessor :has_more

          sig do
            params(
              data:
                T::Array[
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::OrHash
                ],
              has_more: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(data:, has_more:)
          end

          sig do
            override.returns(
              {
                data:
                  T::Array[
                    Lithic::FinancialAccounts::Statements::StatementLineItems::Data
                  ],
                has_more: T::Boolean
              }
            )
          end
          def to_hash
          end

          class Data < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data,
                  Lithic::Internal::AnyHash
                )
              end

            # Globally unique identifier for a Statement Line Item
            sig { returns(String) }
            attr_accessor :token

            # Transaction amount in cents
            sig { returns(Integer) }
            attr_accessor :amount

            sig do
              returns(
                Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
              )
            end
            attr_accessor :category

            # Timestamp of when the line item was generated
            sig { returns(Time) }
            attr_accessor :created

            # 3-character alphabetic ISO 4217 code for the settling currency of the
            # transaction
            sig { returns(String) }
            attr_accessor :currency

            # Date that the transaction effected the account balance
            sig { returns(Date) }
            attr_accessor :effective_date

            sig do
              returns(
                Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
              )
            end
            attr_accessor :event_type

            # Globally unique identifier for a financial account
            sig { returns(String) }
            attr_accessor :financial_account_token

            # Globally unique identifier for a financial transaction event
            sig { returns(String) }
            attr_accessor :financial_transaction_event_token

            # Globally unique identifier for a financial transaction
            sig { returns(String) }
            attr_accessor :financial_transaction_token

            # Globally unique identifier for a card
            sig { returns(T.nilable(String)) }
            attr_reader :card_token

            sig { params(card_token: String).void }
            attr_writer :card_token

            sig { returns(T.nilable(String)) }
            attr_reader :descriptor

            sig { params(descriptor: String).void }
            attr_writer :descriptor

            sig do
              params(
                token: String,
                amount: Integer,
                category:
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::OrSymbol,
                created: Time,
                currency: String,
                effective_date: Date,
                event_type:
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::OrSymbol,
                financial_account_token: String,
                financial_transaction_event_token: String,
                financial_transaction_token: String,
                card_token: String,
                descriptor: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Globally unique identifier for a Statement Line Item
              token:,
              # Transaction amount in cents
              amount:,
              category:,
              # Timestamp of when the line item was generated
              created:,
              # 3-character alphabetic ISO 4217 code for the settling currency of the
              # transaction
              currency:,
              # Date that the transaction effected the account balance
              effective_date:,
              event_type:,
              # Globally unique identifier for a financial account
              financial_account_token:,
              # Globally unique identifier for a financial transaction event
              financial_transaction_event_token:,
              # Globally unique identifier for a financial transaction
              financial_transaction_token:,
              # Globally unique identifier for a card
              card_token: nil,
              descriptor: nil
            )
            end

            sig do
              override.returns(
                {
                  token: String,
                  amount: Integer,
                  category:
                    Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol,
                  created: Time,
                  currency: String,
                  effective_date: Date,
                  event_type:
                    Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol,
                  financial_account_token: String,
                  financial_transaction_event_token: String,
                  financial_transaction_token: String,
                  card_token: String,
                  descriptor: String
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
                    Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACH =
                T.let(
                  :ACH,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              BALANCE_OR_FUNDING =
                T.let(
                  :BALANCE_OR_FUNDING,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              FEE =
                T.let(
                  :FEE,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              REWARD =
                T.let(
                  :REWARD,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              ADJUSTMENT =
                T.let(
                  :ADJUSTMENT,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              DERECOGNITION =
                T.let(
                  :DERECOGNITION,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              DISPUTE =
                T.let(
                  :DISPUTE,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              CARD =
                T.let(
                  :CARD,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              EXTERNAL_ACH =
                T.let(
                  :EXTERNAL_ACH,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              EXTERNAL_CHECK =
                T.let(
                  :EXTERNAL_CHECK,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              EXTERNAL_FEDNOW =
                T.let(
                  :EXTERNAL_FEDNOW,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              EXTERNAL_RTP =
                T.let(
                  :EXTERNAL_RTP,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              EXTERNAL_TRANSFER =
                T.let(
                  :EXTERNAL_TRANSFER,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              EXTERNAL_WIRE =
                T.let(
                  :EXTERNAL_WIRE,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              MANAGEMENT_ADJUSTMENT =
                T.let(
                  :MANAGEMENT_ADJUSTMENT,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              MANAGEMENT_DISPUTE =
                T.let(
                  :MANAGEMENT_DISPUTE,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              MANAGEMENT_FEE =
                T.let(
                  :MANAGEMENT_FEE,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              MANAGEMENT_REWARD =
                T.let(
                  :MANAGEMENT_REWARD,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              MANAGEMENT_DISBURSEMENT =
                T.let(
                  :MANAGEMENT_DISBURSEMENT,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              PROGRAM_FUNDING =
                T.let(
                  :PROGRAM_FUNDING,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
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
                  T.all(
                    Symbol,
                    Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACH_ORIGINATION_CANCELLED =
                T.let(
                  :ACH_ORIGINATION_CANCELLED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ACH_ORIGINATION_INITIATED =
                T.let(
                  :ACH_ORIGINATION_INITIATED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ACH_ORIGINATION_PROCESSED =
                T.let(
                  :ACH_ORIGINATION_PROCESSED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ACH_ORIGINATION_RELEASED =
                T.let(
                  :ACH_ORIGINATION_RELEASED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ACH_ORIGINATION_REJECTED =
                T.let(
                  :ACH_ORIGINATION_REJECTED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ACH_ORIGINATION_REVIEWED =
                T.let(
                  :ACH_ORIGINATION_REVIEWED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ACH_ORIGINATION_SETTLED =
                T.let(
                  :ACH_ORIGINATION_SETTLED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ACH_RECEIPT_PROCESSED =
                T.let(
                  :ACH_RECEIPT_PROCESSED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ACH_RECEIPT_RELEASED =
                T.let(
                  :ACH_RECEIPT_RELEASED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ACH_RECEIPT_SETTLED =
                T.let(
                  :ACH_RECEIPT_SETTLED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ACH_RETURN_INITIATED =
                T.let(
                  :ACH_RETURN_INITIATED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ACH_RETURN_PROCESSED =
                T.let(
                  :ACH_RETURN_PROCESSED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ACH_RETURN_REJECTED =
                T.let(
                  :ACH_RETURN_REJECTED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ACH_RETURN_SETTLED =
                T.let(
                  :ACH_RETURN_SETTLED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              AUTHORIZATION =
                T.let(
                  :AUTHORIZATION,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              AUTHORIZATION_ADVICE =
                T.let(
                  :AUTHORIZATION_ADVICE,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              AUTHORIZATION_EXPIRY =
                T.let(
                  :AUTHORIZATION_EXPIRY,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              AUTHORIZATION_REVERSAL =
                T.let(
                  :AUTHORIZATION_REVERSAL,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              BALANCE_INQUIRY =
                T.let(
                  :BALANCE_INQUIRY,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              BILLING_ERROR =
                T.let(
                  :BILLING_ERROR,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              BILLING_ERROR_REVERSAL =
                T.let(
                  :BILLING_ERROR_REVERSAL,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              CARD_TO_CARD =
                T.let(
                  :CARD_TO_CARD,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              CASH_BACK =
                T.let(
                  :CASH_BACK,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              CASH_BACK_REVERSAL =
                T.let(
                  :CASH_BACK_REVERSAL,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              CLEARING =
                T.let(
                  :CLEARING,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              COLLECTION =
                T.let(
                  :COLLECTION,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              CORRECTION_CREDIT =
                T.let(
                  :CORRECTION_CREDIT,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              CORRECTION_DEBIT =
                T.let(
                  :CORRECTION_DEBIT,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              CREDIT_AUTHORIZATION =
                T.let(
                  :CREDIT_AUTHORIZATION,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              CREDIT_AUTHORIZATION_ADVICE =
                T.let(
                  :CREDIT_AUTHORIZATION_ADVICE,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              CURRENCY_CONVERSION =
                T.let(
                  :CURRENCY_CONVERSION,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              CURRENCY_CONVERSION_REVERSAL =
                T.let(
                  :CURRENCY_CONVERSION_REVERSAL,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              DISPUTE_WON =
                T.let(
                  :DISPUTE_WON,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_ACH_CANCELED =
                T.let(
                  :EXTERNAL_ACH_CANCELED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_ACH_INITIATED =
                T.let(
                  :EXTERNAL_ACH_INITIATED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_ACH_RELEASED =
                T.let(
                  :EXTERNAL_ACH_RELEASED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_ACH_REVERSED =
                T.let(
                  :EXTERNAL_ACH_REVERSED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_ACH_SETTLED =
                T.let(
                  :EXTERNAL_ACH_SETTLED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_CHECK_CANCELED =
                T.let(
                  :EXTERNAL_CHECK_CANCELED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_CHECK_INITIATED =
                T.let(
                  :EXTERNAL_CHECK_INITIATED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_CHECK_RELEASED =
                T.let(
                  :EXTERNAL_CHECK_RELEASED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_CHECK_REVERSED =
                T.let(
                  :EXTERNAL_CHECK_REVERSED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_CHECK_SETTLED =
                T.let(
                  :EXTERNAL_CHECK_SETTLED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_FEDNOW_CANCELED =
                T.let(
                  :EXTERNAL_FEDNOW_CANCELED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_FEDNOW_INITIATED =
                T.let(
                  :EXTERNAL_FEDNOW_INITIATED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_FEDNOW_RELEASED =
                T.let(
                  :EXTERNAL_FEDNOW_RELEASED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_FEDNOW_REVERSED =
                T.let(
                  :EXTERNAL_FEDNOW_REVERSED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_FEDNOW_SETTLED =
                T.let(
                  :EXTERNAL_FEDNOW_SETTLED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_RTP_CANCELED =
                T.let(
                  :EXTERNAL_RTP_CANCELED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_RTP_INITIATED =
                T.let(
                  :EXTERNAL_RTP_INITIATED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_RTP_RELEASED =
                T.let(
                  :EXTERNAL_RTP_RELEASED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_RTP_REVERSED =
                T.let(
                  :EXTERNAL_RTP_REVERSED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_RTP_SETTLED =
                T.let(
                  :EXTERNAL_RTP_SETTLED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_TRANSFER_CANCELED =
                T.let(
                  :EXTERNAL_TRANSFER_CANCELED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_TRANSFER_INITIATED =
                T.let(
                  :EXTERNAL_TRANSFER_INITIATED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_TRANSFER_RELEASED =
                T.let(
                  :EXTERNAL_TRANSFER_RELEASED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_TRANSFER_REVERSED =
                T.let(
                  :EXTERNAL_TRANSFER_REVERSED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_TRANSFER_SETTLED =
                T.let(
                  :EXTERNAL_TRANSFER_SETTLED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_WIRE_CANCELED =
                T.let(
                  :EXTERNAL_WIRE_CANCELED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_WIRE_INITIATED =
                T.let(
                  :EXTERNAL_WIRE_INITIATED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_WIRE_RELEASED =
                T.let(
                  :EXTERNAL_WIRE_RELEASED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_WIRE_REVERSED =
                T.let(
                  :EXTERNAL_WIRE_REVERSED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_WIRE_SETTLED =
                T.let(
                  :EXTERNAL_WIRE_SETTLED,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              FINANCIAL_AUTHORIZATION =
                T.let(
                  :FINANCIAL_AUTHORIZATION,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              FINANCIAL_CREDIT_AUTHORIZATION =
                T.let(
                  :FINANCIAL_CREDIT_AUTHORIZATION,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              INTEREST =
                T.let(
                  :INTEREST,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              INTEREST_REVERSAL =
                T.let(
                  :INTEREST_REVERSAL,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              INTERNAL_ADJUSTMENT =
                T.let(
                  :INTERNAL_ADJUSTMENT,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              LATE_PAYMENT =
                T.let(
                  :LATE_PAYMENT,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              LATE_PAYMENT_REVERSAL =
                T.let(
                  :LATE_PAYMENT_REVERSAL,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              LOSS_WRITE_OFF =
                T.let(
                  :LOSS_WRITE_OFF,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              PROVISIONAL_CREDIT =
                T.let(
                  :PROVISIONAL_CREDIT,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              PROVISIONAL_CREDIT_REVERSAL =
                T.let(
                  :PROVISIONAL_CREDIT_REVERSAL,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              SERVICE =
                T.let(
                  :SERVICE,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              RETURN =
                T.let(
                  :RETURN,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              RETURN_REVERSAL =
                T.let(
                  :RETURN_REVERSAL,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              TRANSFER =
                T.let(
                  :TRANSFER,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              TRANSFER_INSUFFICIENT_FUNDS =
                T.let(
                  :TRANSFER_INSUFFICIENT_FUNDS,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              RETURNED_PAYMENT =
                T.let(
                  :RETURNED_PAYMENT,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              RETURNED_PAYMENT_REVERSAL =
                T.let(
                  :RETURNED_PAYMENT_REVERSAL,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              LITHIC_NETWORK_PAYMENT =
                T.let(
                  :LITHIC_NETWORK_PAYMENT,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ANNUAL =
                T.let(
                  :ANNUAL,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ANNUAL_REVERSAL =
                T.let(
                  :ANNUAL_REVERSAL,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :QUARTERLY,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              QUARTERLY_REVERSAL =
                T.let(
                  :QUARTERLY_REVERSAL,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :MONTHLY,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              MONTHLY_REVERSAL =
                T.let(
                  :MONTHLY_REVERSAL,
                  Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
