# frozen_string_literal: true

module Lithic
  module Models
    module AccountHolders
      # @see Lithic::Resources::AccountHolders::Entities#create
      class EntityCreateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute address
        #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
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
        #   @return [Symbol, Lithic::Models::AccountHolders::EntityCreateParams::Type]
        required :type, enum: -> { Lithic::AccountHolders::EntityCreateParams::Type }

        # @!method initialize(address:, dob:, email:, first_name:, government_id:, last_name:, phone_number:, type:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::AccountHolders::EntityCreateParams} for more details.
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
        #   @param type [Symbol, Lithic::Models::AccountHolders::EntityCreateParams::Type] The type of entity to create on the account holder
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
          #   Valid country code. Only USA is currently supported, entered in uppercase ISO
          #   3166-1 alpha-3 three-character format.
          #
          #   @return [String]
          required :country, String

          # @!attribute postal_code
          #   Valid postal code. Only USA ZIP codes are currently supported, entered as a
          #   five-digit ZIP or nine-digit ZIP+4.
          #
          #   @return [String]
          required :postal_code, String

          # @!attribute state
          #   Valid state code. Only USA state codes are currently supported, entered in
          #   uppercase ISO 3166-2 two-character format.
          #
          #   @return [String]
          required :state, String

          # @!attribute address2
          #   Unit or apartment number (if applicable).
          #
          #   @return [String, nil]
          optional :address2, String

          # @!method initialize(address1:, city:, country:, postal_code:, state:, address2: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AccountHolders::EntityCreateParams::Address} for more details.
          #
          #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
          #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
          #
          #   @param address1 [String] Valid deliverable address (no PO boxes).
          #
          #   @param city [String] Name of city.
          #
          #   @param country [String] Valid country code. Only USA is currently supported, entered in uppercase ISO 31
          #
          #   @param postal_code [String] Valid postal code. Only USA ZIP codes are currently supported, entered as a five
          #
          #   @param state [String] Valid state code. Only USA state codes are currently supported, entered in upper
          #
          #   @param address2 [String] Unit or apartment number (if applicable).
        end

        # The type of entity to create on the account holder
        module Type
          extend Lithic::Internal::Type::Enum

          BENEFICIAL_OWNER_INDIVIDUAL = :BENEFICIAL_OWNER_INDIVIDUAL
          CONTROL_PERSON = :CONTROL_PERSON

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
