# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2CreateResponse < Lithic::BaseModel
        # Auth Rule Token
        sig { returns(String) }
        def token
        end

        sig { params(_: String).returns(String) }
        def token=(_)
        end

        # Account tokens to which the Auth Rule applies.
        sig { returns(T::Array[String]) }
        def account_tokens
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def account_tokens=(_)
        end

        # Card tokens to which the Auth Rule applies.
        sig { returns(T::Array[String]) }
        def card_tokens
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def card_tokens=(_)
        end

        sig { returns(T.nilable(Lithic::Models::AuthRules::V2CreateResponse::CurrentVersion)) }
        def current_version
        end

        sig do
          params(_: T.nilable(Lithic::Models::AuthRules::V2CreateResponse::CurrentVersion))
            .returns(T.nilable(Lithic::Models::AuthRules::V2CreateResponse::CurrentVersion))
        end
        def current_version=(_)
        end

        sig { returns(T.nilable(Lithic::Models::AuthRules::V2CreateResponse::DraftVersion)) }
        def draft_version
        end

        sig do
          params(_: T.nilable(Lithic::Models::AuthRules::V2CreateResponse::DraftVersion))
            .returns(T.nilable(Lithic::Models::AuthRules::V2CreateResponse::DraftVersion))
        end
        def draft_version=(_)
        end

        # Auth Rule Name
        sig { returns(T.nilable(String)) }
        def name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_)
        end

        # Whether the Auth Rule applies to all authorizations on the card program.
        sig { returns(T::Boolean) }
        def program_level
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def program_level=(_)
        end

        # The state of the Auth Rule
        sig { returns(Symbol) }
        def state
        end

        sig { params(_: Symbol).returns(Symbol) }
        def state=(_)
        end

        # The type of Auth Rule
        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        # Card tokens to which the Auth Rule does not apply.
        sig { returns(T.nilable(T::Array[String])) }
        def excluded_card_tokens
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def excluded_card_tokens=(_)
        end

        sig do
          params(
            token: String,
            account_tokens: T::Array[String],
            card_tokens: T::Array[String],
            current_version: T.nilable(Lithic::Models::AuthRules::V2CreateResponse::CurrentVersion),
            draft_version: T.nilable(Lithic::Models::AuthRules::V2CreateResponse::DraftVersion),
            name: T.nilable(String),
            program_level: T::Boolean,
            state: Symbol,
            type: Symbol,
            excluded_card_tokens: T::Array[String]
          )
            .returns(T.attached_class)
        end
        def self.new(
          token:,
          account_tokens:,
          card_tokens:,
          current_version:,
          draft_version:,
          name:,
          program_level:,
          state:,
          type:,
          excluded_card_tokens: nil
        )
        end

        sig do
          override
            .returns(
              {
                token: String,
                account_tokens: T::Array[String],
                card_tokens: T::Array[String],
                current_version: T.nilable(Lithic::Models::AuthRules::V2CreateResponse::CurrentVersion),
                draft_version: T.nilable(Lithic::Models::AuthRules::V2CreateResponse::DraftVersion),
                name: T.nilable(String),
                program_level: T::Boolean,
                state: Symbol,
                type: Symbol,
                excluded_card_tokens: T::Array[String]
              }
            )
        end
        def to_hash
        end

        class CurrentVersion < Lithic::BaseModel
          # Parameters for the Auth Rule
          sig do
            returns(
              T.any(
                Lithic::Models::AuthRules::ConditionalBlockParameters,
                Lithic::Models::AuthRules::VelocityLimitParams
              )
            )
          end
          def parameters
          end

          sig do
            params(
              _: T.any(
                Lithic::Models::AuthRules::ConditionalBlockParameters,
                Lithic::Models::AuthRules::VelocityLimitParams
              )
            )
              .returns(
                T.any(
                  Lithic::Models::AuthRules::ConditionalBlockParameters,
                  Lithic::Models::AuthRules::VelocityLimitParams
                )
              )
          end
          def parameters=(_)
          end

          # The version of the rule, this is incremented whenever the rule's parameters
          #   change.
          sig { returns(Integer) }
          def version
          end

          sig { params(_: Integer).returns(Integer) }
          def version=(_)
          end

          sig do
            params(
              parameters: T.any(
                Lithic::Models::AuthRules::ConditionalBlockParameters,
                Lithic::Models::AuthRules::VelocityLimitParams
              ),
              version: Integer
            )
              .returns(T.attached_class)
          end
          def self.new(parameters:, version:)
          end

          sig do
            override
              .returns(
                {
                  parameters: T.any(
                    Lithic::Models::AuthRules::ConditionalBlockParameters,
                    Lithic::Models::AuthRules::VelocityLimitParams
                  ),
                  version: Integer
                }
              )
          end
          def to_hash
          end

          # Parameters for the Auth Rule
          class Parameters < Lithic::Union
            abstract!

            Variants =
              type_template(:out) do
                {
                  fixed: T.any(
                    Lithic::Models::AuthRules::ConditionalBlockParameters,
                    Lithic::Models::AuthRules::VelocityLimitParams
                  )
                }
              end
          end
        end

        class DraftVersion < Lithic::BaseModel
          # Parameters for the Auth Rule
          sig do
            returns(
              T.any(
                Lithic::Models::AuthRules::ConditionalBlockParameters,
                Lithic::Models::AuthRules::VelocityLimitParams
              )
            )
          end
          def parameters
          end

          sig do
            params(
              _: T.any(
                Lithic::Models::AuthRules::ConditionalBlockParameters,
                Lithic::Models::AuthRules::VelocityLimitParams
              )
            )
              .returns(
                T.any(
                  Lithic::Models::AuthRules::ConditionalBlockParameters,
                  Lithic::Models::AuthRules::VelocityLimitParams
                )
              )
          end
          def parameters=(_)
          end

          # The version of the rule, this is incremented whenever the rule's parameters
          #   change.
          sig { returns(Integer) }
          def version
          end

          sig { params(_: Integer).returns(Integer) }
          def version=(_)
          end

          sig do
            params(
              parameters: T.any(
                Lithic::Models::AuthRules::ConditionalBlockParameters,
                Lithic::Models::AuthRules::VelocityLimitParams
              ),
              version: Integer
            )
              .returns(T.attached_class)
          end
          def self.new(parameters:, version:)
          end

          sig do
            override
              .returns(
                {
                  parameters: T.any(
                    Lithic::Models::AuthRules::ConditionalBlockParameters,
                    Lithic::Models::AuthRules::VelocityLimitParams
                  ),
                  version: Integer
                }
              )
          end
          def to_hash
          end

          # Parameters for the Auth Rule
          class Parameters < Lithic::Union
            abstract!

            Variants =
              type_template(:out) do
                {
                  fixed: T.any(
                    Lithic::Models::AuthRules::ConditionalBlockParameters,
                    Lithic::Models::AuthRules::VelocityLimitParams
                  )
                }
              end
          end
        end

        # The state of the Auth Rule
        class State < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          ACTIVE = :ACTIVE
          INACTIVE = :INACTIVE
        end

        # The type of Auth Rule
        class Type < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          CONDITIONAL_BLOCK = :CONDITIONAL_BLOCK
          VELOCITY_LIMIT = :VELOCITY_LIMIT
        end
      end
    end
  end
end
