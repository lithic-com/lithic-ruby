# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class AuthRule < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Globally unique identifier.
        #
        #   @return [String]
        required :token, String

        # @!attribute state
        #   Indicates whether the Auth Rule is ACTIVE or INACTIVE
        #
        #   @return [Symbol, Lithic::Models::AuthRules::AuthRule::State]
        required :state, enum: -> { Lithic::Models::AuthRules::AuthRule::State }

        # @!attribute account_tokens
        #   Array of account_token(s) identifying the accounts that the Auth Rule applies
        #   to. Note that only this field or `card_tokens` can be provided for a given Auth
        #   Rule.
        #
        #   @return [Array<String>, nil]
        optional :account_tokens, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute allowed_countries
        #   Countries in which the Auth Rule permits transactions. Note that Lithic
        #   maintains a list of countries in which all transactions are blocked; "allowing"
        #   those countries in an Auth Rule does not override the Lithic-wide restrictions.
        #
        #   @return [Array<String>, nil]
        optional :allowed_countries, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute allowed_mcc
        #   Merchant category codes for which the Auth Rule permits transactions.
        #
        #   @return [Array<String>, nil]
        optional :allowed_mcc, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute blocked_countries
        #   Countries in which the Auth Rule automatically declines transactions.
        #
        #   @return [Array<String>, nil]
        optional :blocked_countries, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute blocked_mcc
        #   Merchant category codes for which the Auth Rule automatically declines
        #   transactions.
        #
        #   @return [Array<String>, nil]
        optional :blocked_mcc, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute card_tokens
        #   Array of card_token(s) identifying the cards that the Auth Rule applies to. Note
        #   that only this field or `account_tokens` can be provided for a given Auth Rule.
        #
        #   @return [Array<String>, nil]
        optional :card_tokens, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute program_level
        #   Boolean indicating whether the Auth Rule is applied at the program level.
        #
        #   @return [Boolean, nil]
        optional :program_level, Lithic::Internal::Type::Boolean

        # @!method initialize(token:, state:, account_tokens: nil, allowed_countries: nil, allowed_mcc: nil, blocked_countries: nil, blocked_mcc: nil, card_tokens: nil, program_level: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::AuthRules::AuthRule} for more details.
        #
        #   @param token [String] Globally unique identifier.
        #
        #   @param state [Symbol, Lithic::Models::AuthRules::AuthRule::State] Indicates whether the Auth Rule is ACTIVE or INACTIVE
        #
        #   @param account_tokens [Array<String>] Array of account_token(s) identifying the accounts that the Auth Rule applies to
        #   ...
        #
        #   @param allowed_countries [Array<String>] Countries in which the Auth Rule permits transactions. Note that Lithic maintain
        #   ...
        #
        #   @param allowed_mcc [Array<String>] Merchant category codes for which the Auth Rule permits transactions.
        #
        #   @param blocked_countries [Array<String>] Countries in which the Auth Rule automatically declines transactions.
        #
        #   @param blocked_mcc [Array<String>] Merchant category codes for which the Auth Rule automatically declines transacti
        #   ...
        #
        #   @param card_tokens [Array<String>] Array of card_token(s) identifying the cards that the Auth Rule applies to. Note
        #   ...
        #
        #   @param program_level [Boolean] Boolean indicating whether the Auth Rule is applied at the program level.

        # Indicates whether the Auth Rule is ACTIVE or INACTIVE
        #
        # @see Lithic::Models::AuthRules::AuthRule#state
        module State
          extend Lithic::Internal::Type::Enum

          ACTIVE = :ACTIVE
          INACTIVE = :INACTIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    AuthRule = AuthRules::AuthRule
  end
end
