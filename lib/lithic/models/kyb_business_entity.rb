# frozen_string_literal: true

module Lithic
  module Models
    class KYBBusinessEntity < Lithic::Internal::Type::BaseModel
      # @!attribute address
      #   Business''s physical address - PO boxes, UPS drops, and FedEx drops are not
      #   acceptable; APO/FPO are acceptable.
      #
      #   @return [Lithic::Models::KYBBusinessEntity::Address]
      required :address, -> { Lithic::KYBBusinessEntity::Address }

      # @!attribute government_id
      #   Government-issued identification number. US Federal Employer Identification
      #   Numbers (EIN) are currently supported, entered as full nine-digits, with or
      #   without hyphens.
      #
      #   @return [String]
      required :government_id, String

      # @!attribute legal_business_name
      #   Legal (formal) business name.
      #
      #   @return [String]
      required :legal_business_name, String

      # @!attribute phone_numbers
      #   One or more of the business's phone number(s), entered as a list in E.164
      #   format.
      #
      #   @return [Array<String>]
      required :phone_numbers, Lithic::Internal::Type::ArrayOf[String]

      # @!attribute dba_business_name
      #   Any name that the business operates under that is not its legal business name
      #   (if applicable).
      #
      #   @return [String, nil]
      optional :dba_business_name, String

      # @!attribute parent_company
      #   Parent company name (if applicable).
      #
      #   @return [String, nil]
      optional :parent_company, String, nil?: true

      # @!method initialize(address:, government_id:, legal_business_name:, phone_numbers:, dba_business_name: nil, parent_company: nil)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::KYBBusinessEntity} for more details.
      #
      #   @param address [Lithic::Models::KYBBusinessEntity::Address] Business''s physical address - PO boxes, UPS drops, and FedEx drops are not acce
      #
      #   @param government_id [String] Government-issued identification number. US Federal Employer Identification Numb
      #
      #   @param legal_business_name [String] Legal (formal) business name.
      #
      #   @param phone_numbers [Array<String>] One or more of the business's phone number(s), entered as a list in E.164 format
      #
      #   @param dba_business_name [String] Any name that the business operates under that is not its legal business name (i
      #
      #   @param parent_company [String, nil] Parent company name (if applicable).

      # @see Lithic::Models::KYBBusinessEntity#address
      class Address < Lithic::Internal::Type::BaseModel
        # @!attribute address1
        #   Valid deliverable address (no PO boxes).
        #
        #   @return [String]
        required :address1, String

        # @!attribute city
        #   Name of city.
        #
        #   @return [String]
        required :city, String

        # @!attribute country
        #   Valid country code, entered in uppercase ISO 3166-1 alpha-3 three-character
        #   format. Supported countries depend on the onboarding workflow used for the
        #   account holder.
        #
        #   @return [String]
        required :country, String

        # @!attribute address2
        #   Unit or apartment number (if applicable).
        #
        #   @return [String, nil]
        optional :address2, String

        # @!attribute postal_code
        #   Valid postal code. For USA addresses, enter either a five-digit postal code or a
        #   nine-digit postal code (ZIP+4) using the format 12345-1234. Required for all
        #   countries except the following, which do not use postal codes: ABW, AGO, ARE,
        #   ATG, BDI, BEN, BFA, BHS, BLZ, BOL, BWA, CIV, CMR, COD, COG, COK, COM, DJI, DMA,
        #   ERI, FJI, GAB, GMB, GNQ, GRD, GUY, HKG, KIR, MAC, MLI, MRT, NIU, NRU, QAT, RWA,
        #   SLB, SLE, SSD, SUR, SXM, SYC, TGO, TKL, TLS, TON, TUV, UGA, VUT, YEM, ZWE
        #
        #   @return [String, nil]
        optional :postal_code, String, nil?: true

        # @!attribute state
        #   Valid state, province, or subdivision code, entered as the uppercase ISO 3166-2
        #   code for the country without the country prefix. For example, `CA` for
        #   California. Optional unless the address is in one of the following countries,
        #   where it is required:
        #
        #   - `USA`
        #   - `CAN`
        #   - `AUS`
        #   - `CHN`
        #   - `KOR`
        #   - `MEX`
        #   - `MYS`
        #   - `NZL`
        #
        #   @return [String, nil]
        optional :state, String, nil?: true

        # @!method initialize(address1:, city:, country:, address2: nil, postal_code: nil, state: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::KYBBusinessEntity::Address} for more details.
        #
        #   Business''s physical address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable.
        #
        #   @param address1 [String] Valid deliverable address (no PO boxes).
        #
        #   @param city [String] Name of city.
        #
        #   @param country [String] Valid country code, entered in uppercase ISO 3166-1 alpha-3 three-character form
        #
        #   @param address2 [String] Unit or apartment number (if applicable).
        #
        #   @param postal_code [String, nil] Valid postal code. For USA addresses, enter either a five-digit postal code or a
        #
        #   @param state [String, nil] Valid state, province, or subdivision code, entered as the uppercase ISO 3166-2
      end
    end
  end
end
