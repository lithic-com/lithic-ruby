# typed: strong

module Lithic
  module Models
    module Cards
      class BalanceListResponse < Lithic::BaseModel
        # Globally unique identifier for the financial account that holds this balance.
        sig { returns(String) }
        def token
        end

        sig { params(_: String).returns(String) }
        def token=(_)
        end

        # Funds available for spend in the currency's smallest unit (e.g., cents for USD)
        sig { returns(Integer) }
        def available_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def available_amount=(_)
        end

        # Date and time for when the balance was first created.
        sig { returns(Time) }
        def created
        end

        sig { params(_: Time).returns(Time) }
        def created=(_)
        end

        # 3-character alphabetic ISO 4217 code for the local currency of the balance.
        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        # Globally unique identifier for the last financial transaction event that
        #   impacted this balance.
        sig { returns(String) }
        def last_transaction_event_token
        end

        sig { params(_: String).returns(String) }
        def last_transaction_event_token=(_)
        end

        # Globally unique identifier for the last financial transaction that impacted this
        #   balance.
        sig { returns(String) }
        def last_transaction_token
        end

        sig { params(_: String).returns(String) }
        def last_transaction_token=(_)
        end

        # Funds not available for spend due to card authorizations or pending ACH release.
        #   Shown in the currency's smallest unit (e.g., cents for USD).
        sig { returns(Integer) }
        def pending_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def pending_amount=(_)
        end

        # The sum of available and pending balance in the currency's smallest unit (e.g.,
        #   cents for USD).
        sig { returns(Integer) }
        def total_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def total_amount=(_)
        end

        # Type of financial account.
        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        # Date and time for when the balance was last updated.
        sig { returns(Time) }
        def updated
        end

        sig { params(_: Time).returns(Time) }
        def updated=(_)
        end

        # Balance of a Financial Account
        sig do
          params(
            token: String,
            available_amount: Integer,
            created: Time,
            currency: String,
            last_transaction_event_token: String,
            last_transaction_token: String,
            pending_amount: Integer,
            total_amount: Integer,
            type: Symbol,
            updated: Time
          )
            .returns(T.attached_class)
        end
        def self.new(
          token:,
          available_amount:,
          created:,
          currency:,
          last_transaction_event_token:,
          last_transaction_token:,
          pending_amount:,
          total_amount:,
          type:,
          updated:
        )
        end

        sig do
          override
            .returns(
              {
                token: String,
                available_amount: Integer,
                created: Time,
                currency: String,
                last_transaction_event_token: String,
                last_transaction_token: String,
                pending_amount: Integer,
                total_amount: Integer,
                type: Symbol,
                updated: Time
              }
            )
        end
        def to_hash
        end

        # Type of financial account.
        class Type < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          ISSUING = :ISSUING
          OPERATING = :OPERATING
          RESERVE = :RESERVE
        end
      end
    end
  end
end
