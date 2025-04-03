# typed: strong

module Lithic
  module Models
    module Cards
      class AggregateBalanceListResponse < Lithic::Internal::Type::BaseModel
        # Funds available for spend in the currency's smallest unit (e.g., cents for USD)
        sig { returns(Integer) }
        attr_accessor :available_amount

        # Date and time for when the balance was first created.
        sig { returns(Time) }
        attr_accessor :created

        # 3-character alphabetic ISO 4217 code for the local currency of the balance.
        sig { returns(String) }
        attr_accessor :currency

        # Globally unique identifier for the card that had its balance updated most
        #   recently
        sig { returns(String) }
        attr_accessor :last_card_token

        # Globally unique identifier for the last transaction event that impacted this
        #   balance
        sig { returns(String) }
        attr_accessor :last_transaction_event_token

        # Globally unique identifier for the last transaction that impacted this balance
        sig { returns(String) }
        attr_accessor :last_transaction_token

        # Funds not available for spend due to card authorizations or pending ACH release.
        #   Shown in the currency's smallest unit (e.g., cents for USD)
        sig { returns(Integer) }
        attr_accessor :pending_amount

        # The sum of available and pending balance in the currency's smallest unit (e.g.,
        #   cents for USD)
        sig { returns(Integer) }
        attr_accessor :total_amount

        # Date and time for when the balance was last updated.
        sig { returns(Time) }
        attr_accessor :updated

        # Card Aggregate Balance across all end-user accounts
        sig do
          params(
            available_amount: Integer,
            created: Time,
            currency: String,
            last_card_token: String,
            last_transaction_event_token: String,
            last_transaction_token: String,
            pending_amount: Integer,
            total_amount: Integer,
            updated: Time
          )
            .returns(T.attached_class)
        end
        def self.new(
          available_amount:,
          created:,
          currency:,
          last_card_token:,
          last_transaction_event_token:,
          last_transaction_token:,
          pending_amount:,
          total_amount:,
          updated:
        )
        end

        sig do
          override
            .returns(
              {
                available_amount: Integer,
                created: Time,
                currency: String,
                last_card_token: String,
                last_transaction_event_token: String,
                last_transaction_token: String,
                pending_amount: Integer,
                total_amount: Integer,
                updated: Time
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
