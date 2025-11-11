# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#retrieve_features
      class V2RetrieveFeaturesResponse < Lithic::Internal::Type::BaseModel
        # @!attribute evaluated
        #   Timestamp at which the Features were evaluated
        #
        #   @return [Time]
        required :evaluated, Time

        # @!attribute features
        #   Calculated Features used for evaluation of the provided Auth Rule
        #
        #   @return [Array<Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature>]
        required :features,
                 -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature] }

        # @!method initialize(evaluated:, features:)
        #   @param evaluated [Time] Timestamp at which the Features were evaluated
        #
        #   @param features [Array<Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature>] Calculated Features used for evaluation of the provided Auth Rule

        class Feature < Lithic::Internal::Type::BaseModel
          # @!attribute filters
          #
          #   @return [Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters]
          required :filters, -> { Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters }

          # @!attribute period
          #   Velocity over the current day since 00:00 / 12 AM in Eastern Time
          #
          #   @return [Lithic::Models::AuthRules::VelocityLimitPeriod::TrailingWindowObject, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowDay, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowWeek, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowMonth, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowYear]
          required :period, union: -> { Lithic::AuthRules::VelocityLimitPeriod }

          # @!attribute scope
          #   The scope the velocity is calculated for
          #
          #   @return [Symbol, Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Scope]
          required :scope, enum: -> { Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Scope }

          # @!attribute value
          #
          #   @return [Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Value]
          required :value, -> { Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Value }

          # @!method initialize(filters:, period:, scope:, value:)
          #   @param filters [Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters]
          #
          #   @param period [Lithic::Models::AuthRules::VelocityLimitPeriod::TrailingWindowObject, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowDay, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowWeek, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowMonth, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowYear] Velocity over the current day since 00:00 / 12 AM in Eastern Time
          #
          #   @param scope [Symbol, Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Scope] The scope the velocity is calculated for
          #
          #   @param value [Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Value]

          # @see Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature#filters
          class Filters < Lithic::Internal::Type::BaseModel
            # @!attribute exclude_countries
            #   ISO-3166-1 alpha-3 Country Codes to exclude from the velocity calculation.
            #   Transactions matching any of the provided will be excluded from the calculated
            #   velocity.
            #
            #   @return [Array<String>, nil]
            optional :exclude_countries, Lithic::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute exclude_mccs
            #   Merchant Category Codes to exclude from the velocity calculation. Transactions
            #   matching this MCC will be excluded from the calculated velocity.
            #
            #   @return [Array<String>, nil]
            optional :exclude_mccs, Lithic::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute include_countries
            #   ISO-3166-1 alpha-3 Country Codes to include in the velocity calculation.
            #   Transactions not matching any of the provided will not be included in the
            #   calculated velocity.
            #
            #   @return [Array<String>, nil]
            optional :include_countries, Lithic::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute include_mccs
            #   Merchant Category Codes to include in the velocity calculation. Transactions not
            #   matching this MCC will not be included in the calculated velocity.
            #
            #   @return [Array<String>, nil]
            optional :include_mccs, Lithic::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute include_pan_entry_modes
            #   PAN entry modes to include in the velocity calculation. Transactions not
            #   matching any of the provided will not be included in the calculated velocity.
            #
            #   @return [Array<Symbol, Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::IncludePanEntryMode>, nil]
            optional :include_pan_entry_modes,
                     -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::IncludePanEntryMode] },
                     nil?: true

            # @!method initialize(exclude_countries: nil, exclude_mccs: nil, include_countries: nil, include_mccs: nil, include_pan_entry_modes: nil)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters} for
            #   more details.
            #
            #   @param exclude_countries [Array<String>, nil] ISO-3166-1 alpha-3 Country Codes to exclude from the velocity calculation. Trans
            #
            #   @param exclude_mccs [Array<String>, nil] Merchant Category Codes to exclude from the velocity calculation. Transactions m
            #
            #   @param include_countries [Array<String>, nil] ISO-3166-1 alpha-3 Country Codes to include in the velocity calculation. Transac
            #
            #   @param include_mccs [Array<String>, nil] Merchant Category Codes to include in the velocity calculation. Transactions not
            #
            #   @param include_pan_entry_modes [Array<Symbol, Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::IncludePanEntryMode>, nil] PAN entry modes to include in the velocity calculation. Transactions not matchin

            module IncludePanEntryMode
              extend Lithic::Internal::Type::Enum

              AUTO_ENTRY = :AUTO_ENTRY
              BAR_CODE = :BAR_CODE
              CONTACTLESS = :CONTACTLESS
              CREDENTIAL_ON_FILE = :CREDENTIAL_ON_FILE
              ECOMMERCE = :ECOMMERCE
              ERROR_KEYED = :ERROR_KEYED
              ERROR_MAGNETIC_STRIPE = :ERROR_MAGNETIC_STRIPE
              ICC = :ICC
              KEY_ENTERED = :KEY_ENTERED
              MAGNETIC_STRIPE = :MAGNETIC_STRIPE
              MANUAL = :MANUAL
              OCR = :OCR
              SECURE_CARDLESS = :SECURE_CARDLESS
              UNSPECIFIED = :UNSPECIFIED
              UNKNOWN = :UNKNOWN

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # The scope the velocity is calculated for
          #
          # @see Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature#scope
          module Scope
            extend Lithic::Internal::Type::Enum

            CARD = :CARD
            ACCOUNT = :ACCOUNT

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature#value
          class Value < Lithic::Internal::Type::BaseModel
            # @!attribute amount
            #   Amount (in cents) for the given Auth Rule that is used as input for calculating
            #   the rule. For Velocity Limit rules this would be the calculated Velocity. For
            #   Conditional Rules using CARD*TRANSACTION_COUNT*\* this will be 0
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute count
            #   Number of velocity impacting transactions matching the given scope, period and
            #   filters
            #
            #   @return [Integer]
            required :count, Integer

            # @!method initialize(amount:, count:)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Value} for more
            #   details.
            #
            #   @param amount [Integer] Amount (in cents) for the given Auth Rule that is used as input for calculating
            #
            #   @param count [Integer] Number of velocity impacting transactions matching the given scope, period and f
          end
        end
      end
    end
  end
end
