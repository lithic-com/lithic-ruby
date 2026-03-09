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

        variant -> { Lithic::AuthRules::RuleFeature::AuthorizationFeature }

        variant -> { Lithic::AuthRules::RuleFeature::AuthenticationFeature }

        variant -> { Lithic::AuthRules::RuleFeature::TokenizationFeature }

        variant -> { Lithic::AuthRules::RuleFeature::ACHReceiptFeature }

        variant -> { Lithic::AuthRules::RuleFeature::CardFeature }

        variant -> { Lithic::AuthRules::RuleFeature::AccountHolderFeature }

        variant -> { Lithic::AuthRules::RuleFeature::IPMetadataFeature }

        variant -> { Lithic::AuthRules::RuleFeature::SpendVelocityFeature }

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

        # @!method self.variants
        #   @return [Array(Lithic::Models::AuthRules::RuleFeature::AuthorizationFeature, Lithic::Models::AuthRules::RuleFeature::AuthenticationFeature, Lithic::Models::AuthRules::RuleFeature::TokenizationFeature, Lithic::Models::AuthRules::RuleFeature::ACHReceiptFeature, Lithic::Models::AuthRules::RuleFeature::CardFeature, Lithic::Models::AuthRules::RuleFeature::AccountHolderFeature, Lithic::Models::AuthRules::RuleFeature::IPMetadataFeature, Lithic::Models::AuthRules::RuleFeature::SpendVelocityFeature)]
      end
    end
  end
end
