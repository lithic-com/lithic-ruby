# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2CreateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Lithic::AuthRules::V2CreateParams, Lithic::Internal::AnyHash)
          end

        # Parameters for the Auth Rule
        sig do
          returns(
            T.any(
              Lithic::AuthRules::ConditionalBlockParameters,
              Lithic::AuthRules::VelocityLimitParams,
              Lithic::AuthRules::MerchantLockParameters,
              Lithic::AuthRules::Conditional3DSActionParameters,
              Lithic::AuthRules::ConditionalAuthorizationActionParameters
            )
          )
        end
        attr_accessor :parameters

        # The type of Auth Rule. For certain rule types, this determines the event stream
        # during which it will be evaluated. For rules that can be applied to one of
        # several event streams, the effective one is defined by the separate
        # `event_stream` field.
        #
        # - `CONDITIONAL_BLOCK`: AUTHORIZATION event stream.
        # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
        # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
        # - `CONDITIONAL_ACTION`: AUTHORIZATION or THREE_DS_AUTHENTICATION event stream.
        sig { returns(Lithic::AuthRules::V2CreateParams::Type::OrSymbol) }
        attr_accessor :type

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

        # The event stream during which the rule will be evaluated.
        sig do
          returns(
            T.nilable(Lithic::AuthRules::V2CreateParams::EventStream::OrSymbol)
          )
        end
        attr_reader :event_stream

        sig do
          params(
            event_stream:
              Lithic::AuthRules::V2CreateParams::EventStream::OrSymbol
          ).void
        end
        attr_writer :event_stream

        # Auth Rule Name
        sig { returns(T.nilable(String)) }
        attr_accessor :name

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
            parameters:
              T.any(
                Lithic::AuthRules::ConditionalBlockParameters::OrHash,
                Lithic::AuthRules::VelocityLimitParams::OrHash,
                Lithic::AuthRules::MerchantLockParameters::OrHash,
                Lithic::AuthRules::Conditional3DSActionParameters::OrHash,
                Lithic::AuthRules::ConditionalAuthorizationActionParameters::OrHash
              ),
            type: Lithic::AuthRules::V2CreateParams::Type::OrSymbol,
            card_tokens: T::Array[String],
            program_level: T::Boolean,
            account_tokens: T::Array[String],
            business_account_tokens: T::Array[String],
            event_stream:
              Lithic::AuthRules::V2CreateParams::EventStream::OrSymbol,
            name: T.nilable(String),
            excluded_card_tokens: T::Array[String],
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Parameters for the Auth Rule
          parameters:,
          # The type of Auth Rule. For certain rule types, this determines the event stream
          # during which it will be evaluated. For rules that can be applied to one of
          # several event streams, the effective one is defined by the separate
          # `event_stream` field.
          #
          # - `CONDITIONAL_BLOCK`: AUTHORIZATION event stream.
          # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
          # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
          # - `CONDITIONAL_ACTION`: AUTHORIZATION or THREE_DS_AUTHENTICATION event stream.
          type:,
          # Card tokens to which the Auth Rule applies.
          card_tokens:,
          # Whether the Auth Rule applies to all authorizations on the card program.
          program_level:,
          # Account tokens to which the Auth Rule applies.
          account_tokens: nil,
          # Business Account tokens to which the Auth Rule applies.
          business_account_tokens: nil,
          # The event stream during which the rule will be evaluated.
          event_stream: nil,
          # Auth Rule Name
          name: nil,
          # Card tokens to which the Auth Rule does not apply.
          excluded_card_tokens: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              parameters:
                T.any(
                  Lithic::AuthRules::ConditionalBlockParameters,
                  Lithic::AuthRules::VelocityLimitParams,
                  Lithic::AuthRules::MerchantLockParameters,
                  Lithic::AuthRules::Conditional3DSActionParameters,
                  Lithic::AuthRules::ConditionalAuthorizationActionParameters
                ),
              type: Lithic::AuthRules::V2CreateParams::Type::OrSymbol,
              account_tokens: T::Array[String],
              business_account_tokens: T::Array[String],
              event_stream:
                Lithic::AuthRules::V2CreateParams::EventStream::OrSymbol,
              name: T.nilable(String),
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
          extend Lithic::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Lithic::AuthRules::ConditionalBlockParameters,
                Lithic::AuthRules::VelocityLimitParams,
                Lithic::AuthRules::MerchantLockParameters,
                Lithic::AuthRules::Conditional3DSActionParameters,
                Lithic::AuthRules::ConditionalAuthorizationActionParameters
              )
            end

          sig do
            override.returns(
              T::Array[Lithic::AuthRules::V2CreateParams::Parameters::Variants]
            )
          end
          def self.variants
          end
        end

        # The type of Auth Rule. For certain rule types, this determines the event stream
        # during which it will be evaluated. For rules that can be applied to one of
        # several event streams, the effective one is defined by the separate
        # `event_stream` field.
        #
        # - `CONDITIONAL_BLOCK`: AUTHORIZATION event stream.
        # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
        # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
        # - `CONDITIONAL_ACTION`: AUTHORIZATION or THREE_DS_AUTHENTICATION event stream.
        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::AuthRules::V2CreateParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONDITIONAL_BLOCK =
            T.let(
              :CONDITIONAL_BLOCK,
              Lithic::AuthRules::V2CreateParams::Type::TaggedSymbol
            )
          VELOCITY_LIMIT =
            T.let(
              :VELOCITY_LIMIT,
              Lithic::AuthRules::V2CreateParams::Type::TaggedSymbol
            )
          MERCHANT_LOCK =
            T.let(
              :MERCHANT_LOCK,
              Lithic::AuthRules::V2CreateParams::Type::TaggedSymbol
            )
          CONDITIONAL_ACTION =
            T.let(
              :CONDITIONAL_ACTION,
              Lithic::AuthRules::V2CreateParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::AuthRules::V2CreateParams::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # The event stream during which the rule will be evaluated.
        module EventStream
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::AuthRules::V2CreateParams::EventStream)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUTHORIZATION =
            T.let(
              :AUTHORIZATION,
              Lithic::AuthRules::V2CreateParams::EventStream::TaggedSymbol
            )
          THREE_DS_AUTHENTICATION =
            T.let(
              :THREE_DS_AUTHENTICATION,
              Lithic::AuthRules::V2CreateParams::EventStream::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::AuthRules::V2CreateParams::EventStream::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
