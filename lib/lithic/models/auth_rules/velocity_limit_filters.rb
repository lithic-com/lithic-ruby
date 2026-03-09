# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class VelocityLimitFilters < Lithic::Internal::Type::BaseModel
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
        #   @return [Array<Symbol, Lithic::Models::AuthRules::VelocityLimitFilters::IncludePanEntryMode>, nil]
        optional :include_pan_entry_modes,
                 -> {
                   Lithic::Internal::Type::ArrayOf[enum: Lithic::AuthRules::VelocityLimitFilters::IncludePanEntryMode]
                 },
                 nil?: true

        # @!method initialize(exclude_countries: nil, exclude_mccs: nil, include_countries: nil, include_mccs: nil, include_pan_entry_modes: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::AuthRules::VelocityLimitFilters} for more details.
        #
        #   @param exclude_countries [Array<String>, nil] ISO-3166-1 alpha-3 Country Codes to exclude from the velocity calculation. Trans
        #
        #   @param exclude_mccs [Array<String>, nil] Merchant Category Codes to exclude from the velocity calculation. Transactions m
        #
        #   @param include_countries [Array<String>, nil] ISO-3166-1 alpha-3 Country Codes to include in the velocity calculation. Transac
        #
        #   @param include_mccs [Array<String>, nil] Merchant Category Codes to include in the velocity calculation. Transactions not
        #
        #   @param include_pan_entry_modes [Array<Symbol, Lithic::Models::AuthRules::VelocityLimitFilters::IncludePanEntryMode>, nil] PAN entry modes to include in the velocity calculation. Transactions not matchin

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
    end
  end
end
