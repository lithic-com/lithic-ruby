# typed: strong

module Lithic
  module Models
    AuthRuleEntity = AuthRules::AuthRuleEntity

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

        Variants =
          T.type_alias do
            T.any(
              Lithic::AuthRules::AuthRuleEntity::Program,
              Lithic::AuthRules::AuthRuleEntity::Card,
              Lithic::AuthRules::AuthRuleEntity::Account,
              Lithic::AuthRules::AuthRuleEntity::BusinessAccount,
              Lithic::AuthRules::AuthRuleEntity::CardTag
            )
          end

        class Program < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::AuthRuleEntity::Program,
                Lithic::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :type

          # The entire card program. Takes no other fields.
          sig { params(type: Symbol).returns(T.attached_class) }
          def self.new(type: :PROGRAM)
          end

          sig { override.returns({ type: Symbol }) }
          def to_hash
          end
        end

        class Card < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::AuthRuleEntity::Card,
                Lithic::Internal::AnyHash
              )
            end

          # Token of the card
          sig { returns(String) }
          attr_accessor :token

          sig { returns(Symbol) }
          attr_accessor :type

          # A single card.
          sig { params(token: String, type: Symbol).returns(T.attached_class) }
          def self.new(
            # Token of the card
            token:,
            type: :CARD
          )
          end

          sig { override.returns({ token: String, type: Symbol }) }
          def to_hash
          end
        end

        class Account < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::AuthRuleEntity::Account,
                Lithic::Internal::AnyHash
              )
            end

          # Token of the account
          sig { returns(String) }
          attr_accessor :token

          sig { returns(Symbol) }
          attr_accessor :type

          # A single account.
          sig { params(token: String, type: Symbol).returns(T.attached_class) }
          def self.new(
            # Token of the account
            token:,
            type: :ACCOUNT
          )
          end

          sig { override.returns({ token: String, type: Symbol }) }
          def to_hash
          end
        end

        class BusinessAccount < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::AuthRuleEntity::BusinessAccount,
                Lithic::Internal::AnyHash
              )
            end

          # Token of the business account
          sig { returns(String) }
          attr_accessor :token

          sig { returns(Symbol) }
          attr_accessor :type

          # A single business account.
          sig { params(token: String, type: Symbol).returns(T.attached_class) }
          def self.new(
            # Token of the business account
            token:,
            type: :BUSINESS_ACCOUNT
          )
          end

          sig { override.returns({ token: String, type: Symbol }) }
          def to_hash
          end
        end

        class CardTag < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::AuthRuleEntity::CardTag,
                Lithic::Internal::AnyHash
              )
            end

          # Tag key. Keys starting with `lithic.` (case-insensitive) are reserved and
          # rejected.
          sig { returns(String) }
          attr_accessor :key

          sig { returns(Symbol) }
          attr_accessor :type

          # Tag value
          sig { returns(String) }
          attr_accessor :value

          # Every card whose `tags` contain `key` set to `value`.
          sig do
            params(key: String, value: String, type: Symbol).returns(
              T.attached_class
            )
          end
          def self.new(
            # Tag key. Keys starting with `lithic.` (case-insensitive) are reserved and
            # rejected.
            key:,
            # Tag value
            value:,
            type: :CARD_TAG
          )
          end

          sig { override.returns({ key: String, type: Symbol, value: String }) }
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[Lithic::AuthRules::AuthRuleEntity::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
