# typed: strong

module Lithic
  module Models
    module AuthRules
      # A feature made available to the rule. The `name` field is the variable name used
      # in the rule function signature. The `type` field determines which data the
      # feature provides to the rule at evaluation time.
      #
      # - `AUTHORIZATION`: The authorization request being evaluated. Only available for
      #   AUTHORIZATION event stream rules.
      # - `AUTHENTICATION`: The 3DS authentication request being evaluated. Only
      #   available for THREE_DS_AUTHENTICATION event stream rules.
      # - `TOKENIZATION`: The tokenization request being evaluated. Only available for
      #   TOKENIZATION event stream rules.
      # - `ACH_RECEIPT`: The ACH receipt being evaluated. Only available for
      #   ACH_CREDIT_RECEIPT and ACH_DEBIT_RECEIPT event stream rules.
      # - `CARD`: The card associated with the event. Available for AUTHORIZATION and
      #   THREE_DS_AUTHENTICATION event stream rules.
      # - `ACCOUNT_HOLDER`: The account holder associated with the card. Available for
      #   THREE_DS_AUTHENTICATION event stream rules.
      # - `IP_METADATA`: IP address metadata for the request. Available for
      #   THREE_DS_AUTHENTICATION event stream rules.
      # - `SPEND_VELOCITY`: Spend velocity data for the card or account. Requires
      #   `scope`, `period`, and optionally `filters` to configure the velocity
      #   calculation. Available for AUTHORIZATION event stream rules.
      module RuleFeature
        extend Lithic::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Lithic::AuthRules::RuleFeature::AuthorizationFeature,
              Lithic::AuthRules::RuleFeature::AuthenticationFeature,
              Lithic::AuthRules::RuleFeature::TokenizationFeature,
              Lithic::AuthRules::RuleFeature::ACHReceiptFeature,
              Lithic::AuthRules::RuleFeature::CardFeature,
              Lithic::AuthRules::RuleFeature::AccountHolderFeature,
              Lithic::AuthRules::RuleFeature::IPMetadataFeature,
              Lithic::AuthRules::RuleFeature::SpendVelocityFeature
            )
          end

        class AuthorizationFeature < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::RuleFeature::AuthorizationFeature,
                Lithic::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :type

          # The variable name for this feature in the rule function signature
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { params(name: String, type: Symbol).returns(T.attached_class) }
          def self.new(
            # The variable name for this feature in the rule function signature
            name: nil,
            type: :AUTHORIZATION
          )
          end

          sig { override.returns({ type: Symbol, name: String }) }
          def to_hash
          end
        end

        class AuthenticationFeature < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::RuleFeature::AuthenticationFeature,
                Lithic::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :type

          # The variable name for this feature in the rule function signature
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { params(name: String, type: Symbol).returns(T.attached_class) }
          def self.new(
            # The variable name for this feature in the rule function signature
            name: nil,
            type: :AUTHENTICATION
          )
          end

          sig { override.returns({ type: Symbol, name: String }) }
          def to_hash
          end
        end

        class TokenizationFeature < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::RuleFeature::TokenizationFeature,
                Lithic::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :type

          # The variable name for this feature in the rule function signature
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { params(name: String, type: Symbol).returns(T.attached_class) }
          def self.new(
            # The variable name for this feature in the rule function signature
            name: nil,
            type: :TOKENIZATION
          )
          end

          sig { override.returns({ type: Symbol, name: String }) }
          def to_hash
          end
        end

        class ACHReceiptFeature < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::RuleFeature::ACHReceiptFeature,
                Lithic::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :type

          # The variable name for this feature in the rule function signature
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { params(name: String, type: Symbol).returns(T.attached_class) }
          def self.new(
            # The variable name for this feature in the rule function signature
            name: nil,
            type: :ACH_RECEIPT
          )
          end

          sig { override.returns({ type: Symbol, name: String }) }
          def to_hash
          end
        end

        class CardFeature < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::RuleFeature::CardFeature,
                Lithic::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :type

          # The variable name for this feature in the rule function signature
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { params(name: String, type: Symbol).returns(T.attached_class) }
          def self.new(
            # The variable name for this feature in the rule function signature
            name: nil,
            type: :CARD
          )
          end

          sig { override.returns({ type: Symbol, name: String }) }
          def to_hash
          end
        end

        class AccountHolderFeature < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::RuleFeature::AccountHolderFeature,
                Lithic::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :type

          # The variable name for this feature in the rule function signature
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { params(name: String, type: Symbol).returns(T.attached_class) }
          def self.new(
            # The variable name for this feature in the rule function signature
            name: nil,
            type: :ACCOUNT_HOLDER
          )
          end

          sig { override.returns({ type: Symbol, name: String }) }
          def to_hash
          end
        end

        class IPMetadataFeature < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::RuleFeature::IPMetadataFeature,
                Lithic::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :type

          # The variable name for this feature in the rule function signature
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { params(name: String, type: Symbol).returns(T.attached_class) }
          def self.new(
            # The variable name for this feature in the rule function signature
            name: nil,
            type: :IP_METADATA
          )
          end

          sig { override.returns({ type: Symbol, name: String }) }
          def to_hash
          end
        end

        class SpendVelocityFeature < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::RuleFeature::SpendVelocityFeature,
                Lithic::Internal::AnyHash
              )
            end

          # Velocity over the current day since 00:00 / 12 AM in Eastern Time
          sig do
            returns(
              T.any(
                Lithic::AuthRules::VelocityLimitPeriod::TrailingWindowObject,
                Lithic::AuthRules::VelocityLimitPeriod::FixedWindowDay,
                Lithic::AuthRules::VelocityLimitPeriod::FixedWindowWeek,
                Lithic::AuthRules::VelocityLimitPeriod::FixedWindowMonth,
                Lithic::AuthRules::VelocityLimitPeriod::FixedWindowYear
              )
            )
          end
          attr_accessor :period

          # The scope the velocity is calculated for
          sig do
            returns(
              Lithic::AuthRules::RuleFeature::SpendVelocityFeature::Scope::OrSymbol
            )
          end
          attr_accessor :scope

          sig { returns(Symbol) }
          attr_accessor :type

          sig { returns(T.nilable(Lithic::AuthRules::VelocityLimitFilters)) }
          attr_reader :filters

          sig do
            params(
              filters: Lithic::AuthRules::VelocityLimitFilters::OrHash
            ).void
          end
          attr_writer :filters

          # The variable name for this feature in the rule function signature
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            params(
              period:
                T.any(
                  Lithic::AuthRules::VelocityLimitPeriod::TrailingWindowObject::OrHash,
                  Lithic::AuthRules::VelocityLimitPeriod::FixedWindowDay::OrHash,
                  Lithic::AuthRules::VelocityLimitPeriod::FixedWindowWeek::OrHash,
                  Lithic::AuthRules::VelocityLimitPeriod::FixedWindowMonth::OrHash,
                  Lithic::AuthRules::VelocityLimitPeriod::FixedWindowYear::OrHash
                ),
              scope:
                Lithic::AuthRules::RuleFeature::SpendVelocityFeature::Scope::OrSymbol,
              filters: Lithic::AuthRules::VelocityLimitFilters::OrHash,
              name: String,
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Velocity over the current day since 00:00 / 12 AM in Eastern Time
            period:,
            # The scope the velocity is calculated for
            scope:,
            filters: nil,
            # The variable name for this feature in the rule function signature
            name: nil,
            type: :SPEND_VELOCITY
          )
          end

          sig do
            override.returns(
              {
                period:
                  T.any(
                    Lithic::AuthRules::VelocityLimitPeriod::TrailingWindowObject,
                    Lithic::AuthRules::VelocityLimitPeriod::FixedWindowDay,
                    Lithic::AuthRules::VelocityLimitPeriod::FixedWindowWeek,
                    Lithic::AuthRules::VelocityLimitPeriod::FixedWindowMonth,
                    Lithic::AuthRules::VelocityLimitPeriod::FixedWindowYear
                  ),
                scope:
                  Lithic::AuthRules::RuleFeature::SpendVelocityFeature::Scope::OrSymbol,
                type: Symbol,
                filters: Lithic::AuthRules::VelocityLimitFilters,
                name: String
              }
            )
          end
          def to_hash
          end

          # The scope the velocity is calculated for
          module Scope
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::RuleFeature::SpendVelocityFeature::Scope
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CARD =
              T.let(
                :CARD,
                Lithic::AuthRules::RuleFeature::SpendVelocityFeature::Scope::TaggedSymbol
              )
            ACCOUNT =
              T.let(
                :ACCOUNT,
                Lithic::AuthRules::RuleFeature::SpendVelocityFeature::Scope::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::RuleFeature::SpendVelocityFeature::Scope::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(T::Array[Lithic::AuthRules::RuleFeature::Variants])
        end
        def self.variants
        end
      end
    end
  end
end
