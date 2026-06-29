# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      # A single transaction associated with a case. The `category` field identifies
      # whether this is a card transaction or a payment transaction.
      module CaseTransaction
        extend Lithic::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Lithic::TransactionMonitoring::CaseTransaction::CardCaseTransaction,
              Lithic::TransactionMonitoring::CaseTransaction::PaymentCaseTransaction
            )
          end

        class CardCaseTransaction < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::TransactionMonitoring::CaseTransaction::CardCaseTransaction,
                Lithic::Internal::AnyHash
              )
            end

          # Globally unique identifier for the card transaction
          sig { returns(String) }
          attr_accessor :token

          # Token of the account the transaction belongs to
          sig { returns(String) }
          attr_accessor :account_token

          # Date and time at which the transaction was added to the case
          sig { returns(Time) }
          attr_accessor :added_at

          # Token of the card the transaction was made on
          sig { returns(String) }
          attr_accessor :card_token

          sig { returns(Symbol) }
          attr_accessor :category

          # Date and time at which the transaction was created
          sig { returns(Time) }
          attr_accessor :transaction_created_at

          # A card transaction associated with a case
          sig do
            params(
              token: String,
              account_token: String,
              added_at: Time,
              card_token: String,
              transaction_created_at: Time,
              category: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Globally unique identifier for the card transaction
            token:,
            # Token of the account the transaction belongs to
            account_token:,
            # Date and time at which the transaction was added to the case
            added_at:,
            # Token of the card the transaction was made on
            card_token:,
            # Date and time at which the transaction was created
            transaction_created_at:,
            category: :CARD
          )
          end

          sig do
            override.returns(
              {
                token: String,
                account_token: String,
                added_at: Time,
                card_token: String,
                category: Symbol,
                transaction_created_at: Time
              }
            )
          end
          def to_hash
          end
        end

        class PaymentCaseTransaction < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::TransactionMonitoring::CaseTransaction::PaymentCaseTransaction,
                Lithic::Internal::AnyHash
              )
            end

          # Globally unique identifier for the payment transaction
          sig { returns(String) }
          attr_accessor :token

          # Date and time at which the transaction was added to the case
          sig { returns(Time) }
          attr_accessor :added_at

          sig { returns(Symbol) }
          attr_accessor :category

          # Token of the financial account the payment belongs to
          sig { returns(String) }
          attr_accessor :financial_account_token

          # Date and time at which the transaction was created
          sig { returns(Time) }
          attr_accessor :transaction_created_at

          # Token of the account the payment belongs to, if applicable
          sig { returns(T.nilable(String)) }
          attr_reader :account_token

          sig { params(account_token: String).void }
          attr_writer :account_token

          # A payment (ACH) transaction associated with a case
          sig do
            params(
              token: String,
              added_at: Time,
              financial_account_token: String,
              transaction_created_at: Time,
              account_token: String,
              category: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Globally unique identifier for the payment transaction
            token:,
            # Date and time at which the transaction was added to the case
            added_at:,
            # Token of the financial account the payment belongs to
            financial_account_token:,
            # Date and time at which the transaction was created
            transaction_created_at:,
            # Token of the account the payment belongs to, if applicable
            account_token: nil,
            category: :PAYMENT
          )
          end

          sig do
            override.returns(
              {
                token: String,
                added_at: Time,
                category: Symbol,
                financial_account_token: String,
                transaction_created_at: Time,
                account_token: String
              }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[Lithic::TransactionMonitoring::CaseTransaction::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
