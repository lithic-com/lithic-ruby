# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::AccountHolders#update
    class AccountHolderUpdateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute beneficial_owner_entities
      #   @deprecated
      #
      #   Deprecated.
      #
      #   @return [Array<Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerEntity>, nil]
      optional :beneficial_owner_entities,
               -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerEntity] }

      # @!attribute beneficial_owner_individuals
      #   You must submit a list of all direct and indirect individuals with 25% or more
      #   ownership in the company. A maximum of 4 beneficial owners can be submitted. If
      #   no individual owns 25% of the company you do not need to send beneficial owner
      #   information. See
      #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
      #   (Section I) for more background on individuals that should be included.
      #
      #   @return [Array<Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerIndividual>, nil]
      optional :beneficial_owner_individuals,
               -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerIndividual] }

      # @!attribute business_entity
      #   Information for business for which the account is being opened and KYB is being
      #   run.
      #
      #   @return [Lithic::Models::AccountHolderUpdateParams::BusinessEntity, nil]
      optional :business_entity, -> { Lithic::Models::AccountHolderUpdateParams::BusinessEntity }

      # @!attribute control_person
      #   An individual with significant responsibility for managing the legal entity
      #   (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
      #   Officer, Managing Member, General Partner, President, Vice President, or
      #   Treasurer). This can be an executive, or someone who will have program-wide
      #   access to the cards that Lithic will provide. In some cases, this individual
      #   could also be a beneficial owner listed above. See
      #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
      #   (Section II) for more background.
      #
      #   @return [Lithic::Models::AccountHolderUpdateParams::ControlPerson, nil]
      optional :control_person, -> { Lithic::Models::AccountHolderUpdateParams::ControlPerson }

      # @!attribute external_id
      #   A user provided id that can be used to link an account holder with an external
      #   system
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!attribute nature_of_business
      #   Short description of the company's line of business (i.e., what does the company
      #   do?).
      #
      #   @return [String, nil]
      optional :nature_of_business, String

      # @!attribute website_url
      #   Company website URL.
      #
      #   @return [String, nil]
      optional :website_url, String

      # @!attribute individual
      #   Information on the individual for whom the account is being opened and KYC is
      #   being run.
      #
      #   @return [Lithic::Models::AccountHolderUpdateParams::Individual, nil]
      optional :individual, -> { Lithic::Models::AccountHolderUpdateParams::Individual }

      # @!attribute address
      #   Allowed for: KYC-Exempt, BYO-KYC, BYO-KYB.
      #
      #   @return [Lithic::Models::AddressUpdate, nil]
      optional :address, -> { Lithic::Models::AddressUpdate }

      # @!attribute business_account_token
      #   Allowed for: KYC-Exempt, BYO-KYC. The token of the business account to which the
      #   account holder is associated.
      #
      #   @return [String, nil]
      optional :business_account_token, String

      # @!attribute email
      #   Allowed for all Account Holders. Account holder's email address. The primary
      #   purpose of this field is for cardholder identification and verification during
      #   the digital wallet tokenization process.
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute first_name
      #   Allowed for KYC-Exempt, BYO-KYC. Account holder's first name.
      #
      #   @return [String, nil]
      optional :first_name, String

      # @!attribute last_name
      #   Allowed for KYC-Exempt, BYO-KYC. Account holder's last name.
      #
      #   @return [String, nil]
      optional :last_name, String

      # @!attribute legal_business_name
      #   Allowed for BYO-KYB. Legal business name of the account holder.
      #
      #   @return [String, nil]
      optional :legal_business_name, String

      # @!attribute phone_number
      #   Allowed for all Account Holders. Account holder's phone number, entered in E.164
      #   format. The primary purpose of this field is for cardholder identification and
      #   verification during the digital wallet tokenization process.
      #
      #   @return [String, nil]
      optional :phone_number, String

      # @!method initialize(beneficial_owner_entities: nil, beneficial_owner_individuals: nil, business_entity: nil, control_person: nil, external_id: nil, nature_of_business: nil, website_url: nil, individual: nil, address: nil, business_account_token: nil, email: nil, first_name: nil, last_name: nil, legal_business_name: nil, phone_number: nil, request_options: {})
      #   @param beneficial_owner_entities [Array<Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerEntity>]
      #   @param beneficial_owner_individuals [Array<Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerIndividual>]
      #   @param business_entity [Lithic::Models::AccountHolderUpdateParams::BusinessEntity]
      #   @param control_person [Lithic::Models::AccountHolderUpdateParams::ControlPerson]
      #   @param external_id [String]
      #   @param nature_of_business [String]
      #   @param website_url [String]
      #   @param individual [Lithic::Models::AccountHolderUpdateParams::Individual]
      #   @param address [Lithic::Models::AddressUpdate]
      #   @param business_account_token [String]
      #   @param email [String]
      #   @param first_name [String]
      #   @param last_name [String]
      #   @param legal_business_name [String]
      #   @param phone_number [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      class BeneficialOwnerEntity < Lithic::Internal::Type::BaseModel
        # @!attribute entity_token
        #   Globally unique identifier for an entity.
        #
        #   @return [String]
        required :entity_token, String

        # @!attribute address
        #   Business''s physical address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable.
        #
        #   @return [Lithic::Models::AddressUpdate, nil]
        optional :address, -> { Lithic::Models::AddressUpdate }

        # @!attribute dba_business_name
        #   Any name that the business operates under that is not its legal business name
        #   (if applicable).
        #
        #   @return [String, nil]
        optional :dba_business_name, String

        # @!attribute government_id
        #   Government-issued identification number. US Federal Employer Identification
        #   Numbers (EIN) are currently supported, entered as full nine-digits, with or
        #   without hyphens.
        #
        #   @return [String, nil]
        optional :government_id, String

        # @!attribute legal_business_name
        #   Legal (formal) business name.
        #
        #   @return [String, nil]
        optional :legal_business_name, String

        # @!attribute parent_company
        #   Parent company name (if applicable).
        #
        #   @return [String, nil]
        optional :parent_company, String

        # @!attribute phone_numbers
        #   One or more of the business's phone number(s), entered as a list in E.164
        #   format.
        #
        #   @return [Array<String>, nil]
        optional :phone_numbers, Lithic::Internal::Type::ArrayOf[String]

        # @!method initialize(entity_token:, address: nil, dba_business_name: nil, government_id: nil, legal_business_name: nil, parent_company: nil, phone_numbers: nil)
        #   @param entity_token [String]
        #   @param address [Lithic::Models::AddressUpdate]
        #   @param dba_business_name [String]
        #   @param government_id [String]
        #   @param legal_business_name [String]
        #   @param parent_company [String]
        #   @param phone_numbers [Array<String>]
      end

      class BeneficialOwnerIndividual < Lithic::Internal::Type::BaseModel
        # @!attribute entity_token
        #   Globally unique identifier for an entity.
        #
        #   @return [String]
        required :entity_token, String

        # @!attribute address
        #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        #
        #   @return [Lithic::Models::AddressUpdate, nil]
        optional :address, -> { Lithic::Models::AddressUpdate }

        # @!attribute dob
        #   Individual's date of birth, as an RFC 3339 date.
        #
        #   @return [String, nil]
        optional :dob, String

        # @!attribute email
        #   Individual's email address. If utilizing Lithic for chargeback processing, this
        #   customer email address may be used to communicate dispute status and resolution.
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute first_name
        #   Individual's first name, as it appears on government-issued identity documents.
        #
        #   @return [String, nil]
        optional :first_name, String

        # @!attribute last_name
        #   Individual's last name, as it appears on government-issued identity documents.
        #
        #   @return [String, nil]
        optional :last_name, String

        # @!attribute phone_number
        #   Individual's phone number, entered in E.164 format.
        #
        #   @return [String, nil]
        optional :phone_number, String

        request_only do
          # @!attribute government_id
          #   Government-issued identification number (required for identity verification and
          #   compliance with banking regulations). Social Security Numbers (SSN) and
          #   Individual Taxpayer Identification Numbers (ITIN) are currently supported,
          #   entered as full nine-digits, with or without hyphens
          #
          #   @return [String, nil]
          optional :government_id, String
        end

        # @!method initialize(entity_token:, address: nil, dob: nil, email: nil, first_name: nil, government_id: nil, last_name: nil, phone_number: nil)
        #   Individuals associated with a KYB application. Phone number is optional.
        #
        #   @param entity_token [String]
        #   @param address [Lithic::Models::AddressUpdate]
        #   @param dob [String]
        #   @param email [String]
        #   @param first_name [String]
        #   @param government_id [String]
        #   @param last_name [String]
        #   @param phone_number [String]
      end

      class BusinessEntity < Lithic::Internal::Type::BaseModel
        # @!attribute entity_token
        #   Globally unique identifier for an entity.
        #
        #   @return [String]
        required :entity_token, String

        # @!attribute address
        #   Business''s physical address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable.
        #
        #   @return [Lithic::Models::AddressUpdate, nil]
        optional :address, -> { Lithic::Models::AddressUpdate }

        # @!attribute dba_business_name
        #   Any name that the business operates under that is not its legal business name
        #   (if applicable).
        #
        #   @return [String, nil]
        optional :dba_business_name, String

        # @!attribute government_id
        #   Government-issued identification number. US Federal Employer Identification
        #   Numbers (EIN) are currently supported, entered as full nine-digits, with or
        #   without hyphens.
        #
        #   @return [String, nil]
        optional :government_id, String

        # @!attribute legal_business_name
        #   Legal (formal) business name.
        #
        #   @return [String, nil]
        optional :legal_business_name, String

        # @!attribute parent_company
        #   Parent company name (if applicable).
        #
        #   @return [String, nil]
        optional :parent_company, String

        # @!attribute phone_numbers
        #   One or more of the business's phone number(s), entered as a list in E.164
        #   format.
        #
        #   @return [Array<String>, nil]
        optional :phone_numbers, Lithic::Internal::Type::ArrayOf[String]

        # @!method initialize(entity_token:, address: nil, dba_business_name: nil, government_id: nil, legal_business_name: nil, parent_company: nil, phone_numbers: nil)
        #   Information for business for which the account is being opened and KYB is being
        #   run.
        #
        #   @param entity_token [String]
        #   @param address [Lithic::Models::AddressUpdate]
        #   @param dba_business_name [String]
        #   @param government_id [String]
        #   @param legal_business_name [String]
        #   @param parent_company [String]
        #   @param phone_numbers [Array<String>]
      end

      class ControlPerson < Lithic::Internal::Type::BaseModel
        # @!attribute entity_token
        #   Globally unique identifier for an entity.
        #
        #   @return [String]
        required :entity_token, String

        # @!attribute address
        #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        #
        #   @return [Lithic::Models::AddressUpdate, nil]
        optional :address, -> { Lithic::Models::AddressUpdate }

        # @!attribute dob
        #   Individual's date of birth, as an RFC 3339 date.
        #
        #   @return [String, nil]
        optional :dob, String

        # @!attribute email
        #   Individual's email address. If utilizing Lithic for chargeback processing, this
        #   customer email address may be used to communicate dispute status and resolution.
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute first_name
        #   Individual's first name, as it appears on government-issued identity documents.
        #
        #   @return [String, nil]
        optional :first_name, String

        # @!attribute last_name
        #   Individual's last name, as it appears on government-issued identity documents.
        #
        #   @return [String, nil]
        optional :last_name, String

        # @!attribute phone_number
        #   Individual's phone number, entered in E.164 format.
        #
        #   @return [String, nil]
        optional :phone_number, String

        request_only do
          # @!attribute government_id
          #   Government-issued identification number (required for identity verification and
          #   compliance with banking regulations). Social Security Numbers (SSN) and
          #   Individual Taxpayer Identification Numbers (ITIN) are currently supported,
          #   entered as full nine-digits, with or without hyphens
          #
          #   @return [String, nil]
          optional :government_id, String
        end

        # @!method initialize(entity_token:, address: nil, dob: nil, email: nil, first_name: nil, government_id: nil, last_name: nil, phone_number: nil)
        #   An individual with significant responsibility for managing the legal entity
        #   (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
        #   Officer, Managing Member, General Partner, President, Vice President, or
        #   Treasurer). This can be an executive, or someone who will have program-wide
        #   access to the cards that Lithic will provide. In some cases, this individual
        #   could also be a beneficial owner listed above. See
        #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
        #   (Section II) for more background.
        #
        #   @param entity_token [String]
        #   @param address [Lithic::Models::AddressUpdate]
        #   @param dob [String]
        #   @param email [String]
        #   @param first_name [String]
        #   @param government_id [String]
        #   @param last_name [String]
        #   @param phone_number [String]
      end

      class Individual < Lithic::Internal::Type::BaseModel
        # @!attribute entity_token
        #   Globally unique identifier for an entity.
        #
        #   @return [String]
        required :entity_token, String

        # @!attribute address
        #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        #
        #   @return [Lithic::Models::AddressUpdate, nil]
        optional :address, -> { Lithic::Models::AddressUpdate }

        # @!attribute dob
        #   Individual's date of birth, as an RFC 3339 date.
        #
        #   @return [String, nil]
        optional :dob, String

        # @!attribute email
        #   Individual's email address. If utilizing Lithic for chargeback processing, this
        #   customer email address may be used to communicate dispute status and resolution.
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute first_name
        #   Individual's first name, as it appears on government-issued identity documents.
        #
        #   @return [String, nil]
        optional :first_name, String

        # @!attribute last_name
        #   Individual's last name, as it appears on government-issued identity documents.
        #
        #   @return [String, nil]
        optional :last_name, String

        # @!attribute phone_number
        #   Individual's phone number, entered in E.164 format.
        #
        #   @return [String, nil]
        optional :phone_number, String

        request_only do
          # @!attribute government_id
          #   Government-issued identification number (required for identity verification and
          #   compliance with banking regulations). Social Security Numbers (SSN) and
          #   Individual Taxpayer Identification Numbers (ITIN) are currently supported,
          #   entered as full nine-digits, with or without hyphens
          #
          #   @return [String, nil]
          optional :government_id, String
        end

        # @!method initialize(entity_token:, address: nil, dob: nil, email: nil, first_name: nil, government_id: nil, last_name: nil, phone_number: nil)
        #   Information on the individual for whom the account is being opened and KYC is
        #   being run.
        #
        #   @param entity_token [String]
        #   @param address [Lithic::Models::AddressUpdate]
        #   @param dob [String]
        #   @param email [String]
        #   @param first_name [String]
        #   @param government_id [String]
        #   @param last_name [String]
        #   @param phone_number [String]
      end
    end
  end
end
