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
        sig { returns(Lithic::Models::AuthRules::V2CreateResponse::State::TaggedSymbol) }
        def state
        end

        sig do
          params(_: Lithic::Models::AuthRules::V2CreateResponse::State::TaggedSymbol)
            .returns(Lithic::Models::AuthRules::V2CreateResponse::State::TaggedSymbol)
        end
        def state=(_)
        end

        # The type of Auth Rule
        sig { returns(Lithic::Models::AuthRules::V2CreateResponse::Type::TaggedSymbol) }
        def type
        end

        sig do
          params(_: Lithic::Models::AuthRules::V2CreateResponse::Type::TaggedSymbol)
            .returns(Lithic::Models::AuthRules::V2CreateResponse::Type::TaggedSymbol)
        end
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
            state: Lithic::Models::AuthRules::V2CreateResponse::State::TaggedSymbol,
            type: Lithic::Models::AuthRules::V2CreateResponse::Type::TaggedSymbol,
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
                state: Lithic::Models::AuthRules::V2CreateResponse::State::TaggedSymbol,
                type: Lithic::Models::AuthRules::V2CreateResponse::Type::TaggedSymbol,
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
          module Parameters
            extend Lithic::Union

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
          module Parameters
            extend Lithic::Union

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
        module State
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AuthRules::V2CreateResponse::State) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::AuthRules::V2CreateResponse::State::TaggedSymbol) }

          ACTIVE = T.let(:ACTIVE, Lithic::Models::AuthRules::V2CreateResponse::State::TaggedSymbol)
          INACTIVE = T.let(:INACTIVE, Lithic::Models::AuthRules::V2CreateResponse::State::TaggedSymbol)
        end

        # The type of Auth Rule
        module Type
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AuthRules::V2CreateResponse::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::AuthRules::V2CreateResponse::Type::TaggedSymbol) }

          CONDITIONAL_BLOCK =
            T.let(:CONDITIONAL_BLOCK, Lithic::Models::AuthRules::V2CreateResponse::Type::TaggedSymbol)
          VELOCITY_LIMIT = T.let(:VELOCITY_LIMIT, Lithic::Models::AuthRules::V2CreateResponse::Type::TaggedSymbol)
        end
      end
    end
  end
end
