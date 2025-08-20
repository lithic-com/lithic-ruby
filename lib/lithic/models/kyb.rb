# frozen_string_literal: true

module Lithic
  module Models
    class KYB < Lithic::Internal::Type::BaseModel
      # @!attribute beneficial_owner_individuals
      #   You must submit a list of all direct and indirect individuals with 25% or more
      #   ownership in the company. A maximum of 4 beneficial owners can be submitted. If
      #   no individual owns 25% of the company you do not need to send beneficial owner
      #   information. See
      #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
      #   (Section I) for more background on individuals that should be included.
      #
      #   @return [Array<Lithic::Models::KYB::BeneficialOwnerIndividual>]
      required :beneficial_owner_individuals,
               -> { Lithic::Internal::Type::ArrayOf[Lithic::KYB::BeneficialOwnerIndividual] }

      # @!attribute business_entity
      #   Information for business for which the account is being opened and KYB is being
      #   run.
      #
      #   @return [Lithic::Models::KYB::BusinessEntity]
      required :business_entity, -> { Lithic::KYB::BusinessEntity }

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
      #   @return [Lithic::Models::KYB::ControlPerson]
      required :control_person, -> { Lithic::KYB::ControlPerson }

      # @!attribute nature_of_business
      #   Short description of the company's line of business (i.e., what does the company
      #   do?).
      #
      #   @return [String]
      required :nature_of_business, String

      # @!attribute tos_timestamp
      #   An RFC 3339 timestamp indicating when the account holder accepted the applicable
      #   legal agreements (e.g., cardholder terms) as agreed upon during API customer's
      #   implementation with Lithic.
      #
      #   @return [String]
      required :tos_timestamp, String

      # @!attribute workflow
      #   Specifies the type of KYB workflow to run.
      #
      #   @return [Symbol, Lithic::Models::KYB::Workflow]
      required :workflow, enum: -> { Lithic::KYB::Workflow }

      # @!attribute beneficial_owner_entities
      #   @deprecated
      #
      #   Deprecated.
      #
      #   @return [Array<Lithic::Models::KYB::BeneficialOwnerEntity>, nil]
      optional :beneficial_owner_entities,
               -> { Lithic::Internal::Type::ArrayOf[Lithic::KYB::BeneficialOwnerEntity] }

      # @!attribute external_id
      #   A user provided id that can be used to link an account holder with an external
      #   system
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!attribute kyb_passed_timestamp
      #   An RFC 3339 timestamp indicating when precomputed KYB was completed on the
      #   business with a pass result.
      #
      #   This field is required only if workflow type is `KYB_BYO`.
      #
      #   @return [String, nil]
      optional :kyb_passed_timestamp, String

      # @!attribute website_url
      #   Company website URL.
      #
      #   @return [String, nil]
      optional :website_url, String

      # @!method initialize(beneficial_owner_individuals:, business_entity:, control_person:, nature_of_business:, tos_timestamp:, workflow:, beneficial_owner_entities: nil, external_id: nil, kyb_passed_timestamp: nil, website_url: nil)
      #   Some parameter documentations has been truncated, see {Lithic::Models::KYB} for
      #   more details.
      #
      #   @param beneficial_owner_individuals [Array<Lithic::Models::KYB::BeneficialOwnerIndividual>] You must submit a list of all direct and indirect individuals with 25% or more o
      #
      #   @param business_entity [Lithic::Models::KYB::BusinessEntity] Information for business for which the account is being opened and KYB is being
      #
      #   @param control_person [Lithic::Models::KYB::ControlPerson] An individual with significant responsibility for managing the legal entity (e.g
      #
      #   @param nature_of_business [String] Short description of the company's line of business (i.e., what does the company
      #
      #   @param tos_timestamp [String] An RFC 3339 timestamp indicating when the account holder accepted the applicable
      #
      #   @param workflow [Symbol, Lithic::Models::KYB::Workflow] Specifies the type of KYB workflow to run.
      #
      #   @param beneficial_owner_entities [Array<Lithic::Models::KYB::BeneficialOwnerEntity>] Deprecated.
      #
      #   @param external_id [String] A user provided id that can be used to link an account holder with an external s
      #
      #   @param kyb_passed_timestamp [String] An RFC 3339 timestamp indicating when precomputed KYB was completed on the busin
      #
      #   @param website_url [String] Company website URL.

      class BeneficialOwnerIndividual < Lithic::Internal::Type::BaseModel
        # @!attribute address
        #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        #
        #   @return [Lithic::Models::Address]
        required :address, -> { Lithic::Address }

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
        #   @return [String, nil]
        optional :phone_number, String

        # @!method initialize(address:, dob:, email:, first_name:, government_id:, last_name:, phone_number: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::KYB::BeneficialOwnerIndividual} for more details.
        #
        #   Individuals associated with a KYB application. Phone number is optional.
        #
        #   @param address [Lithic::Models::Address] Individual's current address - PO boxes, UPS drops, and FedEx drops are not acce
        #
        #   @param dob [String] Individual's date of birth, as an RFC 3339 date.
        #
        #   @param email [String] Individual's email address.
        #
        #   @param first_name [String] Individual's first name, as it appears on government-issued identity documents.
        #
        #   @param government_id [String] Government-issued identification number (required for identity verification and
        #
        #   @param last_name [String] Individual's last name, as it appears on government-issued identity documents.
        #
        #   @param phone_number [String] Individual's phone number, entered in E.164 format.
      end

      # @see Lithic::Models::KYB#business_entity
      class BusinessEntity < Lithic::Internal::Type::BaseModel
        # @!attribute address
        #   Business's physical address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable.
        #
        #   @return [Lithic::Models::Address]
        required :address, -> { Lithic::Address }

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
        #   {Lithic::Models::KYB::BusinessEntity} for more details.
        #
        #   Information for business for which the account is being opened and KYB is being
        #   run.
        #
        #   @param address [Lithic::Models::Address] Business's physical address - PO boxes, UPS drops, and FedEx drops are not accep
        #
        #   @param government_id [String] Government-issued identification number. US Federal Employer Identification Numb
        #
        #   @param legal_business_name [String] Legal (formal) business name.
        #
        #   @param phone_numbers [Array<String>] One or more of the business's phone number(s), entered as a list in E.164 format
        #
        #   @param dba_business_name [String] Any name that the business operates under that is not its legal business name (i
        #
        #   @param parent_company [String] Parent company name (if applicable).
      end

      # @see Lithic::Models::KYB#control_person
      class ControlPerson < Lithic::Internal::Type::BaseModel
        # @!attribute address
        #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        #
        #   @return [Lithic::Models::Address]
        required :address, -> { Lithic::Address }

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
        #   @return [String, nil]
        optional :phone_number, String

        # @!method initialize(address:, dob:, email:, first_name:, government_id:, last_name:, phone_number: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::KYB::ControlPerson} for more details.
        #
        #   An individual with significant responsibility for managing the legal entity
        #   (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
        #   Officer, Managing Member, General Partner, President, Vice President, or
        #   Treasurer). This can be an executive, or someone who will have program-wide
        #   access to the cards that Lithic will provide. In some cases, this individual
        #   could also be a beneficial owner listed above. See
        #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
        #   (Section II) for more background.
        #
        #   @param address [Lithic::Models::Address] Individual's current address - PO boxes, UPS drops, and FedEx drops are not acce
        #
        #   @param dob [String] Individual's date of birth, as an RFC 3339 date.
        #
        #   @param email [String] Individual's email address.
        #
        #   @param first_name [String] Individual's first name, as it appears on government-issued identity documents.
        #
        #   @param government_id [String] Government-issued identification number (required for identity verification and
        #
        #   @param last_name [String] Individual's last name, as it appears on government-issued identity documents.
        #
        #   @param phone_number [String] Individual's phone number, entered in E.164 format.
      end

      # Specifies the type of KYB workflow to run.
      #
      # @see Lithic::Models::KYB#workflow
      module Workflow
        extend Lithic::Internal::Type::Enum

        KYB_BASIC = :KYB_BASIC
        KYB_BYO = :KYB_BYO

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class BeneficialOwnerEntity < Lithic::Internal::Type::BaseModel
        # @!attribute address
        #   Business's physical address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable.
        #
        #   @return [Lithic::Models::Address]
        required :address, -> { Lithic::Address }

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
        #   {Lithic::Models::KYB::BeneficialOwnerEntity} for more details.
        #
        #   @param address [Lithic::Models::Address] Business's physical address - PO boxes, UPS drops, and FedEx drops are not accep
        #
        #   @param government_id [String] Government-issued identification number. US Federal Employer Identification Numb
        #
        #   @param legal_business_name [String] Legal (formal) business name.
        #
        #   @param phone_numbers [Array<String>] One or more of the business's phone number(s), entered as a list in E.164 format
        #
        #   @param dba_business_name [String] Any name that the business operates under that is not its legal business name (i
        #
        #   @param parent_company [String] Parent company name (if applicable).
      end
    end
  end
end
