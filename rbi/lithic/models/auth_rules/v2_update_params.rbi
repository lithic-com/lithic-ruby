# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2UpdateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Lithic::AuthRules::V2UpdateParams, Lithic::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :auth_rule_token

        sig do
          returns(
            T.any(
              Lithic::AuthRules::V2UpdateParams::Body::AccountLevelRule,
              Lithic::AuthRules::V2UpdateParams::Body::CardLevelRule,
              Lithic::AuthRules::V2UpdateParams::Body::ProgramLevelRule
            )
          )
        end
        attr_accessor :body

        sig do
          params(
            auth_rule_token: String,
            body:
              T.any(
                Lithic::AuthRules::V2UpdateParams::Body::AccountLevelRule::OrHash,
                Lithic::AuthRules::V2UpdateParams::Body::CardLevelRule::OrHash,
                Lithic::AuthRules::V2UpdateParams::Body::ProgramLevelRule::OrHash
              ),
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(auth_rule_token:, body:, request_options: {})
        end

        sig do
          override.returns(
            {
              auth_rule_token: String,
              body:
                T.any(
                  Lithic::AuthRules::V2UpdateParams::Body::AccountLevelRule,
                  Lithic::AuthRules::V2UpdateParams::Body::CardLevelRule,
                  Lithic::AuthRules::V2UpdateParams::Body::ProgramLevelRule
                ),
              request_options: Lithic::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Body
          extend Lithic::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Lithic::AuthRules::V2UpdateParams::Body::AccountLevelRule,
                Lithic::AuthRules::V2UpdateParams::Body::CardLevelRule,
                Lithic::AuthRules::V2UpdateParams::Body::ProgramLevelRule
              )
            end

          class AccountLevelRule < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::AuthRules::V2UpdateParams::Body::AccountLevelRule,
                  Lithic::Internal::AnyHash
                )
              end

            # Account tokens to which the Auth Rule applies.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :account_tokens

            sig { params(account_tokens: T::Array[String]).void }
            attr_writer :account_tokens

            # Business Account tokens to which the Auth Rule applies.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :business_account_tokens

            sig { params(business_account_tokens: T::Array[String]).void }
            attr_writer :business_account_tokens

            # Auth Rule Name
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # The desired state of the Auth Rule.
            #
            # Note that only deactivating an Auth Rule through this endpoint is supported at
            # this time. If you need to (re-)activate an Auth Rule the /promote endpoint
            # should be used to promote a draft to the currently active version.
            sig do
              returns(
                T.nilable(
                  Lithic::AuthRules::V2UpdateParams::Body::AccountLevelRule::State::OrSymbol
                )
              )
            end
            attr_reader :state

            sig do
              params(
                state:
                  Lithic::AuthRules::V2UpdateParams::Body::AccountLevelRule::State::OrSymbol
              ).void
            end
            attr_writer :state

            sig do
              params(
                account_tokens: T::Array[String],
                business_account_tokens: T::Array[String],
                name: T.nilable(String),
                state:
                  Lithic::AuthRules::V2UpdateParams::Body::AccountLevelRule::State::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Account tokens to which the Auth Rule applies.
              account_tokens: nil,
              # Business Account tokens to which the Auth Rule applies.
              business_account_tokens: nil,
              # Auth Rule Name
              name: nil,
              # The desired state of the Auth Rule.
              #
              # Note that only deactivating an Auth Rule through this endpoint is supported at
              # this time. If you need to (re-)activate an Auth Rule the /promote endpoint
              # should be used to promote a draft to the currently active version.
              state: nil
            )
            end

            sig do
              override.returns(
                {
                  account_tokens: T::Array[String],
                  business_account_tokens: T::Array[String],
                  name: T.nilable(String),
                  state:
                    Lithic::AuthRules::V2UpdateParams::Body::AccountLevelRule::State::OrSymbol
                }
              )
            end
            def to_hash
            end

            # The desired state of the Auth Rule.
            #
            # Note that only deactivating an Auth Rule through this endpoint is supported at
            # this time. If you need to (re-)activate an Auth Rule the /promote endpoint
            # should be used to promote a draft to the currently active version.
            module State
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::AuthRules::V2UpdateParams::Body::AccountLevelRule::State
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INACTIVE =
                T.let(
                  :INACTIVE,
                  Lithic::AuthRules::V2UpdateParams::Body::AccountLevelRule::State::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::V2UpdateParams::Body::AccountLevelRule::State::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class CardLevelRule < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::AuthRules::V2UpdateParams::Body::CardLevelRule,
                  Lithic::Internal::AnyHash
                )
              end

            # Card tokens to which the Auth Rule applies.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :card_tokens

            sig { params(card_tokens: T::Array[String]).void }
            attr_writer :card_tokens

            # Auth Rule Name
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # The desired state of the Auth Rule.
            #
            # Note that only deactivating an Auth Rule through this endpoint is supported at
            # this time. If you need to (re-)activate an Auth Rule the /promote endpoint
            # should be used to promote a draft to the currently active version.
            sig do
              returns(
                T.nilable(
                  Lithic::AuthRules::V2UpdateParams::Body::CardLevelRule::State::OrSymbol
                )
              )
            end
            attr_reader :state

            sig do
              params(
                state:
                  Lithic::AuthRules::V2UpdateParams::Body::CardLevelRule::State::OrSymbol
              ).void
            end
            attr_writer :state

            sig do
              params(
                card_tokens: T::Array[String],
                name: T.nilable(String),
                state:
                  Lithic::AuthRules::V2UpdateParams::Body::CardLevelRule::State::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Card tokens to which the Auth Rule applies.
              card_tokens: nil,
              # Auth Rule Name
              name: nil,
              # The desired state of the Auth Rule.
              #
              # Note that only deactivating an Auth Rule through this endpoint is supported at
              # this time. If you need to (re-)activate an Auth Rule the /promote endpoint
              # should be used to promote a draft to the currently active version.
              state: nil
            )
            end

            sig do
              override.returns(
                {
                  card_tokens: T::Array[String],
                  name: T.nilable(String),
                  state:
                    Lithic::AuthRules::V2UpdateParams::Body::CardLevelRule::State::OrSymbol
                }
              )
            end
            def to_hash
            end

            # The desired state of the Auth Rule.
            #
            # Note that only deactivating an Auth Rule through this endpoint is supported at
            # this time. If you need to (re-)activate an Auth Rule the /promote endpoint
            # should be used to promote a draft to the currently active version.
            module State
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::AuthRules::V2UpdateParams::Body::CardLevelRule::State
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INACTIVE =
                T.let(
                  :INACTIVE,
                  Lithic::AuthRules::V2UpdateParams::Body::CardLevelRule::State::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::V2UpdateParams::Body::CardLevelRule::State::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class ProgramLevelRule < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::AuthRules::V2UpdateParams::Body::ProgramLevelRule,
                  Lithic::Internal::AnyHash
                )
              end

            # Card tokens to which the Auth Rule does not apply.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :excluded_card_tokens

            sig { params(excluded_card_tokens: T::Array[String]).void }
            attr_writer :excluded_card_tokens

            # Auth Rule Name
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # Whether the Auth Rule applies to all authorizations on the card program.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :program_level

            sig { params(program_level: T::Boolean).void }
            attr_writer :program_level

            # The desired state of the Auth Rule.
            #
            # Note that only deactivating an Auth Rule through this endpoint is supported at
            # this time. If you need to (re-)activate an Auth Rule the /promote endpoint
            # should be used to promote a draft to the currently active version.
            sig do
              returns(
                T.nilable(
                  Lithic::AuthRules::V2UpdateParams::Body::ProgramLevelRule::State::OrSymbol
                )
              )
            end
            attr_reader :state

            sig do
              params(
                state:
                  Lithic::AuthRules::V2UpdateParams::Body::ProgramLevelRule::State::OrSymbol
              ).void
            end
            attr_writer :state

            sig do
              params(
                excluded_card_tokens: T::Array[String],
                name: T.nilable(String),
                program_level: T::Boolean,
                state:
                  Lithic::AuthRules::V2UpdateParams::Body::ProgramLevelRule::State::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Card tokens to which the Auth Rule does not apply.
              excluded_card_tokens: nil,
              # Auth Rule Name
              name: nil,
              # Whether the Auth Rule applies to all authorizations on the card program.
              program_level: nil,
              # The desired state of the Auth Rule.
              #
              # Note that only deactivating an Auth Rule through this endpoint is supported at
              # this time. If you need to (re-)activate an Auth Rule the /promote endpoint
              # should be used to promote a draft to the currently active version.
              state: nil
            )
            end

            sig do
              override.returns(
                {
                  excluded_card_tokens: T::Array[String],
                  name: T.nilable(String),
                  program_level: T::Boolean,
                  state:
                    Lithic::AuthRules::V2UpdateParams::Body::ProgramLevelRule::State::OrSymbol
                }
              )
            end
            def to_hash
            end

            # The desired state of the Auth Rule.
            #
            # Note that only deactivating an Auth Rule through this endpoint is supported at
            # this time. If you need to (re-)activate an Auth Rule the /promote endpoint
            # should be used to promote a draft to the currently active version.
            module State
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::AuthRules::V2UpdateParams::Body::ProgramLevelRule::State
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INACTIVE =
                T.let(
                  :INACTIVE,
                  Lithic::AuthRules::V2UpdateParams::Body::ProgramLevelRule::State::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::V2UpdateParams::Body::ProgramLevelRule::State::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[Lithic::AuthRules::V2UpdateParams::Body::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
