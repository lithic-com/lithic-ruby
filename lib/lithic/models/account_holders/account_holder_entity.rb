# frozen_string_literal: true

module Lithic
  module Models
    module AccountHolders
      # @see Lithic::Resources::AccountHolders::Entities#delete
      class AccountHolderEntity < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Globally unique identifier for the entity
        #
        #   @return [String]
        required :token, String

        # @!attribute account_holder_token
        #   Globally unique identifier for the account holder
        #
        #   @return [String]
        required :account_holder_token, String

        # @!attribute address
        #   Individual's current address
        #
        #   @return [Lithic::Models::AccountHolders::AccountHolderEntity::Address]
        required :address, -> { Lithic::AccountHolders::AccountHolderEntity::Address }

        # @!attribute dob
        #   Individual's date of birth, as an RFC 3339 date
        #
        #   @return [String, nil]
        required :dob, String, nil?: true

        # @!attribute email
        #   Individual's email address
        #
        #   @return [String, nil]
        required :email, String, nil?: true

        # @!attribute first_name
        #   Individual's first name, as it appears on government-issued identity documents
        #
        #   @return [String, nil]
        required :first_name, String, nil?: true

        # @!attribute last_name
        #   Individual's last name, as it appears on government-issued identity documents
        #
        #   @return [String, nil]
        required :last_name, String, nil?: true

        # @!attribute phone_number
        #   Individual's phone number, entered in E.164 format
        #
        #   @return [String, nil]
        required :phone_number, String, nil?: true

        # @!attribute status
        #   The status of the entity
        #
        #   @return [Symbol, Lithic::Models::AccountHolders::AccountHolderEntity::Status]
        required :status, enum: -> { Lithic::AccountHolders::AccountHolderEntity::Status }

        # @!attribute type
        #   The type of entity
        #
        #   @return [Symbol, Lithic::Models::AccountHolders::AccountHolderEntity::Type]
        required :type, enum: -> { Lithic::AccountHolders::AccountHolderEntity::Type }

        # @!method initialize(token:, account_holder_token:, address:, dob:, email:, first_name:, last_name:, phone_number:, status:, type:)
        #   Information about an entity associated with an account holder
        #
        #   @param token [String] Globally unique identifier for the entity
        #
        #   @param account_holder_token [String] Globally unique identifier for the account holder
        #
        #   @param address [Lithic::Models::AccountHolders::AccountHolderEntity::Address] Individual's current address
        #
        #   @param dob [String, nil] Individual's date of birth, as an RFC 3339 date
        #
        #   @param email [String, nil] Individual's email address
        #
        #   @param first_name [String, nil] Individual's first name, as it appears on government-issued identity documents
        #
        #   @param last_name [String, nil] Individual's last name, as it appears on government-issued identity documents
        #
        #   @param phone_number [String, nil] Individual's phone number, entered in E.164 format
        #
        #   @param status [Symbol, Lithic::Models::AccountHolders::AccountHolderEntity::Status] The status of the entity
        #
        #   @param type [Symbol, Lithic::Models::AccountHolders::AccountHolderEntity::Type] The type of entity

        # @see Lithic::Models::AccountHolders::AccountHolderEntity#address
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
          #   {Lithic::Models::AccountHolders::AccountHolderEntity::Address} for more details.
          #
          #   Individual's current address
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

        # The status of the entity
        #
        # @see Lithic::Models::AccountHolders::AccountHolderEntity#status
        module Status
          extend Lithic::Internal::Type::Enum

          ACCEPTED = :ACCEPTED
          INACTIVE = :INACTIVE
          PENDING_REVIEW = :PENDING_REVIEW
          REJECTED = :REJECTED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of entity
        #
        # @see Lithic::Models::AccountHolders::AccountHolderEntity#type
        module Type
          extend Lithic::Internal::Type::Enum

          BENEFICIAL_OWNER_INDIVIDUAL = :BENEFICIAL_OWNER_INDIVIDUAL
          CONTROL_PERSON = :CONTROL_PERSON

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    AccountHolderEntity = AccountHolders::AccountHolderEntity
  end
end
