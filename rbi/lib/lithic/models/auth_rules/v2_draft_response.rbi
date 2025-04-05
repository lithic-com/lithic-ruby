# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2DraftResponse < Lithic::Internal::Type::BaseModel
        # Auth Rule Token
        sig { returns(String) }
        attr_accessor :token

        # Account tokens to which the Auth Rule applies.
        sig { returns(T::Array[String]) }
        attr_accessor :account_tokens

        # Card tokens to which the Auth Rule applies.
        sig { returns(T::Array[String]) }
        attr_accessor :card_tokens

        sig { returns(T.nilable(Lithic::Models::AuthRules::V2DraftResponse::CurrentVersion)) }
        attr_reader :current_version

        sig do
          params(
            current_version: T.nilable(T.any(Lithic::Models::AuthRules::V2DraftResponse::CurrentVersion, Lithic::Internal::AnyHash))
          )
            .void
        end
        attr_writer :current_version

        sig { returns(T.nilable(Lithic::Models::AuthRules::V2DraftResponse::DraftVersion)) }
        attr_reader :draft_version

        sig do
          params(
            draft_version: T.nilable(T.any(Lithic::Models::AuthRules::V2DraftResponse::DraftVersion, Lithic::Internal::AnyHash))
          )
            .void
        end
        attr_writer :draft_version

        # Auth Rule Name
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Whether the Auth Rule applies to all authorizations on the card program.
        sig { returns(T::Boolean) }
        attr_accessor :program_level

        # The state of the Auth Rule
        sig { returns(Lithic::Models::AuthRules::V2DraftResponse::State::TaggedSymbol) }
        attr_accessor :state

        # The type of Auth Rule
        sig { returns(Lithic::Models::AuthRules::V2DraftResponse::Type::TaggedSymbol) }
        attr_accessor :type

        # Card tokens to which the Auth Rule does not apply.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :excluded_card_tokens

        sig { params(excluded_card_tokens: T::Array[String]).void }
        attr_writer :excluded_card_tokens

        sig do
          params(
            token: String,
            account_tokens: T::Array[String],
            card_tokens: T::Array[String],
            current_version: T.nilable(T.any(Lithic::Models::AuthRules::V2DraftResponse::CurrentVersion, Lithic::Internal::AnyHash)),
            draft_version: T.nilable(T.any(Lithic::Models::AuthRules::V2DraftResponse::DraftVersion, Lithic::Internal::AnyHash)),
            name: T.nilable(String),
            program_level: T::Boolean,
            state: Lithic::Models::AuthRules::V2DraftResponse::State::OrSymbol,
            type: Lithic::Models::AuthRules::V2DraftResponse::Type::OrSymbol,
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
        ); end
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
        def to_hash; end

        class CurrentVersion < Lithic::Internal::Type::BaseModel
          # Parameters for the Auth Rule
          sig do
            returns(
              T.any(
                Lithic::Models::AuthRules::ConditionalBlockParameters,
                Lithic::Models::AuthRules::VelocityLimitParams
              )
            )
          end
          attr_accessor :parameters

          # The version of the rule, this is incremented whenever the rule's parameters
          # change.
          sig { returns(Integer) }
          attr_accessor :version

          sig do
            params(
              parameters: T.any(
                Lithic::Models::AuthRules::ConditionalBlockParameters,
                Lithic::Internal::AnyHash,
                Lithic::Models::AuthRules::VelocityLimitParams
              ),
              version: Integer
            )
              .returns(T.attached_class)
          end
          def self.new(parameters:, version:); end

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
          def to_hash; end

          # Parameters for the Auth Rule
          module Parameters
            extend Lithic::Internal::Type::Union

            sig do
              override
                .returns(
                  [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams]
                )
            end
            def self.variants; end
          end
        end

        class DraftVersion < Lithic::Internal::Type::BaseModel
          # Parameters for the Auth Rule
          sig do
            returns(
              T.any(
                Lithic::Models::AuthRules::ConditionalBlockParameters,
                Lithic::Models::AuthRules::VelocityLimitParams
              )
            )
          end
          attr_accessor :parameters

          # The version of the rule, this is incremented whenever the rule's parameters
          # change.
          sig { returns(Integer) }
          attr_accessor :version

          sig do
            params(
              parameters: T.any(
                Lithic::Models::AuthRules::ConditionalBlockParameters,
                Lithic::Internal::AnyHash,
                Lithic::Models::AuthRules::VelocityLimitParams
              ),
              version: Integer
            )
              .returns(T.attached_class)
          end
          def self.new(parameters:, version:); end

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
          def to_hash; end

          # Parameters for the Auth Rule
          module Parameters
            extend Lithic::Internal::Type::Union

            sig do
              override
                .returns(
                  [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams]
                )
            end
            def self.variants; end
          end
        end

        # The state of the Auth Rule
        module State
          extend Lithic::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AuthRules::V2DraftResponse::State) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Lithic::Models::AuthRules::V2DraftResponse::State::TaggedSymbol) }

          ACTIVE = T.let(:ACTIVE, Lithic::Models::AuthRules::V2DraftResponse::State::TaggedSymbol)
          INACTIVE = T.let(:INACTIVE, Lithic::Models::AuthRules::V2DraftResponse::State::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::AuthRules::V2DraftResponse::State::TaggedSymbol]) }
          def self.values; end
        end

        # The type of Auth Rule
        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AuthRules::V2DraftResponse::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Lithic::Models::AuthRules::V2DraftResponse::Type::TaggedSymbol) }

          CONDITIONAL_BLOCK =
            T.let(:CONDITIONAL_BLOCK, Lithic::Models::AuthRules::V2DraftResponse::Type::TaggedSymbol)
          VELOCITY_LIMIT = T.let(:VELOCITY_LIMIT, Lithic::Models::AuthRules::V2DraftResponse::Type::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::AuthRules::V2DraftResponse::Type::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
