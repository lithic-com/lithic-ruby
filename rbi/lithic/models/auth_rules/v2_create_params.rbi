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

        sig do
          returns(
            T.any(
              Lithic::AuthRules::V2CreateParams::Body::AccountLevelRule,
              Lithic::AuthRules::V2CreateParams::Body::CardLevelRule,
              Lithic::AuthRules::V2CreateParams::Body::ProgramLevelRule
            )
          )
        end
        attr_accessor :body

        sig do
          params(
            body:
              T.any(
                Lithic::AuthRules::V2CreateParams::Body::AccountLevelRule::OrHash,
                Lithic::AuthRules::V2CreateParams::Body::CardLevelRule::OrHash,
                Lithic::AuthRules::V2CreateParams::Body::ProgramLevelRule::OrHash
              ),
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(body:, request_options: {})
        end

        sig do
          override.returns(
            {
              body:
                T.any(
                  Lithic::AuthRules::V2CreateParams::Body::AccountLevelRule,
                  Lithic::AuthRules::V2CreateParams::Body::CardLevelRule,
                  Lithic::AuthRules::V2CreateParams::Body::ProgramLevelRule
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
                Lithic::AuthRules::V2CreateParams::Body::AccountLevelRule,
                Lithic::AuthRules::V2CreateParams::Body::CardLevelRule,
                Lithic::AuthRules::V2CreateParams::Body::ProgramLevelRule
              )
            end

          class AccountLevelRule < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::AuthRules::V2CreateParams::Body::AccountLevelRule,
                  Lithic::Internal::AnyHash
                )
              end

            # Parameters for the Auth Rule
            sig do
              returns(
                T.any(
                  Lithic::AuthRules::ConditionalBlockParameters,
                  Lithic::AuthRules::VelocityLimitParams,
                  Lithic::AuthRules::MerchantLockParameters,
                  Lithic::AuthRules::Conditional3DSActionParameters,
                  Lithic::AuthRules::ConditionalAuthorizationActionParameters,
                  Lithic::AuthRules::ConditionalACHActionParameters,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters,
                  Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters,
                  Lithic::AuthRules::TypescriptCodeParameters
                )
              )
            end
            attr_accessor :parameters

            # The type of Auth Rule. For certain rule types, this determines the event stream
            # during which it will be evaluated. For rules that can be applied to one of
            # several event streams, the effective one is defined by the separate
            # `event_stream` field.
            #
            # - `CONDITIONAL_BLOCK`: Deprecated. Use `CONDITIONAL_ACTION` instead.
            #   AUTHORIZATION event stream.
            # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
            # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
            # - `CONDITIONAL_ACTION`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #   ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, or CARD_TRANSACTION_UPDATE event
            #   stream.
            # - `TYPESCRIPT_CODE`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #   ACH_CREDIT_RECEIPT, or ACH_DEBIT_RECEIPT event stream.
            sig do
              returns(
                Lithic::AuthRules::V2CreateParams::Body::AccountLevelRule::Type::OrSymbol
              )
            end
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
            sig { returns(T.nilable(Lithic::AuthRules::EventStream::OrSymbol)) }
            attr_reader :event_stream

            sig do
              params(
                event_stream: Lithic::AuthRules::EventStream::OrSymbol
              ).void
            end
            attr_writer :event_stream

            # Auth Rule Name
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            sig do
              params(
                parameters:
                  T.any(
                    Lithic::AuthRules::ConditionalBlockParameters::OrHash,
                    Lithic::AuthRules::VelocityLimitParams::OrHash,
                    Lithic::AuthRules::MerchantLockParameters::OrHash,
                    Lithic::AuthRules::Conditional3DSActionParameters::OrHash,
                    Lithic::AuthRules::ConditionalAuthorizationActionParameters::OrHash,
                    Lithic::AuthRules::ConditionalACHActionParameters::OrHash,
                    Lithic::AuthRules::ConditionalTokenizationActionParameters::OrHash,
                    Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::OrHash,
                    Lithic::AuthRules::TypescriptCodeParameters::OrHash
                  ),
                type:
                  Lithic::AuthRules::V2CreateParams::Body::AccountLevelRule::Type::OrSymbol,
                account_tokens: T::Array[String],
                business_account_tokens: T::Array[String],
                event_stream: Lithic::AuthRules::EventStream::OrSymbol,
                name: T.nilable(String)
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
              # - `CONDITIONAL_BLOCK`: Deprecated. Use `CONDITIONAL_ACTION` instead.
              #   AUTHORIZATION event stream.
              # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
              # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
              # - `CONDITIONAL_ACTION`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
              #   ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, or CARD_TRANSACTION_UPDATE event
              #   stream.
              # - `TYPESCRIPT_CODE`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
              #   ACH_CREDIT_RECEIPT, or ACH_DEBIT_RECEIPT event stream.
              type:,
              # Account tokens to which the Auth Rule applies.
              account_tokens: nil,
              # Business Account tokens to which the Auth Rule applies.
              business_account_tokens: nil,
              # The event stream during which the rule will be evaluated.
              event_stream: nil,
              # Auth Rule Name
              name: nil
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
                      Lithic::AuthRules::ConditionalAuthorizationActionParameters,
                      Lithic::AuthRules::ConditionalACHActionParameters,
                      Lithic::AuthRules::ConditionalTokenizationActionParameters,
                      Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters,
                      Lithic::AuthRules::TypescriptCodeParameters
                    ),
                  type:
                    Lithic::AuthRules::V2CreateParams::Body::AccountLevelRule::Type::OrSymbol,
                  account_tokens: T::Array[String],
                  business_account_tokens: T::Array[String],
                  event_stream: Lithic::AuthRules::EventStream::OrSymbol,
                  name: T.nilable(String)
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
                    Lithic::AuthRules::ConditionalAuthorizationActionParameters,
                    Lithic::AuthRules::ConditionalACHActionParameters,
                    Lithic::AuthRules::ConditionalTokenizationActionParameters,
                    Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters,
                    Lithic::AuthRules::TypescriptCodeParameters
                  )
                end

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::V2CreateParams::Body::AccountLevelRule::Parameters::Variants
                  ]
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
            # - `CONDITIONAL_BLOCK`: Deprecated. Use `CONDITIONAL_ACTION` instead.
            #   AUTHORIZATION event stream.
            # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
            # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
            # - `CONDITIONAL_ACTION`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #   ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, or CARD_TRANSACTION_UPDATE event
            #   stream.
            # - `TYPESCRIPT_CODE`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #   ACH_CREDIT_RECEIPT, or ACH_DEBIT_RECEIPT event stream.
            module Type
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::AuthRules::V2CreateParams::Body::AccountLevelRule::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CONDITIONAL_BLOCK =
                T.let(
                  :CONDITIONAL_BLOCK,
                  Lithic::AuthRules::V2CreateParams::Body::AccountLevelRule::Type::TaggedSymbol
                )
              VELOCITY_LIMIT =
                T.let(
                  :VELOCITY_LIMIT,
                  Lithic::AuthRules::V2CreateParams::Body::AccountLevelRule::Type::TaggedSymbol
                )
              MERCHANT_LOCK =
                T.let(
                  :MERCHANT_LOCK,
                  Lithic::AuthRules::V2CreateParams::Body::AccountLevelRule::Type::TaggedSymbol
                )
              CONDITIONAL_ACTION =
                T.let(
                  :CONDITIONAL_ACTION,
                  Lithic::AuthRules::V2CreateParams::Body::AccountLevelRule::Type::TaggedSymbol
                )
              TYPESCRIPT_CODE =
                T.let(
                  :TYPESCRIPT_CODE,
                  Lithic::AuthRules::V2CreateParams::Body::AccountLevelRule::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::V2CreateParams::Body::AccountLevelRule::Type::TaggedSymbol
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
                  Lithic::AuthRules::V2CreateParams::Body::CardLevelRule,
                  Lithic::Internal::AnyHash
                )
              end

            # Card tokens to which the Auth Rule applies.
            sig { returns(T::Array[String]) }
            attr_accessor :card_tokens

            # Parameters for the Auth Rule
            sig do
              returns(
                T.any(
                  Lithic::AuthRules::ConditionalBlockParameters,
                  Lithic::AuthRules::VelocityLimitParams,
                  Lithic::AuthRules::MerchantLockParameters,
                  Lithic::AuthRules::Conditional3DSActionParameters,
                  Lithic::AuthRules::ConditionalAuthorizationActionParameters,
                  Lithic::AuthRules::ConditionalACHActionParameters,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters,
                  Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters,
                  Lithic::AuthRules::TypescriptCodeParameters
                )
              )
            end
            attr_accessor :parameters

            # The type of Auth Rule. For certain rule types, this determines the event stream
            # during which it will be evaluated. For rules that can be applied to one of
            # several event streams, the effective one is defined by the separate
            # `event_stream` field.
            #
            # - `CONDITIONAL_BLOCK`: Deprecated. Use `CONDITIONAL_ACTION` instead.
            #   AUTHORIZATION event stream.
            # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
            # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
            # - `CONDITIONAL_ACTION`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #   ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, or CARD_TRANSACTION_UPDATE event
            #   stream.
            # - `TYPESCRIPT_CODE`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #   ACH_CREDIT_RECEIPT, or ACH_DEBIT_RECEIPT event stream.
            sig do
              returns(
                Lithic::AuthRules::V2CreateParams::Body::CardLevelRule::Type::OrSymbol
              )
            end
            attr_accessor :type

            # The event stream during which the rule will be evaluated.
            sig { returns(T.nilable(Lithic::AuthRules::EventStream::OrSymbol)) }
            attr_reader :event_stream

            sig do
              params(
                event_stream: Lithic::AuthRules::EventStream::OrSymbol
              ).void
            end
            attr_writer :event_stream

            # Auth Rule Name
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            sig do
              params(
                card_tokens: T::Array[String],
                parameters:
                  T.any(
                    Lithic::AuthRules::ConditionalBlockParameters::OrHash,
                    Lithic::AuthRules::VelocityLimitParams::OrHash,
                    Lithic::AuthRules::MerchantLockParameters::OrHash,
                    Lithic::AuthRules::Conditional3DSActionParameters::OrHash,
                    Lithic::AuthRules::ConditionalAuthorizationActionParameters::OrHash,
                    Lithic::AuthRules::ConditionalACHActionParameters::OrHash,
                    Lithic::AuthRules::ConditionalTokenizationActionParameters::OrHash,
                    Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::OrHash,
                    Lithic::AuthRules::TypescriptCodeParameters::OrHash
                  ),
                type:
                  Lithic::AuthRules::V2CreateParams::Body::CardLevelRule::Type::OrSymbol,
                event_stream: Lithic::AuthRules::EventStream::OrSymbol,
                name: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Card tokens to which the Auth Rule applies.
              card_tokens:,
              # Parameters for the Auth Rule
              parameters:,
              # The type of Auth Rule. For certain rule types, this determines the event stream
              # during which it will be evaluated. For rules that can be applied to one of
              # several event streams, the effective one is defined by the separate
              # `event_stream` field.
              #
              # - `CONDITIONAL_BLOCK`: Deprecated. Use `CONDITIONAL_ACTION` instead.
              #   AUTHORIZATION event stream.
              # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
              # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
              # - `CONDITIONAL_ACTION`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
              #   ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, or CARD_TRANSACTION_UPDATE event
              #   stream.
              # - `TYPESCRIPT_CODE`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
              #   ACH_CREDIT_RECEIPT, or ACH_DEBIT_RECEIPT event stream.
              type:,
              # The event stream during which the rule will be evaluated.
              event_stream: nil,
              # Auth Rule Name
              name: nil
            )
            end

            sig do
              override.returns(
                {
                  card_tokens: T::Array[String],
                  parameters:
                    T.any(
                      Lithic::AuthRules::ConditionalBlockParameters,
                      Lithic::AuthRules::VelocityLimitParams,
                      Lithic::AuthRules::MerchantLockParameters,
                      Lithic::AuthRules::Conditional3DSActionParameters,
                      Lithic::AuthRules::ConditionalAuthorizationActionParameters,
                      Lithic::AuthRules::ConditionalACHActionParameters,
                      Lithic::AuthRules::ConditionalTokenizationActionParameters,
                      Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters,
                      Lithic::AuthRules::TypescriptCodeParameters
                    ),
                  type:
                    Lithic::AuthRules::V2CreateParams::Body::CardLevelRule::Type::OrSymbol,
                  event_stream: Lithic::AuthRules::EventStream::OrSymbol,
                  name: T.nilable(String)
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
                    Lithic::AuthRules::ConditionalAuthorizationActionParameters,
                    Lithic::AuthRules::ConditionalACHActionParameters,
                    Lithic::AuthRules::ConditionalTokenizationActionParameters,
                    Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters,
                    Lithic::AuthRules::TypescriptCodeParameters
                  )
                end

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::V2CreateParams::Body::CardLevelRule::Parameters::Variants
                  ]
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
            # - `CONDITIONAL_BLOCK`: Deprecated. Use `CONDITIONAL_ACTION` instead.
            #   AUTHORIZATION event stream.
            # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
            # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
            # - `CONDITIONAL_ACTION`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #   ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, or CARD_TRANSACTION_UPDATE event
            #   stream.
            # - `TYPESCRIPT_CODE`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #   ACH_CREDIT_RECEIPT, or ACH_DEBIT_RECEIPT event stream.
            module Type
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::AuthRules::V2CreateParams::Body::CardLevelRule::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CONDITIONAL_BLOCK =
                T.let(
                  :CONDITIONAL_BLOCK,
                  Lithic::AuthRules::V2CreateParams::Body::CardLevelRule::Type::TaggedSymbol
                )
              VELOCITY_LIMIT =
                T.let(
                  :VELOCITY_LIMIT,
                  Lithic::AuthRules::V2CreateParams::Body::CardLevelRule::Type::TaggedSymbol
                )
              MERCHANT_LOCK =
                T.let(
                  :MERCHANT_LOCK,
                  Lithic::AuthRules::V2CreateParams::Body::CardLevelRule::Type::TaggedSymbol
                )
              CONDITIONAL_ACTION =
                T.let(
                  :CONDITIONAL_ACTION,
                  Lithic::AuthRules::V2CreateParams::Body::CardLevelRule::Type::TaggedSymbol
                )
              TYPESCRIPT_CODE =
                T.let(
                  :TYPESCRIPT_CODE,
                  Lithic::AuthRules::V2CreateParams::Body::CardLevelRule::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::V2CreateParams::Body::CardLevelRule::Type::TaggedSymbol
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
                  Lithic::AuthRules::V2CreateParams::Body::ProgramLevelRule,
                  Lithic::Internal::AnyHash
                )
              end

            # Parameters for the Auth Rule
            sig do
              returns(
                T.any(
                  Lithic::AuthRules::ConditionalBlockParameters,
                  Lithic::AuthRules::VelocityLimitParams,
                  Lithic::AuthRules::MerchantLockParameters,
                  Lithic::AuthRules::Conditional3DSActionParameters,
                  Lithic::AuthRules::ConditionalAuthorizationActionParameters,
                  Lithic::AuthRules::ConditionalACHActionParameters,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters,
                  Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters,
                  Lithic::AuthRules::TypescriptCodeParameters
                )
              )
            end
            attr_accessor :parameters

            # Whether the Auth Rule applies to all authorizations on the card program.
            sig { returns(T::Boolean) }
            attr_accessor :program_level

            # The type of Auth Rule. For certain rule types, this determines the event stream
            # during which it will be evaluated. For rules that can be applied to one of
            # several event streams, the effective one is defined by the separate
            # `event_stream` field.
            #
            # - `CONDITIONAL_BLOCK`: Deprecated. Use `CONDITIONAL_ACTION` instead.
            #   AUTHORIZATION event stream.
            # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
            # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
            # - `CONDITIONAL_ACTION`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #   ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, or CARD_TRANSACTION_UPDATE event
            #   stream.
            # - `TYPESCRIPT_CODE`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #   ACH_CREDIT_RECEIPT, or ACH_DEBIT_RECEIPT event stream.
            sig do
              returns(
                Lithic::AuthRules::V2CreateParams::Body::ProgramLevelRule::Type::OrSymbol
              )
            end
            attr_accessor :type

            # The event stream during which the rule will be evaluated.
            sig { returns(T.nilable(Lithic::AuthRules::EventStream::OrSymbol)) }
            attr_reader :event_stream

            sig do
              params(
                event_stream: Lithic::AuthRules::EventStream::OrSymbol
              ).void
            end
            attr_writer :event_stream

            # Account tokens to which the Auth Rule does not apply.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :excluded_account_tokens

            sig { params(excluded_account_tokens: T::Array[String]).void }
            attr_writer :excluded_account_tokens

            # Business account tokens to which the Auth Rule does not apply.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :excluded_business_account_tokens

            sig do
              params(excluded_business_account_tokens: T::Array[String]).void
            end
            attr_writer :excluded_business_account_tokens

            # Card tokens to which the Auth Rule does not apply.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :excluded_card_tokens

            sig { params(excluded_card_tokens: T::Array[String]).void }
            attr_writer :excluded_card_tokens

            # Auth Rule Name
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            sig do
              params(
                parameters:
                  T.any(
                    Lithic::AuthRules::ConditionalBlockParameters::OrHash,
                    Lithic::AuthRules::VelocityLimitParams::OrHash,
                    Lithic::AuthRules::MerchantLockParameters::OrHash,
                    Lithic::AuthRules::Conditional3DSActionParameters::OrHash,
                    Lithic::AuthRules::ConditionalAuthorizationActionParameters::OrHash,
                    Lithic::AuthRules::ConditionalACHActionParameters::OrHash,
                    Lithic::AuthRules::ConditionalTokenizationActionParameters::OrHash,
                    Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::OrHash,
                    Lithic::AuthRules::TypescriptCodeParameters::OrHash
                  ),
                program_level: T::Boolean,
                type:
                  Lithic::AuthRules::V2CreateParams::Body::ProgramLevelRule::Type::OrSymbol,
                event_stream: Lithic::AuthRules::EventStream::OrSymbol,
                excluded_account_tokens: T::Array[String],
                excluded_business_account_tokens: T::Array[String],
                excluded_card_tokens: T::Array[String],
                name: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Parameters for the Auth Rule
              parameters:,
              # Whether the Auth Rule applies to all authorizations on the card program.
              program_level:,
              # The type of Auth Rule. For certain rule types, this determines the event stream
              # during which it will be evaluated. For rules that can be applied to one of
              # several event streams, the effective one is defined by the separate
              # `event_stream` field.
              #
              # - `CONDITIONAL_BLOCK`: Deprecated. Use `CONDITIONAL_ACTION` instead.
              #   AUTHORIZATION event stream.
              # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
              # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
              # - `CONDITIONAL_ACTION`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
              #   ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, or CARD_TRANSACTION_UPDATE event
              #   stream.
              # - `TYPESCRIPT_CODE`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
              #   ACH_CREDIT_RECEIPT, or ACH_DEBIT_RECEIPT event stream.
              type:,
              # The event stream during which the rule will be evaluated.
              event_stream: nil,
              # Account tokens to which the Auth Rule does not apply.
              excluded_account_tokens: nil,
              # Business account tokens to which the Auth Rule does not apply.
              excluded_business_account_tokens: nil,
              # Card tokens to which the Auth Rule does not apply.
              excluded_card_tokens: nil,
              # Auth Rule Name
              name: nil
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
                      Lithic::AuthRules::ConditionalAuthorizationActionParameters,
                      Lithic::AuthRules::ConditionalACHActionParameters,
                      Lithic::AuthRules::ConditionalTokenizationActionParameters,
                      Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters,
                      Lithic::AuthRules::TypescriptCodeParameters
                    ),
                  program_level: T::Boolean,
                  type:
                    Lithic::AuthRules::V2CreateParams::Body::ProgramLevelRule::Type::OrSymbol,
                  event_stream: Lithic::AuthRules::EventStream::OrSymbol,
                  excluded_account_tokens: T::Array[String],
                  excluded_business_account_tokens: T::Array[String],
                  excluded_card_tokens: T::Array[String],
                  name: T.nilable(String)
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
                    Lithic::AuthRules::ConditionalAuthorizationActionParameters,
                    Lithic::AuthRules::ConditionalACHActionParameters,
                    Lithic::AuthRules::ConditionalTokenizationActionParameters,
                    Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters,
                    Lithic::AuthRules::TypescriptCodeParameters
                  )
                end

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::V2CreateParams::Body::ProgramLevelRule::Parameters::Variants
                  ]
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
            # - `CONDITIONAL_BLOCK`: Deprecated. Use `CONDITIONAL_ACTION` instead.
            #   AUTHORIZATION event stream.
            # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
            # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
            # - `CONDITIONAL_ACTION`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #   ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, or CARD_TRANSACTION_UPDATE event
            #   stream.
            # - `TYPESCRIPT_CODE`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #   ACH_CREDIT_RECEIPT, or ACH_DEBIT_RECEIPT event stream.
            module Type
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::AuthRules::V2CreateParams::Body::ProgramLevelRule::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CONDITIONAL_BLOCK =
                T.let(
                  :CONDITIONAL_BLOCK,
                  Lithic::AuthRules::V2CreateParams::Body::ProgramLevelRule::Type::TaggedSymbol
                )
              VELOCITY_LIMIT =
                T.let(
                  :VELOCITY_LIMIT,
                  Lithic::AuthRules::V2CreateParams::Body::ProgramLevelRule::Type::TaggedSymbol
                )
              MERCHANT_LOCK =
                T.let(
                  :MERCHANT_LOCK,
                  Lithic::AuthRules::V2CreateParams::Body::ProgramLevelRule::Type::TaggedSymbol
                )
              CONDITIONAL_ACTION =
                T.let(
                  :CONDITIONAL_ACTION,
                  Lithic::AuthRules::V2CreateParams::Body::ProgramLevelRule::Type::TaggedSymbol
                )
              TYPESCRIPT_CODE =
                T.let(
                  :TYPESCRIPT_CODE,
                  Lithic::AuthRules::V2CreateParams::Body::ProgramLevelRule::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::V2CreateParams::Body::ProgramLevelRule::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[Lithic::AuthRules::V2CreateParams::Body::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
