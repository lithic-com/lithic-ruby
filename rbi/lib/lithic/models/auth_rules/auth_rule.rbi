# typed: strong

module Lithic
  module Models
    module AuthRules
      class AuthRule < Lithic::BaseModel
        # Globally unique identifier.
        sig { returns(String) }
        def token
        end

        sig { params(_: String).returns(String) }
        def token=(_)
        end

        # Indicates whether the Auth Rule is ACTIVE or INACTIVE
        sig { returns(Symbol) }
        def state
        end

        sig { params(_: Symbol).returns(Symbol) }
        def state=(_)
        end

        # Array of account_token(s) identifying the accounts that the Auth Rule applies
        #   to. Note that only this field or `card_tokens` can be provided for a given Auth
        #   Rule.
        sig { returns(T.nilable(T::Array[String])) }
        def account_tokens
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def account_tokens=(_)
        end

        # Countries in which the Auth Rule permits transactions. Note that Lithic
        #   maintains a list of countries in which all transactions are blocked; "allowing"
        #   those countries in an Auth Rule does not override the Lithic-wide restrictions.
        sig { returns(T.nilable(T::Array[String])) }
        def allowed_countries
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def allowed_countries=(_)
        end

        # Merchant category codes for which the Auth Rule permits transactions.
        sig { returns(T.nilable(T::Array[String])) }
        def allowed_mcc
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def allowed_mcc=(_)
        end

        # Countries in which the Auth Rule automatically declines transactions.
        sig { returns(T.nilable(T::Array[String])) }
        def blocked_countries
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def blocked_countries=(_)
        end

        # Merchant category codes for which the Auth Rule automatically declines
        #   transactions.
        sig { returns(T.nilable(T::Array[String])) }
        def blocked_mcc
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def blocked_mcc=(_)
        end

        # Array of card_token(s) identifying the cards that the Auth Rule applies to. Note
        #   that only this field or `account_tokens` can be provided for a given Auth Rule.
        sig { returns(T.nilable(T::Array[String])) }
        def card_tokens
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def card_tokens=(_)
        end

        # Boolean indicating whether the Auth Rule is applied at the program level.
        sig { returns(T.nilable(T::Boolean)) }
        def program_level
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def program_level=(_)
        end

        sig do
          params(
            token: String,
            state: Symbol,
            account_tokens: T::Array[String],
            allowed_countries: T::Array[String],
            allowed_mcc: T::Array[String],
            blocked_countries: T::Array[String],
            blocked_mcc: T::Array[String],
            card_tokens: T::Array[String],
            program_level: T::Boolean
          )
            .returns(T.attached_class)
        end
        def self.new(
          token:,
          state:,
          account_tokens: nil,
          allowed_countries: nil,
          allowed_mcc: nil,
          blocked_countries: nil,
          blocked_mcc: nil,
          card_tokens: nil,
          program_level: nil
        )
        end

        sig do
          override
            .returns(
              {
                token: String,
                state: Symbol,
                account_tokens: T::Array[String],
                allowed_countries: T::Array[String],
                allowed_mcc: T::Array[String],
                blocked_countries: T::Array[String],
                blocked_mcc: T::Array[String],
                card_tokens: T::Array[String],
                program_level: T::Boolean
              }
            )
        end
        def to_hash
        end

        # Indicates whether the Auth Rule is ACTIVE or INACTIVE
        class State < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          ACTIVE = :ACTIVE
          INACTIVE = :INACTIVE
        end
      end
    end

    AuthRule = AuthRules::AuthRule
  end
end
