# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      module Statements
        class StatementLineItems < Lithic::BaseModel
          sig { returns(T::Array[Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data]) }
          def data
          end

          sig do
            params(_: T::Array[Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data])
              .returns(T::Array[Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data])
          end
          def data=(_)
          end

          sig { returns(T::Boolean) }
          def has_more
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def has_more=(_)
          end

          sig do
            params(
              data: T::Array[Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data],
              has_more: T::Boolean
            )
              .returns(T.attached_class)
          end
          def self.new(data:, has_more:)
          end

          sig do
            override
              .returns(
                {
                  data: T::Array[Lithic::Models::FinancialAccounts::Statements::StatementLineItems::Data],
                  has_more: T::Boolean
                }
              )
          end
          def to_hash
          end

          class Data < Lithic::BaseModel
            # Globally unique identifier for a Statement Line Item
            sig { returns(String) }
            def token
            end

            sig { params(_: String).returns(String) }
            def token=(_)
            end

            # Transaction amount in cents
            sig { returns(Integer) }
            def amount
            end

            sig { params(_: Integer).returns(Integer) }
            def amount=(_)
            end

            sig { returns(Symbol) }
            def category
            end

            sig { params(_: Symbol).returns(Symbol) }
            def category=(_)
            end

            # Timestamp of when the line item was generated
            sig { returns(Time) }
            def created
            end

            sig { params(_: Time).returns(Time) }
            def created=(_)
            end

            # 3-character alphabetic ISO 4217 code for the settling currency of the
            #   transaction
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # Date that the transaction effected the account balance
            sig { returns(Date) }
            def effective_date
            end

            sig { params(_: Date).returns(Date) }
            def effective_date=(_)
            end

            sig { returns(Symbol) }
            def event_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def event_type=(_)
            end

            # Globally unique identifier for a financial account
            sig { returns(String) }
            def financial_account_token
            end

            sig { params(_: String).returns(String) }
            def financial_account_token=(_)
            end

            # Globally unique identifier for a financial transaction event
            sig { returns(String) }
            def financial_transaction_event_token
            end

            sig { params(_: String).returns(String) }
            def financial_transaction_event_token=(_)
            end

            # Globally unique identifier for a financial transaction
            sig { returns(String) }
            def financial_transaction_token
            end

            sig { params(_: String).returns(String) }
            def financial_transaction_token=(_)
            end

            # Globally unique identifier for a card
            sig { returns(T.nilable(String)) }
            def card_token
            end

            sig { params(_: String).returns(String) }
            def card_token=(_)
            end

            sig { returns(T.nilable(String)) }
            def descriptor
            end

            sig { params(_: String).returns(String) }
            def descriptor=(_)
            end

            sig do
              params(
                token: String,
                amount: Integer,
                category: Symbol,
                created: Time,
                currency: String,
                effective_date: Date,
                event_type: Symbol,
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
            )
            end

            sig do
              override
                .returns(
                  {
                    token: String,
                    amount: Integer,
                    category: Symbol,
                    created: Time,
                    currency: String,
                    effective_date: Date,
                    event_type: Symbol,
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

            class Category < Lithic::Enum
              abstract!

              Value = type_template(:out) { {fixed: Symbol} }

              ACH = :ACH
              BALANCE_OR_FUNDING = :BALANCE_OR_FUNDING
              CARD = :CARD
              EXTERNAL_ACH = :EXTERNAL_ACH
              EXTERNAL_CHECK = :EXTERNAL_CHECK
              EXTERNAL_TRANSFER = :EXTERNAL_TRANSFER
              EXTERNAL_WIRE = :EXTERNAL_WIRE
              MANAGEMENT_ADJUSTMENT = :MANAGEMENT_ADJUSTMENT
              MANAGEMENT_DISPUTE = :MANAGEMENT_DISPUTE
              MANAGEMENT_FEE = :MANAGEMENT_FEE
              MANAGEMENT_REWARD = :MANAGEMENT_REWARD
            end

            class EventType < Lithic::Enum
              abstract!

              Value = type_template(:out) { {fixed: Symbol} }

              ACH_ORIGINATION_CANCELLED = :ACH_ORIGINATION_CANCELLED
              ACH_ORIGINATION_INITIATED = :ACH_ORIGINATION_INITIATED
              ACH_ORIGINATION_PROCESSED = :ACH_ORIGINATION_PROCESSED
              ACH_ORIGINATION_RELEASED = :ACH_ORIGINATION_RELEASED
              ACH_ORIGINATION_REVIEWED = :ACH_ORIGINATION_REVIEWED
              ACH_ORIGINATION_SETTLED = :ACH_ORIGINATION_SETTLED
              ACH_RECEIPT_PROCESSED = :ACH_RECEIPT_PROCESSED
              ACH_RECEIPT_SETTLED = :ACH_RECEIPT_SETTLED
              ACH_RETURN_INITIATED = :ACH_RETURN_INITIATED
              ACH_RETURN_PROCESSED = :ACH_RETURN_PROCESSED
              ACH_RETURN_SETTLED = :ACH_RETURN_SETTLED
              AUTHORIZATION = :AUTHORIZATION
              AUTHORIZATION_ADVICE = :AUTHORIZATION_ADVICE
              AUTHORIZATION_EXPIRY = :AUTHORIZATION_EXPIRY
              AUTHORIZATION_REVERSAL = :AUTHORIZATION_REVERSAL
              BALANCE_INQUIRY = :BALANCE_INQUIRY
              BILLING_ERROR = :BILLING_ERROR
              BILLING_ERROR_REVERSAL = :BILLING_ERROR_REVERSAL
              CARD_TO_CARD = :CARD_TO_CARD
              CASH_BACK = :CASH_BACK
              CASH_BACK_REVERSAL = :CASH_BACK_REVERSAL
              CLEARING = :CLEARING
              CORRECTION_CREDIT = :CORRECTION_CREDIT
              CORRECTION_DEBIT = :CORRECTION_DEBIT
              CREDIT_AUTHORIZATION = :CREDIT_AUTHORIZATION
              CREDIT_AUTHORIZATION_ADVICE = :CREDIT_AUTHORIZATION_ADVICE
              CURRENCY_CONVERSION = :CURRENCY_CONVERSION
              CURRENCY_CONVERSION_REVERSAL = :CURRENCY_CONVERSION_REVERSAL
              DISPUTE_WON = :DISPUTE_WON
              EXTERNAL_ACH_CANCELED = :EXTERNAL_ACH_CANCELED
              EXTERNAL_ACH_INITIATED = :EXTERNAL_ACH_INITIATED
              EXTERNAL_ACH_RELEASED = :EXTERNAL_ACH_RELEASED
              EXTERNAL_ACH_REVERSED = :EXTERNAL_ACH_REVERSED
              EXTERNAL_ACH_SETTLED = :EXTERNAL_ACH_SETTLED
              EXTERNAL_CHECK_CANCELED = :EXTERNAL_CHECK_CANCELED
              EXTERNAL_CHECK_INITIATED = :EXTERNAL_CHECK_INITIATED
              EXTERNAL_CHECK_RELEASED = :EXTERNAL_CHECK_RELEASED
              EXTERNAL_CHECK_REVERSED = :EXTERNAL_CHECK_REVERSED
              EXTERNAL_CHECK_SETTLED = :EXTERNAL_CHECK_SETTLED
              EXTERNAL_TRANSFER_CANCELED = :EXTERNAL_TRANSFER_CANCELED
              EXTERNAL_TRANSFER_INITIATED = :EXTERNAL_TRANSFER_INITIATED
              EXTERNAL_TRANSFER_RELEASED = :EXTERNAL_TRANSFER_RELEASED
              EXTERNAL_TRANSFER_REVERSED = :EXTERNAL_TRANSFER_REVERSED
              EXTERNAL_TRANSFER_SETTLED = :EXTERNAL_TRANSFER_SETTLED
              EXTERNAL_WIRE_CANCELED = :EXTERNAL_WIRE_CANCELED
              EXTERNAL_WIRE_INITIATED = :EXTERNAL_WIRE_INITIATED
              EXTERNAL_WIRE_RELEASED = :EXTERNAL_WIRE_RELEASED
              EXTERNAL_WIRE_REVERSED = :EXTERNAL_WIRE_REVERSED
              EXTERNAL_WIRE_SETTLED = :EXTERNAL_WIRE_SETTLED
              FINANCIAL_AUTHORIZATION = :FINANCIAL_AUTHORIZATION
              FINANCIAL_CREDIT_AUTHORIZATION = :FINANCIAL_CREDIT_AUTHORIZATION
              INTEREST = :INTEREST
              INTEREST_REVERSAL = :INTEREST_REVERSAL
              INTERNAL_ADJUSTMENT = :INTERNAL_ADJUSTMENT
              LATE_PAYMENT = :LATE_PAYMENT
              LATE_PAYMENT_REVERSAL = :LATE_PAYMENT_REVERSAL
              PROVISIONAL_CREDIT = :PROVISIONAL_CREDIT
              PROVISIONAL_CREDIT_REVERSAL = :PROVISIONAL_CREDIT_REVERSAL
              RETURN = :RETURN
              RETURN_REVERSAL = :RETURN_REVERSAL
              TRANSFER = :TRANSFER
              TRANSFER_INSUFFICIENT_FUNDS = :TRANSFER_INSUFFICIENT_FUNDS
              RETURNED_PAYMENT = :RETURNED_PAYMENT
              RETURNED_PAYMENT_REVERSAL = :RETURNED_PAYMENT_REVERSAL
            end
          end
        end
      end

      StatementLineItems = Statements::StatementLineItems
    end
  end
end
