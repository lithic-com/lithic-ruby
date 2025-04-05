# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      module Statements
        class StatementLineItems < Lithic::Internal::Type::BaseModel
          sig { returns(T::Array[Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data]) }
          attr_accessor :data

          sig { returns(T::Boolean) }
          attr_accessor :has_more

          sig do
            params(
              data: T::Array[T.any(Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data, Lithic::Internal::AnyHash)],
              has_more: T::Boolean
            )
              .returns(T.attached_class)
          end
          def self.new(data:, has_more:); end

          sig do
            override
              .returns(
                {
                  data: T::Array[Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data],
                  has_more: T::Boolean
                }
              )
          end
          def to_hash; end

          class Data < Lithic::Internal::Type::BaseModel
            # Globally unique identifier for a Statement Line Item
            sig { returns(String) }
            attr_accessor :token

            # Transaction amount in cents
            sig { returns(Integer) }
            attr_accessor :amount

            sig { returns(Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol) }
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

            sig { returns(Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol) }
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
                category: Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::Category::OrSymbol,
                created: Time,
                currency: String,
                effective_date: Date,
                event_type: Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::OrSymbol,
                financial_account_token: String,
                financial_transaction_event_token: String,
                financial_transaction_token: String,
                card_token: String,
                descriptor: String
              )
                .returns(T.attached_class)
            end
            def self.new(
              token:,
              amount:,
              category:,
              created:,
              currency:,
              effective_date:,
              event_type:,
              financial_account_token:,
              financial_transaction_event_token:,
              financial_transaction_token:,
              card_token: nil,
              descriptor: nil
            ); end
            sig do
              override
                .returns(
                  {
                    token: String,
                    amount: Integer,
                    category: Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol,
                    created: Time,
                    currency: String,
                    effective_date: Date,
                    event_type: Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol,
                    financial_account_token: String,
                    financial_transaction_event_token: String,
                    financial_transaction_token: String,
                    card_token: String,
                    descriptor: String
                  }
                )
            end
            def to_hash; end

            module Category
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::Category) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                  )
                end

              ACH =
                T.let(
                  :ACH,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              BALANCE_OR_FUNDING =
                T.let(
                  :BALANCE_OR_FUNDING,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              CARD =
                T.let(
                  :CARD,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              EXTERNAL_ACH =
                T.let(
                  :EXTERNAL_ACH,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              EXTERNAL_CHECK =
                T.let(
                  :EXTERNAL_CHECK,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              EXTERNAL_TRANSFER =
                T.let(
                  :EXTERNAL_TRANSFER,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              EXTERNAL_WIRE =
                T.let(
                  :EXTERNAL_WIRE,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              MANAGEMENT_ADJUSTMENT =
                T.let(
                  :MANAGEMENT_ADJUSTMENT,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              MANAGEMENT_DISPUTE =
                T.let(
                  :MANAGEMENT_DISPUTE,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              MANAGEMENT_FEE =
                T.let(
                  :MANAGEMENT_FEE,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )
              MANAGEMENT_REWARD =
                T.let(
                  :MANAGEMENT_REWARD,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::Category::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            module EventType
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                  )
                end

              ACH_ORIGINATION_CANCELLED =
                T.let(
                  :ACH_ORIGINATION_CANCELLED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ACH_ORIGINATION_INITIATED =
                T.let(
                  :ACH_ORIGINATION_INITIATED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ACH_ORIGINATION_PROCESSED =
                T.let(
                  :ACH_ORIGINATION_PROCESSED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ACH_ORIGINATION_RELEASED =
                T.let(
                  :ACH_ORIGINATION_RELEASED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ACH_ORIGINATION_REVIEWED =
                T.let(
                  :ACH_ORIGINATION_REVIEWED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ACH_ORIGINATION_SETTLED =
                T.let(
                  :ACH_ORIGINATION_SETTLED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ACH_RECEIPT_PROCESSED =
                T.let(
                  :ACH_RECEIPT_PROCESSED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ACH_RECEIPT_SETTLED =
                T.let(
                  :ACH_RECEIPT_SETTLED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ACH_RETURN_INITIATED =
                T.let(
                  :ACH_RETURN_INITIATED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ACH_RETURN_PROCESSED =
                T.let(
                  :ACH_RETURN_PROCESSED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              ACH_RETURN_SETTLED =
                T.let(
                  :ACH_RETURN_SETTLED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              AUTHORIZATION =
                T.let(
                  :AUTHORIZATION,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              AUTHORIZATION_ADVICE =
                T.let(
                  :AUTHORIZATION_ADVICE,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              AUTHORIZATION_EXPIRY =
                T.let(
                  :AUTHORIZATION_EXPIRY,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              AUTHORIZATION_REVERSAL =
                T.let(
                  :AUTHORIZATION_REVERSAL,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              BALANCE_INQUIRY =
                T.let(
                  :BALANCE_INQUIRY,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              BILLING_ERROR =
                T.let(
                  :BILLING_ERROR,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              BILLING_ERROR_REVERSAL =
                T.let(
                  :BILLING_ERROR_REVERSAL,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              CARD_TO_CARD =
                T.let(
                  :CARD_TO_CARD,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              CASH_BACK =
                T.let(
                  :CASH_BACK,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              CASH_BACK_REVERSAL =
                T.let(
                  :CASH_BACK_REVERSAL,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              CLEARING =
                T.let(
                  :CLEARING,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              CORRECTION_CREDIT =
                T.let(
                  :CORRECTION_CREDIT,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              CORRECTION_DEBIT =
                T.let(
                  :CORRECTION_DEBIT,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              CREDIT_AUTHORIZATION =
                T.let(
                  :CREDIT_AUTHORIZATION,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              CREDIT_AUTHORIZATION_ADVICE =
                T.let(
                  :CREDIT_AUTHORIZATION_ADVICE,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              CURRENCY_CONVERSION =
                T.let(
                  :CURRENCY_CONVERSION,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              CURRENCY_CONVERSION_REVERSAL =
                T.let(
                  :CURRENCY_CONVERSION_REVERSAL,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              DISPUTE_WON =
                T.let(
                  :DISPUTE_WON,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_ACH_CANCELED =
                T.let(
                  :EXTERNAL_ACH_CANCELED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_ACH_INITIATED =
                T.let(
                  :EXTERNAL_ACH_INITIATED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_ACH_RELEASED =
                T.let(
                  :EXTERNAL_ACH_RELEASED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_ACH_REVERSED =
                T.let(
                  :EXTERNAL_ACH_REVERSED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_ACH_SETTLED =
                T.let(
                  :EXTERNAL_ACH_SETTLED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_CHECK_CANCELED =
                T.let(
                  :EXTERNAL_CHECK_CANCELED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_CHECK_INITIATED =
                T.let(
                  :EXTERNAL_CHECK_INITIATED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_CHECK_RELEASED =
                T.let(
                  :EXTERNAL_CHECK_RELEASED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_CHECK_REVERSED =
                T.let(
                  :EXTERNAL_CHECK_REVERSED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_CHECK_SETTLED =
                T.let(
                  :EXTERNAL_CHECK_SETTLED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_TRANSFER_CANCELED =
                T.let(
                  :EXTERNAL_TRANSFER_CANCELED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_TRANSFER_INITIATED =
                T.let(
                  :EXTERNAL_TRANSFER_INITIATED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_TRANSFER_RELEASED =
                T.let(
                  :EXTERNAL_TRANSFER_RELEASED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_TRANSFER_REVERSED =
                T.let(
                  :EXTERNAL_TRANSFER_REVERSED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_TRANSFER_SETTLED =
                T.let(
                  :EXTERNAL_TRANSFER_SETTLED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_WIRE_CANCELED =
                T.let(
                  :EXTERNAL_WIRE_CANCELED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_WIRE_INITIATED =
                T.let(
                  :EXTERNAL_WIRE_INITIATED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_WIRE_RELEASED =
                T.let(
                  :EXTERNAL_WIRE_RELEASED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_WIRE_REVERSED =
                T.let(
                  :EXTERNAL_WIRE_REVERSED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              EXTERNAL_WIRE_SETTLED =
                T.let(
                  :EXTERNAL_WIRE_SETTLED,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              FINANCIAL_AUTHORIZATION =
                T.let(
                  :FINANCIAL_AUTHORIZATION,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              FINANCIAL_CREDIT_AUTHORIZATION =
                T.let(
                  :FINANCIAL_CREDIT_AUTHORIZATION,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              INTEREST =
                T.let(
                  :INTEREST,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              INTEREST_REVERSAL =
                T.let(
                  :INTEREST_REVERSAL,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              INTERNAL_ADJUSTMENT =
                T.let(
                  :INTERNAL_ADJUSTMENT,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              LATE_PAYMENT =
                T.let(
                  :LATE_PAYMENT,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              LATE_PAYMENT_REVERSAL =
                T.let(
                  :LATE_PAYMENT_REVERSAL,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              PROVISIONAL_CREDIT =
                T.let(
                  :PROVISIONAL_CREDIT,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              PROVISIONAL_CREDIT_REVERSAL =
                T.let(
                  :PROVISIONAL_CREDIT_REVERSAL,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              RETURN =
                T.let(
                  :RETURN,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              RETURN_REVERSAL =
                T.let(
                  :RETURN_REVERSAL,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              TRANSFER =
                T.let(
                  :TRANSFER,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              TRANSFER_INSUFFICIENT_FUNDS =
                T.let(
                  :TRANSFER_INSUFFICIENT_FUNDS,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              RETURNED_PAYMENT =
                T.let(
                  :RETURNED_PAYMENT,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )
              RETURNED_PAYMENT_REVERSAL =
                T.let(
                  :RETURNED_PAYMENT_REVERSAL,
                  Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data::EventType::TaggedSymbol]
                  )
              end
              def self.values; end
            end
          end
        end
      end

      StatementLineItems = Statements::StatementLineItems
    end
  end
end
