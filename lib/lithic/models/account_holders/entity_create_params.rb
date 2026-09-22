# frozen_string_literal: true

module Lithic
  module Models
    module AccountHolders
      # @see Lithic::Resources::AccountHolders::Entities#create
      class EntityCreateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute account_holder_token
        #
        #   @return [String]
        required :account_holder_token, String

        # @!attribute address
        #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are supported for the KYB
        #   and KYC workflows.
        #
        #   @return [Lithic::Models::AccountHolders::EntityCreateParams::Address]
        required :address, -> { Lithic::AccountHolders::EntityCreateParams::Address }

        # @!attribute dob
        #   Individual's date of birth, as an RFC 3339 date.
        #
        #   @return [String]
        required :dob, String

        # @!attribute email
        #   Individual's email address. If utilizing Lithic for chargeback processing, this
        #   customer email address may be used to communicate dispute status and resolution.
        #
        #   @return [String]
        required :email, String

        # @!attribute first_name
        #   Individual's first name, as it appears on government-issued identity documents.
        #
        #   @return [String]
        required :first_name, String

        # @!attribute government_id
        #   Government-issued identification number (required for identity verification and
        #   compliance with banking regulations). Social Security Numbers (SSN) and
        #   Individual Taxpayer Identification Numbers (ITIN) are currently supported,
        #   entered as full nine-digits, with or without hyphens
        #
        #   @return [String]
        required :government_id, String

        # @!attribute last_name
        #   Individual's last name, as it appears on government-issued identity documents.
        #
        #   @return [String]
        required :last_name, String

        # @!attribute phone_number
        #   Individual's phone number, entered in E.164 format.
        #
        #   @return [String]
        required :phone_number, String

        # @!attribute type
        #   The type of entity to create on the account holder
        #
        #   @return [Symbol, Lithic::Models::TransactionMonitoring::EntityType]
        required :type, enum: -> { Lithic::TransactionMonitoring::EntityType }

        # @!method initialize(account_holder_token:, address:, dob:, email:, first_name:, government_id:, last_name:, phone_number:, type:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::AccountHolders::EntityCreateParams} for more details.
        #
        #   @param account_holder_token [String]
        #
        #   @param address [Lithic::Models::AccountHolders::EntityCreateParams::Address] Individual's current address - PO boxes, UPS drops, and FedEx drops are not acce
        #
        #   @param dob [String] Individual's date of birth, as an RFC 3339 date.
        #
        #   @param email [String] Individual's email address. If utilizing Lithic for chargeback processing, this
        #
        #   @param first_name [String] Individual's first name, as it appears on government-issued identity documents.
        #
        #   @param government_id [String] Government-issued identification number (required for identity verification and
        #
        #   @param last_name [String] Individual's last name, as it appears on government-issued identity documents.
        #
        #   @param phone_number [String] Individual's phone number, entered in E.164 format.
        #
        #   @param type [Symbol, Lithic::Models::TransactionMonitoring::EntityType] The type of entity to create on the account holder
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

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
          #   {Lithic::Models::AccountHolders::EntityCreateParams::Address} for more details.
          #
          #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
          #   acceptable; APO/FPO are acceptable. Only USA addresses are supported for the KYB
          #   and KYC workflows.
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
end
