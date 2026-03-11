# typed: strong

module Lithic
  module Models
    AuthRule = AuthRules::AuthRule

    module AuthRules
      class AuthRule < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::AuthRules::AuthRule, Lithic::Internal::AnyHash)
          end

        # Auth Rule Token
        sig { returns(String) }
        attr_accessor :token

        # Account tokens to which the Auth Rule applies.
        sig { returns(T::Array[String]) }
        attr_accessor :account_tokens

        # Business Account tokens to which the Auth Rule applies.
        sig { returns(T::Array[String]) }
        attr_accessor :business_account_tokens

        # Card tokens to which the Auth Rule applies.
        sig { returns(T::Array[String]) }
        attr_accessor :card_tokens

        sig { returns(T.nilable(Lithic::AuthRules::AuthRule::CurrentVersion)) }
        attr_reader :current_version

        sig do
          params(
            current_version:
              T.nilable(Lithic::AuthRules::AuthRule::CurrentVersion::OrHash)
          ).void
        end
        attr_writer :current_version

        sig { returns(T.nilable(Lithic::AuthRules::AuthRule::DraftVersion)) }
        attr_reader :draft_version

        sig do
          params(
            draft_version:
              T.nilable(Lithic::AuthRules::AuthRule::DraftVersion::OrHash)
          ).void
        end
        attr_writer :draft_version

        # The event stream during which the rule will be evaluated.
        sig { returns(Lithic::AuthRules::EventStream::TaggedSymbol) }
        attr_accessor :event_stream

        # Indicates whether this auth rule is managed by Lithic. If true, the rule cannot
        # be modified or deleted by the user
        sig { returns(T::Boolean) }
        attr_accessor :lithic_managed

        # Auth Rule Name
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Whether the Auth Rule applies to all authorizations on the card program.
        sig { returns(T::Boolean) }
        attr_accessor :program_level

        # The state of the Auth Rule
        sig { returns(Lithic::AuthRules::AuthRule::State::TaggedSymbol) }
        attr_accessor :state

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
        #   ACH_CREDIT_RECEIPT, or ACH_DEBIT_RECEIPT event stream.
        # - `TYPESCRIPT_CODE`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
        #   ACH_CREDIT_RECEIPT, or ACH_DEBIT_RECEIPT event stream.
        sig { returns(Lithic::AuthRules::AuthRule::Type::TaggedSymbol) }
        attr_accessor :type

        # Account tokens to which the Auth Rule does not apply.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :excluded_account_tokens

        sig { params(excluded_account_tokens: T::Array[String]).void }
        attr_writer :excluded_account_tokens

        # Business account tokens to which the Auth Rule does not apply.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :excluded_business_account_tokens

        sig { params(excluded_business_account_tokens: T::Array[String]).void }
        attr_writer :excluded_business_account_tokens

        # Card tokens to which the Auth Rule does not apply.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :excluded_card_tokens

        sig { params(excluded_card_tokens: T::Array[String]).void }
        attr_writer :excluded_card_tokens

        sig do
          params(
            token: String,
            account_tokens: T::Array[String],
            business_account_tokens: T::Array[String],
            card_tokens: T::Array[String],
            current_version:
              T.nilable(Lithic::AuthRules::AuthRule::CurrentVersion::OrHash),
            draft_version:
              T.nilable(Lithic::AuthRules::AuthRule::DraftVersion::OrHash),
            event_stream: Lithic::AuthRules::EventStream::OrSymbol,
            lithic_managed: T::Boolean,
            name: T.nilable(String),
            program_level: T::Boolean,
            state: Lithic::AuthRules::AuthRule::State::OrSymbol,
            type: Lithic::AuthRules::AuthRule::Type::OrSymbol,
            excluded_account_tokens: T::Array[String],
            excluded_business_account_tokens: T::Array[String],
            excluded_card_tokens: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # Auth Rule Token
          token:,
          # Account tokens to which the Auth Rule applies.
          account_tokens:,
          # Business Account tokens to which the Auth Rule applies.
          business_account_tokens:,
          # Card tokens to which the Auth Rule applies.
          card_tokens:,
          current_version:,
          draft_version:,
          # The event stream during which the rule will be evaluated.
          event_stream:,
          # Indicates whether this auth rule is managed by Lithic. If true, the rule cannot
          # be modified or deleted by the user
          lithic_managed:,
          # Auth Rule Name
          name:,
          # Whether the Auth Rule applies to all authorizations on the card program.
          program_level:,
          # The state of the Auth Rule
          state:,
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
          #   ACH_CREDIT_RECEIPT, or ACH_DEBIT_RECEIPT event stream.
          # - `TYPESCRIPT_CODE`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
          #   ACH_CREDIT_RECEIPT, or ACH_DEBIT_RECEIPT event stream.
          type:,
          # Account tokens to which the Auth Rule does not apply.
          excluded_account_tokens: nil,
          # Business account tokens to which the Auth Rule does not apply.
          excluded_business_account_tokens: nil,
          # Card tokens to which the Auth Rule does not apply.
          excluded_card_tokens: nil
        )
        end

        sig do
          override.returns(
            {
              token: String,
              account_tokens: T::Array[String],
              business_account_tokens: T::Array[String],
              card_tokens: T::Array[String],
              current_version:
                T.nilable(Lithic::AuthRules::AuthRule::CurrentVersion),
              draft_version:
                T.nilable(Lithic::AuthRules::AuthRule::DraftVersion),
              event_stream: Lithic::AuthRules::EventStream::TaggedSymbol,
              lithic_managed: T::Boolean,
              name: T.nilable(String),
              program_level: T::Boolean,
              state: Lithic::AuthRules::AuthRule::State::TaggedSymbol,
              type: Lithic::AuthRules::AuthRule::Type::TaggedSymbol,
              excluded_account_tokens: T::Array[String],
              excluded_business_account_tokens: T::Array[String],
              excluded_card_tokens: T::Array[String]
            }
          )
        end
        def to_hash
        end

        class CurrentVersion < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::AuthRule::CurrentVersion,
                Lithic::Internal::AnyHash
              )
            end

          # Parameters for the Auth Rule
          sig do
            returns(
              Lithic::AuthRules::AuthRule::CurrentVersion::Parameters::Variants
            )
          end
          attr_accessor :parameters

          # The version of the rule, this is incremented whenever the rule's parameters
          # change.
          sig { returns(Integer) }
          attr_accessor :version

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
                  Lithic::AuthRules::TypescriptCodeParameters::OrHash
                ),
              version: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Parameters for the Auth Rule
            parameters:,
            # The version of the rule, this is incremented whenever the rule's parameters
            # change.
            version:
          )
          end

          sig do
            override.returns(
              {
                parameters:
                  Lithic::AuthRules::AuthRule::CurrentVersion::Parameters::Variants,
                version: Integer
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
                  Lithic::AuthRules::TypescriptCodeParameters
                )
              end

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::AuthRule::CurrentVersion::Parameters::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end

        class DraftVersion < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::AuthRule::DraftVersion,
                Lithic::Internal::AnyHash
              )
            end

          # An error message if the draft version failed compilation. Populated when `state`
          # is `ERROR`, `null` otherwise.
          sig { returns(T.nilable(String)) }
          attr_accessor :error

          # Parameters for the Auth Rule
          sig do
            returns(
              Lithic::AuthRules::AuthRule::DraftVersion::Parameters::Variants
            )
          end
          attr_accessor :parameters

          # The state of the draft version. Most rules are created synchronously and the
          # state is immediately `SHADOWING`. Rules backed by TypeScript code are compiled
          # asynchronously — the state starts as `PENDING` and transitions to `SHADOWING` on
          # success or `ERROR` on failure.
          #
          # - `PENDING`: Compilation of the rule is in progress (TypeScript rules only).
          # - `SHADOWING`: The draft version is ready and evaluating in shadow mode
          #   alongside the current active version. It can be promoted to the active
          #   version.
          # - `ERROR`: Compilation of the rule failed. Check the `error` field for details.
          sig do
            returns(
              Lithic::AuthRules::AuthRule::DraftVersion::State::TaggedSymbol
            )
          end
          attr_accessor :state

          # The version of the rule, this is incremented whenever the rule's parameters
          # change.
          sig { returns(Integer) }
          attr_accessor :version

          sig do
            params(
              error: T.nilable(String),
              parameters:
                T.any(
                  Lithic::AuthRules::ConditionalBlockParameters::OrHash,
                  Lithic::AuthRules::VelocityLimitParams::OrHash,
                  Lithic::AuthRules::MerchantLockParameters::OrHash,
                  Lithic::AuthRules::Conditional3DSActionParameters::OrHash,
                  Lithic::AuthRules::ConditionalAuthorizationActionParameters::OrHash,
                  Lithic::AuthRules::ConditionalACHActionParameters::OrHash,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::OrHash,
                  Lithic::AuthRules::TypescriptCodeParameters::OrHash
                ),
              state: Lithic::AuthRules::AuthRule::DraftVersion::State::OrSymbol,
              version: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # An error message if the draft version failed compilation. Populated when `state`
            # is `ERROR`, `null` otherwise.
            error:,
            # Parameters for the Auth Rule
            parameters:,
            # The state of the draft version. Most rules are created synchronously and the
            # state is immediately `SHADOWING`. Rules backed by TypeScript code are compiled
            # asynchronously — the state starts as `PENDING` and transitions to `SHADOWING` on
            # success or `ERROR` on failure.
            #
            # - `PENDING`: Compilation of the rule is in progress (TypeScript rules only).
            # - `SHADOWING`: The draft version is ready and evaluating in shadow mode
            #   alongside the current active version. It can be promoted to the active
            #   version.
            # - `ERROR`: Compilation of the rule failed. Check the `error` field for details.
            state:,
            # The version of the rule, this is incremented whenever the rule's parameters
            # change.
            version:
          )
          end

          sig do
            override.returns(
              {
                error: T.nilable(String),
                parameters:
                  Lithic::AuthRules::AuthRule::DraftVersion::Parameters::Variants,
                state:
                  Lithic::AuthRules::AuthRule::DraftVersion::State::TaggedSymbol,
                version: Integer
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
                  Lithic::AuthRules::TypescriptCodeParameters
                )
              end

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::AuthRule::DraftVersion::Parameters::Variants
                ]
              )
            end
            def self.variants
            end
          end

          # The state of the draft version. Most rules are created synchronously and the
          # state is immediately `SHADOWING`. Rules backed by TypeScript code are compiled
          # asynchronously — the state starts as `PENDING` and transitions to `SHADOWING` on
          # success or `ERROR` on failure.
          #
          # - `PENDING`: Compilation of the rule is in progress (TypeScript rules only).
          # - `SHADOWING`: The draft version is ready and evaluating in shadow mode
          #   alongside the current active version. It can be promoted to the active
          #   version.
          # - `ERROR`: Compilation of the rule failed. Check the `error` field for details.
          module State
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Lithic::AuthRules::AuthRule::DraftVersion::State)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :PENDING,
                Lithic::AuthRules::AuthRule::DraftVersion::State::TaggedSymbol
              )
            SHADOWING =
              T.let(
                :SHADOWING,
                Lithic::AuthRules::AuthRule::DraftVersion::State::TaggedSymbol
              )
            ERROR =
              T.let(
                :ERROR,
                Lithic::AuthRules::AuthRule::DraftVersion::State::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::AuthRule::DraftVersion::State::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # The state of the Auth Rule
        module State
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::AuthRules::AuthRule::State) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(:ACTIVE, Lithic::AuthRules::AuthRule::State::TaggedSymbol)
          INACTIVE =
            T.let(:INACTIVE, Lithic::AuthRules::AuthRule::State::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Lithic::AuthRules::AuthRule::State::TaggedSymbol]
            )
          end
          def self.values
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
        #   ACH_CREDIT_RECEIPT, or ACH_DEBIT_RECEIPT event stream.
        # - `TYPESCRIPT_CODE`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
        #   ACH_CREDIT_RECEIPT, or ACH_DEBIT_RECEIPT event stream.
        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::AuthRules::AuthRule::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONDITIONAL_BLOCK =
            T.let(
              :CONDITIONAL_BLOCK,
              Lithic::AuthRules::AuthRule::Type::TaggedSymbol
            )
          VELOCITY_LIMIT =
            T.let(
              :VELOCITY_LIMIT,
              Lithic::AuthRules::AuthRule::Type::TaggedSymbol
            )
          MERCHANT_LOCK =
            T.let(
              :MERCHANT_LOCK,
              Lithic::AuthRules::AuthRule::Type::TaggedSymbol
            )
          CONDITIONAL_ACTION =
            T.let(
              :CONDITIONAL_ACTION,
              Lithic::AuthRules::AuthRule::Type::TaggedSymbol
            )
          TYPESCRIPT_CODE =
            T.let(
              :TYPESCRIPT_CODE,
              Lithic::AuthRules::AuthRule::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::AuthRules::AuthRule::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
