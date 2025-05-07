# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2CreateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

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
                Lithic::AuthRules::ConditionalBlockParameters,
                Lithic::AuthRules::VelocityLimitParams,
                Lithic::AuthRules::V2CreateParams::Parameters::MerchantLockParameters
              )
            )
          )
        end
        attr_reader :parameters

        sig do
          params(
            parameters:
              T.any(
                Lithic::AuthRules::ConditionalBlockParameters::OrHash,
                Lithic::AuthRules::VelocityLimitParams::OrHash,
                Lithic::AuthRules::V2CreateParams::Parameters::MerchantLockParameters::OrHash
              )
          ).void
        end
        attr_writer :parameters

        # The type of Auth Rule
        sig do
          returns(T.nilable(Lithic::AuthRules::V2CreateParams::Type::OrSymbol))
        end
        attr_reader :type

        sig do
          params(type: Lithic::AuthRules::V2CreateParams::Type::OrSymbol).void
        end
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
            parameters:
              T.any(
                Lithic::AuthRules::ConditionalBlockParameters::OrHash,
                Lithic::AuthRules::VelocityLimitParams::OrHash,
                Lithic::AuthRules::V2CreateParams::Parameters::MerchantLockParameters::OrHash
              ),
            type: Lithic::AuthRules::V2CreateParams::Type::OrSymbol,
            excluded_card_tokens: T::Array[String],
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Account tokens to which the Auth Rule applies.
          account_tokens:,
          # Card tokens to which the Auth Rule applies.
          card_tokens:,
          # Whether the Auth Rule applies to all authorizations on the card program.
          program_level:,
          # Auth Rule Name
          name: nil,
          # Parameters for the Auth Rule
          parameters: nil,
          # The type of Auth Rule
          type: nil,
          # Card tokens to which the Auth Rule does not apply.
          excluded_card_tokens: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account_tokens: T::Array[String],
              name: T.nilable(String),
              parameters:
                T.any(
                  Lithic::AuthRules::ConditionalBlockParameters,
                  Lithic::AuthRules::VelocityLimitParams,
                  Lithic::AuthRules::V2CreateParams::Parameters::MerchantLockParameters
                ),
              type: Lithic::AuthRules::V2CreateParams::Type::OrSymbol,
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
                Lithic::AuthRules::V2CreateParams::Parameters::MerchantLockParameters
              )
            end

          class MerchantLockParameters < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

            # A list of merchant locks defining specific merchants or groups of merchants
            # (based on descriptors or IDs) that the lock applies to.
            sig do
              returns(
                T::Array[
                  Lithic::AuthRules::V2CreateParams::Parameters::MerchantLockParameters::Merchant
                ]
              )
            end
            attr_accessor :merchants

            sig do
              params(
                merchants:
                  T::Array[
                    Lithic::AuthRules::V2CreateParams::Parameters::MerchantLockParameters::Merchant::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # A list of merchant locks defining specific merchants or groups of merchants
              # (based on descriptors or IDs) that the lock applies to.
              merchants:
            )
            end

            sig do
              override.returns(
                {
                  merchants:
                    T::Array[
                      Lithic::AuthRules::V2CreateParams::Parameters::MerchantLockParameters::Merchant
                    ]
                }
              )
            end
            def to_hash
            end

            class Merchant < Lithic::Internal::Type::BaseModel
              OrHash =
                T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

              # A comment or explanation about the merchant, used internally for rule management
              # purposes.
              sig { returns(T.nilable(String)) }
              attr_reader :comment

              sig { params(comment: String).void }
              attr_writer :comment

              # Short description of the merchant, often used to provide more human-readable
              # context about the transaction merchant. This is typically the name or label
              # shown on transaction summaries.
              sig { returns(T.nilable(String)) }
              attr_reader :descriptor

              sig { params(descriptor: String).void }
              attr_writer :descriptor

              # Unique alphanumeric identifier for the payment card acceptor (merchant). This
              # attribute specifies the merchant entity that will be locked or referenced for
              # authorization rules.
              sig { returns(T.nilable(String)) }
              attr_reader :merchant_id

              sig { params(merchant_id: String).void }
              attr_writer :merchant_id

              # Represents a specific merchant lock based on their ID or descriptor. Each
              # merchant object allows transaction rules to work at a granular level and
              # requires at least one of merchant_id or descriptor.
              sig do
                params(
                  comment: String,
                  descriptor: String,
                  merchant_id: String
                ).returns(T.attached_class)
              end
              def self.new(
                # A comment or explanation about the merchant, used internally for rule management
                # purposes.
                comment: nil,
                # Short description of the merchant, often used to provide more human-readable
                # context about the transaction merchant. This is typically the name or label
                # shown on transaction summaries.
                descriptor: nil,
                # Unique alphanumeric identifier for the payment card acceptor (merchant). This
                # attribute specifies the merchant entity that will be locked or referenced for
                # authorization rules.
                merchant_id: nil
              )
              end

              sig do
                override.returns(
                  { comment: String, descriptor: String, merchant_id: String }
                )
              end
              def to_hash
              end
            end
          end

          sig do
            override.returns(
              T::Array[Lithic::AuthRules::V2CreateParams::Parameters::Variants]
            )
          end
          def self.variants
          end
        end

        # The type of Auth Rule
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

          sig do
            override.returns(
              T::Array[Lithic::AuthRules::V2CreateParams::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
