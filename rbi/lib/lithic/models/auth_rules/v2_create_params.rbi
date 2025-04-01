# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2CreateParams < Lithic::BaseModel
        extend Lithic::Type::RequestParameters::Converter
        include Lithic::RequestParameters

        # Account tokens to which the Auth Rule applies.
        sig { returns(T::Array[String]) }
        attr_accessor :account_tokens

        # Auth Rule Name
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Parameters for the Auth Rule
        sig do
          returns(
            T.nilable(
              T.any(
                Lithic::Models::AuthRules::ConditionalBlockParameters,
                Lithic::Models::AuthRules::VelocityLimitParams
              )
            )
          )
        end
        attr_reader :parameters

        sig do
          params(
            parameters: T.any(
              Lithic::Models::AuthRules::ConditionalBlockParameters,
              Lithic::Util::AnyHash,
              Lithic::Models::AuthRules::VelocityLimitParams
            )
          )
            .void
        end
        attr_writer :parameters

        # The type of Auth Rule
        sig { returns(T.nilable(Lithic::Models::AuthRules::V2CreateParams::Type::OrSymbol)) }
        attr_reader :type

        sig { params(type: Lithic::Models::AuthRules::V2CreateParams::Type::OrSymbol).void }
        attr_writer :type

        # Card tokens to which the Auth Rule applies.
        sig { returns(T::Array[String]) }
        attr_accessor :card_tokens

        # Whether the Auth Rule applies to all authorizations on the card program.
        sig { returns(T::Boolean) }
        attr_accessor :program_level

        # Card tokens to which the Auth Rule does not apply.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :excluded_card_tokens

        sig { params(excluded_card_tokens: T::Array[String]).void }
        attr_writer :excluded_card_tokens

        sig do
          params(
            account_tokens: T::Array[String],
            card_tokens: T::Array[String],
            program_level: T::Boolean,
            name: T.nilable(String),
            parameters: T.any(
              Lithic::Models::AuthRules::ConditionalBlockParameters,
              Lithic::Util::AnyHash,
              Lithic::Models::AuthRules::VelocityLimitParams
            ),
            type: Lithic::Models::AuthRules::V2CreateParams::Type::OrSymbol,
            excluded_card_tokens: T::Array[String],
            request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          account_tokens:,
          card_tokens:,
          program_level:,
          name: nil,
          parameters: nil,
          type: nil,
          excluded_card_tokens: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                account_tokens: T::Array[String],
                name: T.nilable(String),
                parameters: T.any(
                  Lithic::Models::AuthRules::ConditionalBlockParameters,
                  Lithic::Models::AuthRules::VelocityLimitParams
                ),
                type: Lithic::Models::AuthRules::V2CreateParams::Type::OrSymbol,
                card_tokens: T::Array[String],
                program_level: T::Boolean,
                excluded_card_tokens: T::Array[String],
                request_options: Lithic::RequestOptions
              }
            )
        end
        def to_hash
        end

        # Parameters for the Auth Rule
        module Parameters
          extend Lithic::Union

          sig do
            override
              .returns(
                [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams]
              )
          end
          def self.variants
          end
        end

        # The type of Auth Rule
        module Type
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AuthRules::V2CreateParams::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Lithic::Models::AuthRules::V2CreateParams::Type::TaggedSymbol) }

          CONDITIONAL_BLOCK =
            T.let(:CONDITIONAL_BLOCK, Lithic::Models::AuthRules::V2CreateParams::Type::TaggedSymbol)
          VELOCITY_LIMIT = T.let(:VELOCITY_LIMIT, Lithic::Models::AuthRules::V2CreateParams::Type::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::AuthRules::V2CreateParams::Type::TaggedSymbol]) }
          def self.values
          end
        end
      end
    end
  end
end
