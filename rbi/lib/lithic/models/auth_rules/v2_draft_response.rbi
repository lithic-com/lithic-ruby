# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2DraftResponse < Lithic::BaseModel
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

        sig { returns(T.nilable(Lithic::Models::AuthRules::V2DraftResponse::CurrentVersion)) }
        def current_version
        end

        sig do
          params(
            _: T.nilable(T.any(Lithic::Models::AuthRules::V2DraftResponse::CurrentVersion, Lithic::Util::AnyHash))
          )
            .returns(
              T.nilable(T.any(Lithic::Models::AuthRules::V2DraftResponse::CurrentVersion, Lithic::Util::AnyHash))
            )
        end
        def current_version=(_)
        end

        sig { returns(T.nilable(Lithic::Models::AuthRules::V2DraftResponse::DraftVersion)) }
        def draft_version
        end

        sig do
          params(
            _: T.nilable(T.any(Lithic::Models::AuthRules::V2DraftResponse::DraftVersion, Lithic::Util::AnyHash))
          )
            .returns(T.nilable(T.any(Lithic::Models::AuthRules::V2DraftResponse::DraftVersion, Lithic::Util::AnyHash)))
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
        sig { returns(Lithic::Models::AuthRules::V2DraftResponse::State::TaggedSymbol) }
        def state
        end

        sig do
          params(_: Lithic::Models::AuthRules::V2DraftResponse::State::TaggedSymbol)
            .returns(Lithic::Models::AuthRules::V2DraftResponse::State::TaggedSymbol)
        end
        def state=(_)
        end

        # The type of Auth Rule
        sig { returns(Lithic::Models::AuthRules::V2DraftResponse::Type::TaggedSymbol) }
        def type
        end

        sig do
          params(_: Lithic::Models::AuthRules::V2DraftResponse::Type::TaggedSymbol)
            .returns(Lithic::Models::AuthRules::V2DraftResponse::Type::TaggedSymbol)
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
            current_version: T.nilable(Lithic::Models::AuthRules::V2DraftResponse::CurrentVersion),
            draft_version: T.nilable(Lithic::Models::AuthRules::V2DraftResponse::DraftVersion),
            name: T.nilable(String),
            program_level: T::Boolean,
            state: Lithic::Models::AuthRules::V2DraftResponse::State::TaggedSymbol,
            type: Lithic::Models::AuthRules::V2DraftResponse::Type::TaggedSymbol,
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
                current_version: T.nilable(Lithic::Models::AuthRules::V2DraftResponse::CurrentVersion),
                draft_version: T.nilable(Lithic::Models::AuthRules::V2DraftResponse::DraftVersion),
                name: T.nilable(String),
                program_level: T::Boolean,
                state: Lithic::Models::AuthRules::V2DraftResponse::State::TaggedSymbol,
                type: Lithic::Models::AuthRules::V2DraftResponse::Type::TaggedSymbol,
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

            class << self
              sig do
                override
                  .returns(
                    [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams]
                  )
              end
              def variants
              end
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

            class << self
              sig do
                override
                  .returns(
                    [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams]
                  )
              end
              def variants
              end
            end
          end
        end

        # The state of the Auth Rule
        module State
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AuthRules::V2DraftResponse::State) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::AuthRules::V2DraftResponse::State::TaggedSymbol) }

          ACTIVE = T.let(:ACTIVE, Lithic::Models::AuthRules::V2DraftResponse::State::TaggedSymbol)
          INACTIVE = T.let(:INACTIVE, Lithic::Models::AuthRules::V2DraftResponse::State::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Lithic::Models::AuthRules::V2DraftResponse::State::TaggedSymbol]) }
            def values
            end
          end
        end

        # The type of Auth Rule
        module Type
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AuthRules::V2DraftResponse::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::AuthRules::V2DraftResponse::Type::TaggedSymbol) }

          CONDITIONAL_BLOCK =
            T.let(:CONDITIONAL_BLOCK, Lithic::Models::AuthRules::V2DraftResponse::Type::TaggedSymbol)
          VELOCITY_LIMIT = T.let(:VELOCITY_LIMIT, Lithic::Models::AuthRules::V2DraftResponse::Type::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Lithic::Models::AuthRules::V2DraftResponse::Type::TaggedSymbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
