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
      # - `CARD_TRANSACTION`: The card transaction being evaluated. Only available for
      #   CARD_TRANSACTION_UPDATE event stream rules.
      # - `ACH_PAYMENT`: The ACH payment being evaluated. Only available for
      #   ACH_PAYMENT_UPDATE event stream rules.
      # - `EXTERNAL_BANK_ACCOUNT`: The external bank account tied to the ACH payment
      #   being evaluated. Only available for ACH_PAYMENT_UPDATE event stream rules.
      # - `CARD`: The card associated with the event. Available for AUTHORIZATION,
      #   THREE_DS_AUTHENTICATION, and CARD_TRANSACTION_UPDATE event stream rules.
      # - `ACCOUNT_HOLDER`: The account holder associated with the event. Available for
      #   AUTHORIZATION, THREE_DS_AUTHENTICATION, CARD_TRANSACTION_UPDATE, and
      #   ACH_PAYMENT_UPDATE event stream rules.
      # - `IP_METADATA`: IP address metadata for the request. Available for
      #   THREE_DS_AUTHENTICATION event stream rules.
      # - `SPEND_VELOCITY`: Spend velocity data for the card or account. Requires
      #   `scope`, `period`, and optionally `filters` to configure the velocity
      #   calculation. Available for AUTHORIZATION and CARD_TRANSACTION_UPDATE event
      #   stream rules.
      # - `PAYMENT_VELOCITY`: ACH payment velocity data, aggregated over the given
      #   scope. Requires `scope`, `period`, and optionally `filters` to configure the
      #   velocity calculation. Available for ACH_PAYMENT_UPDATE event stream rules.
      # - `CONSECUTIVE_DECLINES`: The number of consecutive declined transactions since
      #   the last approval for the card or account. Requires `scope`. Available for
      #   AUTHORIZATION and CARD_TRANSACTION_UPDATE event stream rules.
      # - `ACH_PAYMENT_HISTORY`: Windowed settled-amount statistics derived from the
      #   financial account's ACH payment history. Requires `scope`. Available for
      #   ACH_PAYMENT_UPDATE event stream rules.
      # - `TRANSACTION_HISTORY_SIGNALS`: Behavioral feature state derived from the
      #   entity's transaction history. Requires `scope` to specify whether to load
      #   card, account, or business account history. Available for AUTHORIZATION and
      #   CARD_TRANSACTION_UPDATE event stream rules.
      module RuleFeature
        extend Lithic::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Lithic::AuthRules::RuleFeature::AuthorizationFeature,
              Lithic::AuthRules::RuleFeature::AuthenticationFeature,
              Lithic::AuthRules::RuleFeature::TokenizationFeature,
              Lithic::AuthRules::RuleFeature::ACHReceiptFeature,
              Lithic::AuthRules::RuleFeature::CardTransactionFeature,
              Lithic::AuthRules::RuleFeature::ACHPaymentFeature,
              Lithic::AuthRules::RuleFeature::ExternalBankAccountFeature,
              Lithic::AuthRules::RuleFeature::CardFeature,
              Lithic::AuthRules::RuleFeature::AccountHolderFeature,
              Lithic::AuthRules::RuleFeature::IPMetadataFeature,
              Lithic::AuthRules::RuleFeature::SpendVelocityFeature,
              Lithic::AuthRules::RuleFeature::PaymentVelocityFeature,
              Lithic::AuthRules::RuleFeature::TransactionHistorySignalsFeature,
              Lithic::AuthRules::RuleFeature::ConsecutiveDeclinesFeature,
              Lithic::AuthRules::RuleFeature::ACHPaymentHistoryFeature
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

        class CardTransactionFeature < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::RuleFeature::CardTransactionFeature,
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
            type: :CARD_TRANSACTION
          )
          end

          sig { override.returns({ type: Symbol, name: String }) }
          def to_hash
          end
        end

        class ACHPaymentFeature < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::RuleFeature::ACHPaymentFeature,
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
            type: :ACH_PAYMENT
          )
          end

          sig { override.returns({ type: Symbol, name: String }) }
          def to_hash
          end
        end

        class ExternalBankAccountFeature < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::RuleFeature::ExternalBankAccountFeature,
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
            type: :EXTERNAL_BANK_ACCOUNT
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

        class PaymentVelocityFeature < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::RuleFeature::PaymentVelocityFeature,
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

          # The scope over which the ACH payment velocity is aggregated.
          sig do
            returns(
              Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Scope::OrSymbol
            )
          end
          attr_accessor :scope

          sig { returns(Symbol) }
          attr_accessor :type

          # Optional filters applied when aggregating ACH payment velocity. Payments not
          # matching the provided filters are excluded from the calculated velocity.
          sig do
            returns(
              T.nilable(
                Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters
              )
            )
          end
          attr_reader :filters

          sig do
            params(
              filters:
                Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::OrHash
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
                Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Scope::OrSymbol,
              filters:
                Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::OrHash,
              name: String,
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Velocity over the current day since 00:00 / 12 AM in Eastern Time
            period:,
            # The scope over which the ACH payment velocity is aggregated.
            scope:,
            # Optional filters applied when aggregating ACH payment velocity. Payments not
            # matching the provided filters are excluded from the calculated velocity.
            filters: nil,
            # The variable name for this feature in the rule function signature
            name: nil,
            type: :PAYMENT_VELOCITY
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
                  Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Scope::OrSymbol,
                type: Symbol,
                filters:
                  Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters,
                name: String
              }
            )
          end
          def to_hash
          end

          # The scope over which the ACH payment velocity is aggregated.
          module Scope
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Scope
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FINANCIAL_ACCOUNT =
              T.let(
                :FINANCIAL_ACCOUNT,
                Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Scope::TaggedSymbol
              )
            GLOBAL =
              T.let(
                :GLOBAL,
                Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Scope::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Scope::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Filters < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters,
                  Lithic::Internal::AnyHash
                )
              end

            # Exclude payments matching any of the provided tag key-value pairs.
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_accessor :exclude_tags

            # Payment types to include in the velocity calculation.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludePaymentType::OrSymbol
                  ]
                )
              )
            end
            attr_accessor :include_payment_types

            # Payment polarities to include in the velocity calculation.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludePolarity::OrSymbol
                  ]
                )
              )
            end
            attr_accessor :include_polarities

            # Payment statuses to include in the velocity calculation.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludeStatus::OrSymbol
                  ]
                )
              )
            end
            attr_accessor :include_statuses

            # Only include payments matching all of the provided tag key-value pairs.
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_accessor :include_tags

            # Only include payments with the given result.
            sig do
              returns(
                T.nilable(
                  Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::Result::OrSymbol
                )
              )
            end
            attr_reader :result

            sig do
              params(
                result:
                  Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::Result::OrSymbol
              ).void
            end
            attr_writer :result

            # Optional filters applied when aggregating ACH payment velocity. Payments not
            # matching the provided filters are excluded from the calculated velocity.
            sig do
              params(
                exclude_tags: T.nilable(T::Hash[Symbol, String]),
                include_payment_types:
                  T.nilable(
                    T::Array[
                      Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludePaymentType::OrSymbol
                    ]
                  ),
                include_polarities:
                  T.nilable(
                    T::Array[
                      Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludePolarity::OrSymbol
                    ]
                  ),
                include_statuses:
                  T.nilable(
                    T::Array[
                      Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludeStatus::OrSymbol
                    ]
                  ),
                include_tags: T.nilable(T::Hash[Symbol, String]),
                result:
                  Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::Result::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Exclude payments matching any of the provided tag key-value pairs.
              exclude_tags: nil,
              # Payment types to include in the velocity calculation.
              include_payment_types: nil,
              # Payment polarities to include in the velocity calculation.
              include_polarities: nil,
              # Payment statuses to include in the velocity calculation.
              include_statuses: nil,
              # Only include payments matching all of the provided tag key-value pairs.
              include_tags: nil,
              # Only include payments with the given result.
              result: nil
            )
            end

            sig do
              override.returns(
                {
                  exclude_tags: T.nilable(T::Hash[Symbol, String]),
                  include_payment_types:
                    T.nilable(
                      T::Array[
                        Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludePaymentType::OrSymbol
                      ]
                    ),
                  include_polarities:
                    T.nilable(
                      T::Array[
                        Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludePolarity::OrSymbol
                      ]
                    ),
                  include_statuses:
                    T.nilable(
                      T::Array[
                        Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludeStatus::OrSymbol
                      ]
                    ),
                  include_tags: T.nilable(T::Hash[Symbol, String]),
                  result:
                    Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::Result::OrSymbol
                }
              )
            end
            def to_hash
            end

            module IncludePaymentType
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludePaymentType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ORIGINATION =
                T.let(
                  :ORIGINATION,
                  Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludePaymentType::TaggedSymbol
                )
              RECEIPT =
                T.let(
                  :RECEIPT,
                  Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludePaymentType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludePaymentType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module IncludePolarity
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludePolarity
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CREDIT =
                T.let(
                  :CREDIT,
                  Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludePolarity::TaggedSymbol
                )
              DEBIT =
                T.let(
                  :DEBIT,
                  Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludePolarity::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludePolarity::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module IncludeStatus
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludeStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PENDING =
                T.let(
                  :PENDING,
                  Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludeStatus::TaggedSymbol
                )
              SETTLED =
                T.let(
                  :SETTLED,
                  Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludeStatus::TaggedSymbol
                )
              DECLINED =
                T.let(
                  :DECLINED,
                  Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludeStatus::TaggedSymbol
                )
              REVERSED =
                T.let(
                  :REVERSED,
                  Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludeStatus::TaggedSymbol
                )
              CANCELED =
                T.let(
                  :CANCELED,
                  Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludeStatus::TaggedSymbol
                )
              RETURNED =
                T.let(
                  :RETURNED,
                  Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludeStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludeStatus::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Only include payments with the given result.
            module Result
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::Result
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              APPROVED =
                T.let(
                  :APPROVED,
                  Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::Result::TaggedSymbol
                )
              DECLINED =
                T.let(
                  :DECLINED,
                  Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::Result::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::Result::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class TransactionHistorySignalsFeature < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::RuleFeature::TransactionHistorySignalsFeature,
                Lithic::Internal::AnyHash
              )
            end

          # The entity scope to load transaction history signals for.
          sig do
            returns(
              Lithic::AuthRules::RuleFeature::TransactionHistorySignalsFeature::Scope::OrSymbol
            )
          end
          attr_accessor :scope

          sig { returns(Symbol) }
          attr_accessor :type

          # The variable name for this feature in the rule function signature
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            params(
              scope:
                Lithic::AuthRules::RuleFeature::TransactionHistorySignalsFeature::Scope::OrSymbol,
              name: String,
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The entity scope to load transaction history signals for.
            scope:,
            # The variable name for this feature in the rule function signature
            name: nil,
            type: :TRANSACTION_HISTORY_SIGNALS
          )
          end

          sig do
            override.returns(
              {
                scope:
                  Lithic::AuthRules::RuleFeature::TransactionHistorySignalsFeature::Scope::OrSymbol,
                type: Symbol,
                name: String
              }
            )
          end
          def to_hash
          end

          # The entity scope to load transaction history signals for.
          module Scope
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::RuleFeature::TransactionHistorySignalsFeature::Scope
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CARD =
              T.let(
                :CARD,
                Lithic::AuthRules::RuleFeature::TransactionHistorySignalsFeature::Scope::TaggedSymbol
              )
            ACCOUNT =
              T.let(
                :ACCOUNT,
                Lithic::AuthRules::RuleFeature::TransactionHistorySignalsFeature::Scope::TaggedSymbol
              )
            BUSINESS_ACCOUNT =
              T.let(
                :BUSINESS_ACCOUNT,
                Lithic::AuthRules::RuleFeature::TransactionHistorySignalsFeature::Scope::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::RuleFeature::TransactionHistorySignalsFeature::Scope::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class ConsecutiveDeclinesFeature < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::RuleFeature::ConsecutiveDeclinesFeature,
                Lithic::Internal::AnyHash
              )
            end

          # The entity scope to count consecutive declines for.
          sig do
            returns(
              Lithic::AuthRules::RuleFeature::ConsecutiveDeclinesFeature::Scope::OrSymbol
            )
          end
          attr_accessor :scope

          sig { returns(Symbol) }
          attr_accessor :type

          # The variable name for this feature in the rule function signature
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            params(
              scope:
                Lithic::AuthRules::RuleFeature::ConsecutiveDeclinesFeature::Scope::OrSymbol,
              name: String,
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The entity scope to count consecutive declines for.
            scope:,
            # The variable name for this feature in the rule function signature
            name: nil,
            type: :CONSECUTIVE_DECLINES
          )
          end

          sig do
            override.returns(
              {
                scope:
                  Lithic::AuthRules::RuleFeature::ConsecutiveDeclinesFeature::Scope::OrSymbol,
                type: Symbol,
                name: String
              }
            )
          end
          def to_hash
          end

          # The entity scope to count consecutive declines for.
          module Scope
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::RuleFeature::ConsecutiveDeclinesFeature::Scope
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CARD =
              T.let(
                :CARD,
                Lithic::AuthRules::RuleFeature::ConsecutiveDeclinesFeature::Scope::TaggedSymbol
              )
            ACCOUNT =
              T.let(
                :ACCOUNT,
                Lithic::AuthRules::RuleFeature::ConsecutiveDeclinesFeature::Scope::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::RuleFeature::ConsecutiveDeclinesFeature::Scope::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class ACHPaymentHistoryFeature < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::RuleFeature::ACHPaymentHistoryFeature,
                Lithic::Internal::AnyHash
              )
            end

          # The entity scope to load ACH payment history for.
          sig do
            returns(
              Lithic::AuthRules::RuleFeature::ACHPaymentHistoryFeature::Scope::OrSymbol
            )
          end
          attr_accessor :scope

          sig { returns(Symbol) }
          attr_accessor :type

          # The variable name for this feature in the rule function signature
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            params(
              scope:
                Lithic::AuthRules::RuleFeature::ACHPaymentHistoryFeature::Scope::OrSymbol,
              name: String,
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The entity scope to load ACH payment history for.
            scope:,
            # The variable name for this feature in the rule function signature
            name: nil,
            type: :ACH_PAYMENT_HISTORY
          )
          end

          sig do
            override.returns(
              {
                scope:
                  Lithic::AuthRules::RuleFeature::ACHPaymentHistoryFeature::Scope::OrSymbol,
                type: Symbol,
                name: String
              }
            )
          end
          def to_hash
          end

          # The entity scope to load ACH payment history for.
          module Scope
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::RuleFeature::ACHPaymentHistoryFeature::Scope
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FINANCIAL_ACCOUNT =
              T.let(
                :FINANCIAL_ACCOUNT,
                Lithic::AuthRules::RuleFeature::ACHPaymentHistoryFeature::Scope::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::RuleFeature::ACHPaymentHistoryFeature::Scope::TaggedSymbol
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
