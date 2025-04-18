# typed: strong

module Lithic
  module Models
    module AuthRules
      class AuthRule < Lithic::Internal::Type::BaseModel
        # Globally unique identifier.
        sig { returns(String) }
        attr_accessor :token

        # Indicates whether the Auth Rule is ACTIVE or INACTIVE
        sig { returns(Lithic::Models::AuthRules::AuthRule::State::OrSymbol) }
        attr_accessor :state

        # Array of account_token(s) identifying the accounts that the Auth Rule applies
        # to. Note that only this field or `card_tokens` can be provided for a given Auth
        # Rule.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :account_tokens

        sig { params(account_tokens: T::Array[String]).void }
        attr_writer :account_tokens

        # Countries in which the Auth Rule permits transactions. Note that Lithic
        # maintains a list of countries in which all transactions are blocked; "allowing"
        # those countries in an Auth Rule does not override the Lithic-wide restrictions.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :allowed_countries

        sig { params(allowed_countries: T::Array[String]).void }
        attr_writer :allowed_countries

        # Merchant category codes for which the Auth Rule permits transactions.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :allowed_mcc

        sig { params(allowed_mcc: T::Array[String]).void }
        attr_writer :allowed_mcc

        # Countries in which the Auth Rule automatically declines transactions.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :blocked_countries

        sig { params(blocked_countries: T::Array[String]).void }
        attr_writer :blocked_countries

        # Merchant category codes for which the Auth Rule automatically declines
        # transactions.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :blocked_mcc

        sig { params(blocked_mcc: T::Array[String]).void }
        attr_writer :blocked_mcc

        # Array of card_token(s) identifying the cards that the Auth Rule applies to. Note
        # that only this field or `account_tokens` can be provided for a given Auth Rule.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :card_tokens

        sig { params(card_tokens: T::Array[String]).void }
        attr_writer :card_tokens

        # Boolean indicating whether the Auth Rule is applied at the program level.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :program_level

        sig { params(program_level: T::Boolean).void }
        attr_writer :program_level

        sig do
          params(
            token: String,
            state: Lithic::Models::AuthRules::AuthRule::State::OrSymbol,
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
        ); end
        sig do
          override
            .returns(
              {
                token: String,
                state: Lithic::Models::AuthRules::AuthRule::State::OrSymbol,
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
        def to_hash; end

        # Indicates whether the Auth Rule is ACTIVE or INACTIVE
        module State
          extend Lithic::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AuthRules::AuthRule::State) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE = T.let(:ACTIVE, Lithic::Models::AuthRules::AuthRule::State::TaggedSymbol)
          INACTIVE = T.let(:INACTIVE, Lithic::Models::AuthRules::AuthRule::State::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::AuthRules::AuthRule::State::TaggedSymbol]) }
          def self.values; end
        end
      end
    end

    AuthRule = AuthRules::AuthRule
  end
end
