# frozen_string_literal: true

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

        variant -> { Lithic::AuthRules::RuleFeature::AuthorizationFeature }

        variant -> { Lithic::AuthRules::RuleFeature::AuthenticationFeature }

        variant -> { Lithic::AuthRules::RuleFeature::TokenizationFeature }

        variant -> { Lithic::AuthRules::RuleFeature::ACHReceiptFeature }

        variant -> { Lithic::AuthRules::RuleFeature::CardTransactionFeature }

        variant -> { Lithic::AuthRules::RuleFeature::ACHPaymentFeature }

        variant -> { Lithic::AuthRules::RuleFeature::ExternalBankAccountFeature }

        variant -> { Lithic::AuthRules::RuleFeature::CardFeature }

        variant -> { Lithic::AuthRules::RuleFeature::AccountHolderFeature }

        variant -> { Lithic::AuthRules::RuleFeature::IPMetadataFeature }

        variant -> { Lithic::AuthRules::RuleFeature::SpendVelocityFeature }

        variant -> { Lithic::AuthRules::RuleFeature::PaymentVelocityFeature }

        variant -> { Lithic::AuthRules::RuleFeature::TransactionHistorySignalsFeature }

        variant -> { Lithic::AuthRules::RuleFeature::ConsecutiveDeclinesFeature }

        variant -> { Lithic::AuthRules::RuleFeature::ACHPaymentHistoryFeature }

        class AuthorizationFeature < Lithic::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :AUTHORIZATION]
          required :type, const: :AUTHORIZATION

          # @!attribute name
          #   The variable name for this feature in the rule function signature
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(name: nil, type: :AUTHORIZATION)
          #   @param name [String] The variable name for this feature in the rule function signature
          #
          #   @param type [Symbol, :AUTHORIZATION]
        end

        class AuthenticationFeature < Lithic::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :AUTHENTICATION]
          required :type, const: :AUTHENTICATION

          # @!attribute name
          #   The variable name for this feature in the rule function signature
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(name: nil, type: :AUTHENTICATION)
          #   @param name [String] The variable name for this feature in the rule function signature
          #
          #   @param type [Symbol, :AUTHENTICATION]
        end

        class TokenizationFeature < Lithic::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :TOKENIZATION]
          required :type, const: :TOKENIZATION

          # @!attribute name
          #   The variable name for this feature in the rule function signature
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(name: nil, type: :TOKENIZATION)
          #   @param name [String] The variable name for this feature in the rule function signature
          #
          #   @param type [Symbol, :TOKENIZATION]
        end

        class ACHReceiptFeature < Lithic::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :ACH_RECEIPT]
          required :type, const: :ACH_RECEIPT

          # @!attribute name
          #   The variable name for this feature in the rule function signature
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(name: nil, type: :ACH_RECEIPT)
          #   @param name [String] The variable name for this feature in the rule function signature
          #
          #   @param type [Symbol, :ACH_RECEIPT]
        end

        class CardTransactionFeature < Lithic::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :CARD_TRANSACTION]
          required :type, const: :CARD_TRANSACTION

          # @!attribute name
          #   The variable name for this feature in the rule function signature
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(name: nil, type: :CARD_TRANSACTION)
          #   @param name [String] The variable name for this feature in the rule function signature
          #
          #   @param type [Symbol, :CARD_TRANSACTION]
        end

        class ACHPaymentFeature < Lithic::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :ACH_PAYMENT]
          required :type, const: :ACH_PAYMENT

          # @!attribute name
          #   The variable name for this feature in the rule function signature
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(name: nil, type: :ACH_PAYMENT)
          #   @param name [String] The variable name for this feature in the rule function signature
          #
          #   @param type [Symbol, :ACH_PAYMENT]
        end

        class ExternalBankAccountFeature < Lithic::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :EXTERNAL_BANK_ACCOUNT]
          required :type, const: :EXTERNAL_BANK_ACCOUNT

          # @!attribute name
          #   The variable name for this feature in the rule function signature
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(name: nil, type: :EXTERNAL_BANK_ACCOUNT)
          #   @param name [String] The variable name for this feature in the rule function signature
          #
          #   @param type [Symbol, :EXTERNAL_BANK_ACCOUNT]
        end

        class CardFeature < Lithic::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :CARD]
          required :type, const: :CARD

          # @!attribute name
          #   The variable name for this feature in the rule function signature
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(name: nil, type: :CARD)
          #   @param name [String] The variable name for this feature in the rule function signature
          #
          #   @param type [Symbol, :CARD]
        end

        class AccountHolderFeature < Lithic::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :ACCOUNT_HOLDER]
          required :type, const: :ACCOUNT_HOLDER

          # @!attribute name
          #   The variable name for this feature in the rule function signature
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(name: nil, type: :ACCOUNT_HOLDER)
          #   @param name [String] The variable name for this feature in the rule function signature
          #
          #   @param type [Symbol, :ACCOUNT_HOLDER]
        end

        class IPMetadataFeature < Lithic::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :IP_METADATA]
          required :type, const: :IP_METADATA

          # @!attribute name
          #   The variable name for this feature in the rule function signature
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(name: nil, type: :IP_METADATA)
          #   @param name [String] The variable name for this feature in the rule function signature
          #
          #   @param type [Symbol, :IP_METADATA]
        end

        class SpendVelocityFeature < Lithic::Internal::Type::BaseModel
          # @!attribute period
          #   Velocity over the current day since 00:00 / 12 AM in Eastern Time
          #
          #   @return [Lithic::Models::AuthRules::VelocityLimitPeriod::TrailingWindowObject, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowDay, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowWeek, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowMonth, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowYear]
          required :period, union: -> { Lithic::AuthRules::VelocityLimitPeriod }

          # @!attribute scope
          #   The scope the velocity is calculated for
          #
          #   @return [Symbol, Lithic::Models::AuthRules::RuleFeature::SpendVelocityFeature::Scope]
          required :scope, enum: -> { Lithic::AuthRules::RuleFeature::SpendVelocityFeature::Scope }

          # @!attribute type
          #
          #   @return [Symbol, :SPEND_VELOCITY]
          required :type, const: :SPEND_VELOCITY

          # @!attribute filters
          #
          #   @return [Lithic::Models::AuthRules::VelocityLimitFilters, nil]
          optional :filters, -> { Lithic::AuthRules::VelocityLimitFilters }

          # @!attribute name
          #   The variable name for this feature in the rule function signature
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(period:, scope:, filters: nil, name: nil, type: :SPEND_VELOCITY)
          #   @param period [Lithic::Models::AuthRules::VelocityLimitPeriod::TrailingWindowObject, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowDay, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowWeek, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowMonth, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowYear] Velocity over the current day since 00:00 / 12 AM in Eastern Time
          #
          #   @param scope [Symbol, Lithic::Models::AuthRules::RuleFeature::SpendVelocityFeature::Scope] The scope the velocity is calculated for
          #
          #   @param filters [Lithic::Models::AuthRules::VelocityLimitFilters]
          #
          #   @param name [String] The variable name for this feature in the rule function signature
          #
          #   @param type [Symbol, :SPEND_VELOCITY]

          # The scope the velocity is calculated for
          #
          # @see Lithic::Models::AuthRules::RuleFeature::SpendVelocityFeature#scope
          module Scope
            extend Lithic::Internal::Type::Enum

            CARD = :CARD
            ACCOUNT = :ACCOUNT

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class PaymentVelocityFeature < Lithic::Internal::Type::BaseModel
          # @!attribute period
          #   Velocity over the current day since 00:00 / 12 AM in Eastern Time
          #
          #   @return [Lithic::Models::AuthRules::VelocityLimitPeriod::TrailingWindowObject, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowDay, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowWeek, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowMonth, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowYear]
          required :period, union: -> { Lithic::AuthRules::VelocityLimitPeriod }

          # @!attribute scope
          #   The scope over which the ACH payment velocity is aggregated.
          #
          #   @return [Symbol, Lithic::Models::AuthRules::RuleFeature::PaymentVelocityFeature::Scope]
          required :scope, enum: -> { Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Scope }

          # @!attribute type
          #
          #   @return [Symbol, :PAYMENT_VELOCITY]
          required :type, const: :PAYMENT_VELOCITY

          # @!attribute filters
          #   Optional filters applied when aggregating ACH payment velocity. Payments not
          #   matching the provided filters are excluded from the calculated velocity.
          #
          #   @return [Lithic::Models::AuthRules::RuleFeature::PaymentVelocityFeature::Filters, nil]
          optional :filters, -> { Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters }

          # @!attribute name
          #   The variable name for this feature in the rule function signature
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(period:, scope:, filters: nil, name: nil, type: :PAYMENT_VELOCITY)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::RuleFeature::PaymentVelocityFeature} for more
          #   details.
          #
          #   @param period [Lithic::Models::AuthRules::VelocityLimitPeriod::TrailingWindowObject, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowDay, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowWeek, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowMonth, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowYear] Velocity over the current day since 00:00 / 12 AM in Eastern Time
          #
          #   @param scope [Symbol, Lithic::Models::AuthRules::RuleFeature::PaymentVelocityFeature::Scope] The scope over which the ACH payment velocity is aggregated.
          #
          #   @param filters [Lithic::Models::AuthRules::RuleFeature::PaymentVelocityFeature::Filters] Optional filters applied when aggregating ACH payment velocity. Payments not mat
          #
          #   @param name [String] The variable name for this feature in the rule function signature
          #
          #   @param type [Symbol, :PAYMENT_VELOCITY]

          # The scope over which the ACH payment velocity is aggregated.
          #
          # @see Lithic::Models::AuthRules::RuleFeature::PaymentVelocityFeature#scope
          module Scope
            extend Lithic::Internal::Type::Enum

            FINANCIAL_ACCOUNT = :FINANCIAL_ACCOUNT
            GLOBAL = :GLOBAL

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Lithic::Models::AuthRules::RuleFeature::PaymentVelocityFeature#filters
          class Filters < Lithic::Internal::Type::BaseModel
            # @!attribute exclude_tags
            #   Exclude payments matching any of the provided tag key-value pairs.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :exclude_tags, Lithic::Internal::Type::HashOf[String], nil?: true

            # @!attribute include_payment_types
            #   Payment types to include in the velocity calculation.
            #
            #   @return [Array<Symbol, Lithic::Models::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludePaymentType>, nil]
            optional :include_payment_types,
                     -> {
                       Lithic::Internal::Type::ArrayOf[enum: Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludePaymentType]
                     },
                     nil?: true

            # @!attribute include_polarities
            #   Payment polarities to include in the velocity calculation.
            #
            #   @return [Array<Symbol, Lithic::Models::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludePolarity>, nil]
            optional :include_polarities,
                     -> {
                       Lithic::Internal::Type::ArrayOf[enum: Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludePolarity]
                     },
                     nil?: true

            # @!attribute include_statuses
            #   Payment statuses to include in the velocity calculation.
            #
            #   @return [Array<Symbol, Lithic::Models::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludeStatus>, nil]
            optional :include_statuses,
                     -> {
                       Lithic::Internal::Type::ArrayOf[enum: Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludeStatus]
                     },
                     nil?: true

            # @!attribute include_tags
            #   Only include payments matching all of the provided tag key-value pairs.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :include_tags, Lithic::Internal::Type::HashOf[String], nil?: true

            # @!attribute result
            #   Only include payments with the given result.
            #
            #   @return [Symbol, Lithic::Models::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::Result, nil]
            optional :result, enum: -> { Lithic::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::Result }

            # @!method initialize(exclude_tags: nil, include_payment_types: nil, include_polarities: nil, include_statuses: nil, include_tags: nil, result: nil)
            #   Optional filters applied when aggregating ACH payment velocity. Payments not
            #   matching the provided filters are excluded from the calculated velocity.
            #
            #   @param exclude_tags [Hash{Symbol=>String}, nil] Exclude payments matching any of the provided tag key-value pairs.
            #
            #   @param include_payment_types [Array<Symbol, Lithic::Models::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludePaymentType>, nil] Payment types to include in the velocity calculation.
            #
            #   @param include_polarities [Array<Symbol, Lithic::Models::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludePolarity>, nil] Payment polarities to include in the velocity calculation.
            #
            #   @param include_statuses [Array<Symbol, Lithic::Models::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::IncludeStatus>, nil] Payment statuses to include in the velocity calculation.
            #
            #   @param include_tags [Hash{Symbol=>String}, nil] Only include payments matching all of the provided tag key-value pairs.
            #
            #   @param result [Symbol, Lithic::Models::AuthRules::RuleFeature::PaymentVelocityFeature::Filters::Result] Only include payments with the given result.

            module IncludePaymentType
              extend Lithic::Internal::Type::Enum

              ORIGINATION = :ORIGINATION
              RECEIPT = :RECEIPT

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            module IncludePolarity
              extend Lithic::Internal::Type::Enum

              CREDIT = :CREDIT
              DEBIT = :DEBIT

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            module IncludeStatus
              extend Lithic::Internal::Type::Enum

              PENDING = :PENDING
              SETTLED = :SETTLED
              DECLINED = :DECLINED
              REVERSED = :REVERSED
              CANCELED = :CANCELED
              RETURNED = :RETURNED

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Only include payments with the given result.
            #
            # @see Lithic::Models::AuthRules::RuleFeature::PaymentVelocityFeature::Filters#result
            module Result
              extend Lithic::Internal::Type::Enum

              APPROVED = :APPROVED
              DECLINED = :DECLINED

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        class TransactionHistorySignalsFeature < Lithic::Internal::Type::BaseModel
          # @!attribute scope
          #   The entity scope to load transaction history signals for.
          #
          #   @return [Symbol, Lithic::Models::AuthRules::RuleFeature::TransactionHistorySignalsFeature::Scope]
          required :scope, enum: -> { Lithic::AuthRules::RuleFeature::TransactionHistorySignalsFeature::Scope }

          # @!attribute type
          #
          #   @return [Symbol, :TRANSACTION_HISTORY_SIGNALS]
          required :type, const: :TRANSACTION_HISTORY_SIGNALS

          # @!attribute name
          #   The variable name for this feature in the rule function signature
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(scope:, name: nil, type: :TRANSACTION_HISTORY_SIGNALS)
          #   @param scope [Symbol, Lithic::Models::AuthRules::RuleFeature::TransactionHistorySignalsFeature::Scope] The entity scope to load transaction history signals for.
          #
          #   @param name [String] The variable name for this feature in the rule function signature
          #
          #   @param type [Symbol, :TRANSACTION_HISTORY_SIGNALS]

          # The entity scope to load transaction history signals for.
          #
          # @see Lithic::Models::AuthRules::RuleFeature::TransactionHistorySignalsFeature#scope
          module Scope
            extend Lithic::Internal::Type::Enum

            CARD = :CARD
            ACCOUNT = :ACCOUNT
            BUSINESS_ACCOUNT = :BUSINESS_ACCOUNT

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class ConsecutiveDeclinesFeature < Lithic::Internal::Type::BaseModel
          # @!attribute scope
          #   The entity scope to count consecutive declines for.
          #
          #   @return [Symbol, Lithic::Models::AuthRules::RuleFeature::ConsecutiveDeclinesFeature::Scope]
          required :scope, enum: -> { Lithic::AuthRules::RuleFeature::ConsecutiveDeclinesFeature::Scope }

          # @!attribute type
          #
          #   @return [Symbol, :CONSECUTIVE_DECLINES]
          required :type, const: :CONSECUTIVE_DECLINES

          # @!attribute name
          #   The variable name for this feature in the rule function signature
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(scope:, name: nil, type: :CONSECUTIVE_DECLINES)
          #   @param scope [Symbol, Lithic::Models::AuthRules::RuleFeature::ConsecutiveDeclinesFeature::Scope] The entity scope to count consecutive declines for.
          #
          #   @param name [String] The variable name for this feature in the rule function signature
          #
          #   @param type [Symbol, :CONSECUTIVE_DECLINES]

          # The entity scope to count consecutive declines for.
          #
          # @see Lithic::Models::AuthRules::RuleFeature::ConsecutiveDeclinesFeature#scope
          module Scope
            extend Lithic::Internal::Type::Enum

            CARD = :CARD
            ACCOUNT = :ACCOUNT

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class ACHPaymentHistoryFeature < Lithic::Internal::Type::BaseModel
          # @!attribute scope
          #   The entity scope to load ACH payment history for.
          #
          #   @return [Symbol, Lithic::Models::AuthRules::RuleFeature::ACHPaymentHistoryFeature::Scope]
          required :scope, enum: -> { Lithic::AuthRules::RuleFeature::ACHPaymentHistoryFeature::Scope }

          # @!attribute type
          #
          #   @return [Symbol, :ACH_PAYMENT_HISTORY]
          required :type, const: :ACH_PAYMENT_HISTORY

          # @!attribute name
          #   The variable name for this feature in the rule function signature
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(scope:, name: nil, type: :ACH_PAYMENT_HISTORY)
          #   @param scope [Symbol, Lithic::Models::AuthRules::RuleFeature::ACHPaymentHistoryFeature::Scope] The entity scope to load ACH payment history for.
          #
          #   @param name [String] The variable name for this feature in the rule function signature
          #
          #   @param type [Symbol, :ACH_PAYMENT_HISTORY]

          # The entity scope to load ACH payment history for.
          #
          # @see Lithic::Models::AuthRules::RuleFeature::ACHPaymentHistoryFeature#scope
          module Scope
            extend Lithic::Internal::Type::Enum

            FINANCIAL_ACCOUNT = :FINANCIAL_ACCOUNT

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(Lithic::Models::AuthRules::RuleFeature::AuthorizationFeature, Lithic::Models::AuthRules::RuleFeature::AuthenticationFeature, Lithic::Models::AuthRules::RuleFeature::TokenizationFeature, Lithic::Models::AuthRules::RuleFeature::ACHReceiptFeature, Lithic::Models::AuthRules::RuleFeature::CardTransactionFeature, Lithic::Models::AuthRules::RuleFeature::ACHPaymentFeature, Lithic::Models::AuthRules::RuleFeature::ExternalBankAccountFeature, Lithic::Models::AuthRules::RuleFeature::CardFeature, Lithic::Models::AuthRules::RuleFeature::AccountHolderFeature, Lithic::Models::AuthRules::RuleFeature::IPMetadataFeature, Lithic::Models::AuthRules::RuleFeature::SpendVelocityFeature, Lithic::Models::AuthRules::RuleFeature::PaymentVelocityFeature, Lithic::Models::AuthRules::RuleFeature::TransactionHistorySignalsFeature, Lithic::Models::AuthRules::RuleFeature::ConsecutiveDeclinesFeature, Lithic::Models::AuthRules::RuleFeature::ACHPaymentHistoryFeature)]
      end
    end
  end
end
