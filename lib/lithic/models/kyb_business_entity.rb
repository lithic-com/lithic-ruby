# frozen_string_literal: true

module Lithic
  module Models
    class KYBBusinessEntity < Lithic::Internal::Type::BaseModel
      # @!attribute address
      #   Business''s physical address - PO boxes, UPS drops, and FedEx drops are not
      #   acceptable; APO/FPO are acceptable.
      #
      #   @return [Lithic::Models::KYBBusinessEntity::Address]
      required :address, -> { Lithic::Models::KYBBusinessEntity::Address }

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
      optional :parent_company, String

      # @!method initialize(address:, government_id:, legal_business_name:, phone_numbers:, dba_business_name: nil, parent_company: nil)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::KYBBusinessEntity} for more details.
      #
      #   @param address [Lithic::Models::KYBBusinessEntity::Address] Business''s physical address - PO boxes, UPS drops, and FedEx drops are not acce
      #   ...
      #
      #   @param government_id [String] Government-issued identification number. US Federal Employer Identification Numb
      #   ...
      #
      #   @param legal_business_name [String] Legal (formal) business name.
      #
      #   @param phone_numbers [Array<String>] One or more of the business's phone number(s), entered as a list in E.164 format
      #   ...
      #
      #   @param dba_business_name [String] Any name that the business operates under that is not its legal business name (i
      #   ...
      #
      #   @param parent_company [String] Parent company name (if applicable).

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
        #   {Lithic::Models::KYBBusinessEntity::Address} for more details.
        #
        #   Business''s physical address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable.
        #
        #   @param address1 [String] Valid deliverable address (no PO boxes).
        #
        #   @param city [String] Name of city.
        #
        #   @param country [String] Valid country code. Only USA is currently supported, entered in uppercase ISO 31
        #   ...
        #
        #   @param postal_code [String] Valid postal code. Only USA ZIP codes are currently supported, entered as a five
        #   ...
        #
        #   @param state [String] Valid state code. Only USA state codes are currently supported, entered in upper
        #   ...
        #
        #   @param address2 [String] Unit or apartment number (if applicable).
      end
    end
  end
end
