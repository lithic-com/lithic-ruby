# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class AuthRule < Lithic::BaseModel
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

        # @!attribute [r] account_tokens
        #   Array of account_token(s) identifying the accounts that the Auth Rule applies
        #     to. Note that only this field or `card_tokens` can be provided for a given Auth
        #     Rule.
        #
        #   @return [Array<String>, nil]
        optional :account_tokens, Lithic::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :account_tokens

        # @!attribute [r] allowed_countries
        #   Countries in which the Auth Rule permits transactions. Note that Lithic
        #     maintains a list of countries in which all transactions are blocked; "allowing"
        #     those countries in an Auth Rule does not override the Lithic-wide restrictions.
        #
        #   @return [Array<String>, nil]
        optional :allowed_countries, Lithic::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :allowed_countries

        # @!attribute [r] allowed_mcc
        #   Merchant category codes for which the Auth Rule permits transactions.
        #
        #   @return [Array<String>, nil]
        optional :allowed_mcc, Lithic::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :allowed_mcc

        # @!attribute [r] blocked_countries
        #   Countries in which the Auth Rule automatically declines transactions.
        #
        #   @return [Array<String>, nil]
        optional :blocked_countries, Lithic::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :blocked_countries

        # @!attribute [r] blocked_mcc
        #   Merchant category codes for which the Auth Rule automatically declines
        #     transactions.
        #
        #   @return [Array<String>, nil]
        optional :blocked_mcc, Lithic::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :blocked_mcc

        # @!attribute [r] card_tokens
        #   Array of card_token(s) identifying the cards that the Auth Rule applies to. Note
        #     that only this field or `account_tokens` can be provided for a given Auth Rule.
        #
        #   @return [Array<String>, nil]
        optional :card_tokens, Lithic::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :card_tokens

        # @!attribute [r] program_level
        #   Boolean indicating whether the Auth Rule is applied at the program level.
        #
        #   @return [Boolean, nil]
        optional :program_level, Lithic::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :program_level

        # @!parse
        #   # @param token [String]
        #   # @param state [Symbol, Lithic::Models::AuthRules::AuthRule::State]
        #   # @param account_tokens [Array<String>]
        #   # @param allowed_countries [Array<String>]
        #   # @param allowed_mcc [Array<String>]
        #   # @param blocked_countries [Array<String>]
        #   # @param blocked_mcc [Array<String>]
        #   # @param card_tokens [Array<String>]
        #   # @param program_level [Boolean]
        #   #
        #   def initialize(
        #     token:,
        #     state:,
        #     account_tokens: nil,
        #     allowed_countries: nil,
        #     allowed_mcc: nil,
        #     blocked_countries: nil,
        #     blocked_mcc: nil,
        #     card_tokens: nil,
        #     program_level: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Lithic::BaseModel) -> void

        # Indicates whether the Auth Rule is ACTIVE or INACTIVE
        #
        # @see Lithic::Models::AuthRules::AuthRule#state
        module State
          extend Lithic::Enum

          ACTIVE = :ACTIVE
          INACTIVE = :INACTIVE

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end

    AuthRule = AuthRules::AuthRule
  end
end
