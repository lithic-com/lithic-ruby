# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      class CaseCard < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::TransactionMonitoring::CaseCard,
              Lithic::Internal::AnyHash
            )
          end

        # Token of the account the card belongs to
        sig { returns(String) }
        attr_accessor :account_token

        # Token of the card
        sig { returns(String) }
        attr_accessor :card_token

        # Number of the card's transactions associated with the case
        sig { returns(Integer) }
        attr_accessor :transaction_count

        # Summary of a card's involvement in a case, aggregated across the case's
        # transactions
        sig do
          params(
            account_token: String,
            card_token: String,
            transaction_count: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Token of the account the card belongs to
          account_token:,
          # Token of the card
          card_token:,
          # Number of the card's transactions associated with the case
          transaction_count:
        )
        end

        sig do
          override.returns(
            {
              account_token: String,
              card_token: String,
              transaction_count: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
