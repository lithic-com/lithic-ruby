# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      class CaseTransaction < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::TransactionMonitoring::CaseTransaction,
              Lithic::Internal::AnyHash
            )
          end

        # Globally unique identifier for the transaction
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

        # Date and time at which the transaction was created
        sig { returns(Time) }
        attr_accessor :transaction_created_at

        # A single transaction associated with a case
        sig do
          params(
            token: String,
            account_token: String,
            added_at: Time,
            card_token: String,
            transaction_created_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier for the transaction
          token:,
          # Token of the account the transaction belongs to
          account_token:,
          # Date and time at which the transaction was added to the case
          added_at:,
          # Token of the card the transaction was made on
          card_token:,
          # Date and time at which the transaction was created
          transaction_created_at:
        )
        end

        sig do
          override.returns(
            {
              token: String,
              account_token: String,
              added_at: Time,
              card_token: String,
              transaction_created_at: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
