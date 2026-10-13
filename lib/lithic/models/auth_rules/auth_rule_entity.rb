# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # An entity that an Auth Rule can apply to. The `type` field determines which
      # other fields are present.
      #
      # - `PROGRAM`: the entire card program.
      # - `CARD`: a single card.
      # - `ACCOUNT`: a single account.
      # - `BUSINESS_ACCOUNT`: a single business account.
      # - `CARD_TAG`: every card that carries the given tag (`key` and `value`).
      #
      # `CARD` and `CARD_TAG` entities can only be used with rules on the
      # `AUTHORIZATION`, `THREE_DS_AUTHENTICATION`, `TOKENIZATION` and
      # `CARD_TRANSACTION_UPDATE` event streams. Rules on the other event streams accept
      # `PROGRAM`, `ACCOUNT` and `BUSINESS_ACCOUNT` only.
      module AuthRuleEntity
        extend Lithic::Internal::Type::Union

        discriminator :type

        # The entire card program. Takes no other fields.
        variant :PROGRAM, -> { Lithic::AuthRules::AuthRuleEntity::Program }

        # A single card.
        variant :CARD, -> { Lithic::AuthRules::AuthRuleEntity::Card }

        # A single account.
        variant :ACCOUNT, -> { Lithic::AuthRules::AuthRuleEntity::Account }

        # A single business account.
        variant :BUSINESS_ACCOUNT, -> { Lithic::AuthRules::AuthRuleEntity::BusinessAccount }

        # Every card whose `tags` contain `key` set to `value`.
        variant :CARD_TAG, -> { Lithic::AuthRules::AuthRuleEntity::CardTag }

        class Program < Lithic::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :PROGRAM]
          required :type, const: :PROGRAM

          # @!method initialize(type: :PROGRAM)
          #   The entire card program. Takes no other fields.
          #
          #   @param type [Symbol, :PROGRAM]
        end

        class Card < Lithic::Internal::Type::BaseModel
          # @!attribute token
          #   Token of the card
          #
          #   @return [String]
          required :token, String

          # @!attribute type
          #
          #   @return [Symbol, :CARD]
          required :type, const: :CARD

          # @!method initialize(token:, type: :CARD)
          #   A single card.
          #
          #   @param token [String] Token of the card
          #
          #   @param type [Symbol, :CARD]
        end

        class Account < Lithic::Internal::Type::BaseModel
          # @!attribute token
          #   Token of the account
          #
          #   @return [String]
          required :token, String

          # @!attribute type
          #
          #   @return [Symbol, :ACCOUNT]
          required :type, const: :ACCOUNT

          # @!method initialize(token:, type: :ACCOUNT)
          #   A single account.
          #
          #   @param token [String] Token of the account
          #
          #   @param type [Symbol, :ACCOUNT]
        end

        class BusinessAccount < Lithic::Internal::Type::BaseModel
          # @!attribute token
          #   Token of the business account
          #
          #   @return [String]
          required :token, String

          # @!attribute type
          #
          #   @return [Symbol, :BUSINESS_ACCOUNT]
          required :type, const: :BUSINESS_ACCOUNT

          # @!method initialize(token:, type: :BUSINESS_ACCOUNT)
          #   A single business account.
          #
          #   @param token [String] Token of the business account
          #
          #   @param type [Symbol, :BUSINESS_ACCOUNT]
        end

        class CardTag < Lithic::Internal::Type::BaseModel
          # @!attribute key
          #   Tag key. Keys starting with `lithic.` (case-insensitive) are reserved and
          #   rejected.
          #
          #   @return [String]
          required :key, String

          # @!attribute type
          #
          #   @return [Symbol, :CARD_TAG]
          required :type, const: :CARD_TAG

          # @!attribute value
          #   Tag value
          #
          #   @return [String]
          required :value, String

          # @!method initialize(key:, value:, type: :CARD_TAG)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::AuthRuleEntity::CardTag} for more details.
          #
          #   Every card whose `tags` contain `key` set to `value`.
          #
          #   @param key [String] Tag key. Keys starting with `lithic.` (case-insensitive) are reserved and reject
          #
          #   @param value [String] Tag value
          #
          #   @param type [Symbol, :CARD_TAG]
        end

        # @!method self.variants
        #   @return [Array(Lithic::Models::AuthRules::AuthRuleEntity::Program, Lithic::Models::AuthRules::AuthRuleEntity::Card, Lithic::Models::AuthRules::AuthRuleEntity::Account, Lithic::Models::AuthRules::AuthRuleEntity::BusinessAccount, Lithic::Models::AuthRules::AuthRuleEntity::CardTag)]
      end
    end

    AuthRuleEntity = AuthRules::AuthRuleEntity
  end
end
