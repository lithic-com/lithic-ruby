# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2ApplyResponse < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::AuthRules::V2ApplyResponse,
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
              Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion
            )
          )
        end
        attr_reader :current_version

        sig do
          params(
            current_version:
              T.nilable(
                Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::OrHash
              )
          ).void
        end
        attr_writer :current_version

        sig do
          returns(
            T.nilable(Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion)
          )
        end
        attr_reader :draft_version

        sig do
          params(
            draft_version:
              T.nilable(
                Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::OrHash
              )
          ).void
        end
        attr_writer :draft_version

        # Auth Rule Name
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Whether the Auth Rule applies to all authorizations on the card program.
        sig { returns(T::Boolean) }
        attr_accessor :program_level

        # The state of the Auth Rule
        sig do
          returns(
            Lithic::Models::AuthRules::V2ApplyResponse::State::TaggedSymbol
          )
        end
        attr_accessor :state

        # The type of Auth Rule
        sig do
          returns(
            Lithic::Models::AuthRules::V2ApplyResponse::Type::TaggedSymbol
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
                Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::OrHash
              ),
            draft_version:
              T.nilable(
                Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::OrHash
              ),
            name: T.nilable(String),
            program_level: T::Boolean,
            state: Lithic::Models::AuthRules::V2ApplyResponse::State::OrSymbol,
            type: Lithic::Models::AuthRules::V2ApplyResponse::Type::OrSymbol,
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
          # Auth Rule Name
          name:,
          # Whether the Auth Rule applies to all authorizations on the card program.
          program_level:,
          # The state of the Auth Rule
          state:,
          # The type of Auth Rule
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
                  Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion
                ),
              draft_version:
                T.nilable(
                  Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion
                ),
              name: T.nilable(String),
              program_level: T::Boolean,
              state:
                Lithic::Models::AuthRules::V2ApplyResponse::State::TaggedSymbol,
              type:
                Lithic::Models::AuthRules::V2ApplyResponse::Type::TaggedSymbol,
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
                Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion,
                Lithic::Internal::AnyHash
              )
            end

          # Parameters for the Auth Rule
          sig do
            returns(
              Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::Variants
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
                  Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::MerchantLockParameters::OrHash
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
                  Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::Variants,
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
                  Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::MerchantLockParameters
                )
              end

            class MerchantLockParameters < Lithic::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::MerchantLockParameters,
                    Lithic::Internal::AnyHash
                  )
                end

              # A list of merchant locks defining specific merchants or groups of merchants
              # (based on descriptors or IDs) that the lock applies to.
              sig do
                returns(
                  T::Array[
                    Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::MerchantLockParameters::Merchant
                  ]
                )
              end
              attr_accessor :merchants

              sig do
                params(
                  merchants:
                    T::Array[
                      Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::MerchantLockParameters::Merchant::OrHash
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
                        Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::MerchantLockParameters::Merchant
                      ]
                  }
                )
              end
              def to_hash
              end

              class Merchant < Lithic::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::MerchantLockParameters::Merchant,
                      Lithic::Internal::AnyHash
                    )
                  end

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
                T::Array[
                  Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion::Parameters::Variants
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
                Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion,
                Lithic::Internal::AnyHash
              )
            end

          # Parameters for the Auth Rule
          sig do
            returns(
              Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::Variants
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
                  Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::MerchantLockParameters::OrHash
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
                  Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::Variants,
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
                  Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::MerchantLockParameters
                )
              end

            class MerchantLockParameters < Lithic::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::MerchantLockParameters,
                    Lithic::Internal::AnyHash
                  )
                end

              # A list of merchant locks defining specific merchants or groups of merchants
              # (based on descriptors or IDs) that the lock applies to.
              sig do
                returns(
                  T::Array[
                    Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::MerchantLockParameters::Merchant
                  ]
                )
              end
              attr_accessor :merchants

              sig do
                params(
                  merchants:
                    T::Array[
                      Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::MerchantLockParameters::Merchant::OrHash
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
                        Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::MerchantLockParameters::Merchant
                      ]
                  }
                )
              end
              def to_hash
              end

              class Merchant < Lithic::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::MerchantLockParameters::Merchant,
                      Lithic::Internal::AnyHash
                    )
                  end

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
                T::Array[
                  Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion::Parameters::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end

        # The state of the Auth Rule
        module State
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::Models::AuthRules::V2ApplyResponse::State)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :ACTIVE,
              Lithic::Models::AuthRules::V2ApplyResponse::State::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :INACTIVE,
              Lithic::Models::AuthRules::V2ApplyResponse::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AuthRules::V2ApplyResponse::State::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The type of Auth Rule
        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::Models::AuthRules::V2ApplyResponse::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONDITIONAL_BLOCK =
            T.let(
              :CONDITIONAL_BLOCK,
              Lithic::Models::AuthRules::V2ApplyResponse::Type::TaggedSymbol
            )
          VELOCITY_LIMIT =
            T.let(
              :VELOCITY_LIMIT,
              Lithic::Models::AuthRules::V2ApplyResponse::Type::TaggedSymbol
            )
          MERCHANT_LOCK =
            T.let(
              :MERCHANT_LOCK,
              Lithic::Models::AuthRules::V2ApplyResponse::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AuthRules::V2ApplyResponse::Type::TaggedSymbol
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
