# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2PromoteResponse < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::AuthRules::V2PromoteResponse,
              Lithic::Internal::AnyHash
            )
          end

        # Auth Rule Token
        sig { returns(String) }
        attr_accessor :token

        # Account tokens to which the Auth Rule applies.
        sig { returns(T::Array[String]) }
        attr_accessor :account_tokens

        # Card tokens to which the Auth Rule applies.
        sig { returns(T::Array[String]) }
        attr_accessor :card_tokens

        sig do
          returns(
            T.nilable(
              Lithic::Models::AuthRules::V2PromoteResponse::CurrentVersion
            )
          )
        end
        attr_reader :current_version

        sig do
          params(
            current_version:
              T.nilable(
                Lithic::Models::AuthRules::V2PromoteResponse::CurrentVersion::OrHash
              )
          ).void
        end
        attr_writer :current_version

        sig do
          returns(
            T.nilable(
              Lithic::Models::AuthRules::V2PromoteResponse::DraftVersion
            )
          )
        end
        attr_reader :draft_version

        sig do
          params(
            draft_version:
              T.nilable(
                Lithic::Models::AuthRules::V2PromoteResponse::DraftVersion::OrHash
              )
          ).void
        end
        attr_writer :draft_version

        # The type of event stream the Auth rule applies to.
        sig do
          returns(
            Lithic::Models::AuthRules::V2PromoteResponse::EventStream::TaggedSymbol
          )
        end
        attr_accessor :event_stream

        # Auth Rule Name
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Whether the Auth Rule applies to all authorizations on the card program.
        sig { returns(T::Boolean) }
        attr_accessor :program_level

        # The state of the Auth Rule
        sig do
          returns(
            Lithic::Models::AuthRules::V2PromoteResponse::State::TaggedSymbol
          )
        end
        attr_accessor :state

        # The type of Auth Rule. Effectively determines the event stream during which it
        # will be evaluated.
        #
        # - `CONDITIONAL_BLOCK`: AUTHORIZATION event stream.
        # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
        # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
        # - `CONDITIONAL_3DS_ACTION`: THREE_DS_AUTHENTICATION event stream.
        sig do
          returns(
            Lithic::Models::AuthRules::V2PromoteResponse::Type::TaggedSymbol
          )
        end
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
            current_version:
              T.nilable(
                Lithic::Models::AuthRules::V2PromoteResponse::CurrentVersion::OrHash
              ),
            draft_version:
              T.nilable(
                Lithic::Models::AuthRules::V2PromoteResponse::DraftVersion::OrHash
              ),
            event_stream:
              Lithic::Models::AuthRules::V2PromoteResponse::EventStream::OrSymbol,
            name: T.nilable(String),
            program_level: T::Boolean,
            state:
              Lithic::Models::AuthRules::V2PromoteResponse::State::OrSymbol,
            type: Lithic::Models::AuthRules::V2PromoteResponse::Type::OrSymbol,
            excluded_card_tokens: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # Auth Rule Token
          token:,
          # Account tokens to which the Auth Rule applies.
          account_tokens:,
          # Card tokens to which the Auth Rule applies.
          card_tokens:,
          current_version:,
          draft_version:,
          # The type of event stream the Auth rule applies to.
          event_stream:,
          # Auth Rule Name
          name:,
          # Whether the Auth Rule applies to all authorizations on the card program.
          program_level:,
          # The state of the Auth Rule
          state:,
          # The type of Auth Rule. Effectively determines the event stream during which it
          # will be evaluated.
          #
          # - `CONDITIONAL_BLOCK`: AUTHORIZATION event stream.
          # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
          # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
          # - `CONDITIONAL_3DS_ACTION`: THREE_DS_AUTHENTICATION event stream.
          type:,
          # Card tokens to which the Auth Rule does not apply.
          excluded_card_tokens: nil
        )
        end

        sig do
          override.returns(
            {
              token: String,
              account_tokens: T::Array[String],
              card_tokens: T::Array[String],
              current_version:
                T.nilable(
                  Lithic::Models::AuthRules::V2PromoteResponse::CurrentVersion
                ),
              draft_version:
                T.nilable(
                  Lithic::Models::AuthRules::V2PromoteResponse::DraftVersion
                ),
              event_stream:
                Lithic::Models::AuthRules::V2PromoteResponse::EventStream::TaggedSymbol,
              name: T.nilable(String),
              program_level: T::Boolean,
              state:
                Lithic::Models::AuthRules::V2PromoteResponse::State::TaggedSymbol,
              type:
                Lithic::Models::AuthRules::V2PromoteResponse::Type::TaggedSymbol,
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
                Lithic::Models::AuthRules::V2PromoteResponse::CurrentVersion,
                Lithic::Internal::AnyHash
              )
            end

          # Parameters for the Auth Rule
          sig do
            returns(
              Lithic::Models::AuthRules::V2PromoteResponse::CurrentVersion::Parameters::Variants
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
                  Lithic::AuthRules::Conditional3DSActionParameters::OrHash
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
                  Lithic::Models::AuthRules::V2PromoteResponse::CurrentVersion::Parameters::Variants,
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
                  Lithic::AuthRules::Conditional3DSActionParameters
                )
              end

            sig do
              override.returns(
                T::Array[
                  Lithic::Models::AuthRules::V2PromoteResponse::CurrentVersion::Parameters::Variants
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
                Lithic::Models::AuthRules::V2PromoteResponse::DraftVersion,
                Lithic::Internal::AnyHash
              )
            end

          # Parameters for the Auth Rule
          sig do
            returns(
              Lithic::Models::AuthRules::V2PromoteResponse::DraftVersion::Parameters::Variants
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
                  Lithic::AuthRules::Conditional3DSActionParameters::OrHash
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
                  Lithic::Models::AuthRules::V2PromoteResponse::DraftVersion::Parameters::Variants,
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
                  Lithic::AuthRules::Conditional3DSActionParameters
                )
              end

            sig do
              override.returns(
                T::Array[
                  Lithic::Models::AuthRules::V2PromoteResponse::DraftVersion::Parameters::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end

        # The type of event stream the Auth rule applies to.
        module EventStream
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AuthRules::V2PromoteResponse::EventStream
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUTHORIZATION =
            T.let(
              :AUTHORIZATION,
              Lithic::Models::AuthRules::V2PromoteResponse::EventStream::TaggedSymbol
            )
          THREE_DS_AUTHENTICATION =
            T.let(
              :THREE_DS_AUTHENTICATION,
              Lithic::Models::AuthRules::V2PromoteResponse::EventStream::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AuthRules::V2PromoteResponse::EventStream::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The state of the Auth Rule
        module State
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::Models::AuthRules::V2PromoteResponse::State)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :ACTIVE,
              Lithic::Models::AuthRules::V2PromoteResponse::State::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :INACTIVE,
              Lithic::Models::AuthRules::V2PromoteResponse::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AuthRules::V2PromoteResponse::State::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The type of Auth Rule. Effectively determines the event stream during which it
        # will be evaluated.
        #
        # - `CONDITIONAL_BLOCK`: AUTHORIZATION event stream.
        # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
        # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
        # - `CONDITIONAL_3DS_ACTION`: THREE_DS_AUTHENTICATION event stream.
        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::Models::AuthRules::V2PromoteResponse::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONDITIONAL_BLOCK =
            T.let(
              :CONDITIONAL_BLOCK,
              Lithic::Models::AuthRules::V2PromoteResponse::Type::TaggedSymbol
            )
          VELOCITY_LIMIT =
            T.let(
              :VELOCITY_LIMIT,
              Lithic::Models::AuthRules::V2PromoteResponse::Type::TaggedSymbol
            )
          MERCHANT_LOCK =
            T.let(
              :MERCHANT_LOCK,
              Lithic::Models::AuthRules::V2PromoteResponse::Type::TaggedSymbol
            )
          CONDITIONAL_3DS_ACTION =
            T.let(
              :CONDITIONAL_3DS_ACTION,
              Lithic::Models::AuthRules::V2PromoteResponse::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AuthRules::V2PromoteResponse::Type::TaggedSymbol
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
