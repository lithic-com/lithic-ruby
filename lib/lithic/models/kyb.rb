# frozen_string_literal: true

module Lithic
  module Models
    class KYB < Lithic::Internal::Type::BaseModel
      # @!attribute beneficial_owner_individuals
      #   List of all direct and indirect individuals with 25% or more ownership in the
      #   company. If no individual owns 25% of the company, please identify the largest
      #   shareholder in this field. See
      #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
      #   (Section I) for more background on individuals that should be included.
      #
      #   @return [Array<Lithic::Models::KYB::BeneficialOwnerIndividual>]
      required :beneficial_owner_individuals,
               -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::KYB::BeneficialOwnerIndividual] }

      # @!attribute business_entity
      #   Information for business for which the account is being opened and KYB is being
      #   run.
      #
      #   @return [Lithic::Models::KYB::BusinessEntity]
      required :business_entity, -> { Lithic::Models::KYB::BusinessEntity }

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
      required :control_person, -> { Lithic::Models::KYB::ControlPerson }

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
      required :workflow, enum: -> { Lithic::Models::KYB::Workflow }

      # @!attribute [r] beneficial_owner_entities
      #   Deprecated.
      #
      #   @return [Array<Lithic::Models::KYB::BeneficialOwnerEntity>, nil]
      optional :beneficial_owner_entities,
               -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::KYB::BeneficialOwnerEntity] }

      # @!parse
      #   # @return [Array<Lithic::Models::KYB::BeneficialOwnerEntity>]
      #   attr_writer :beneficial_owner_entities

      # @!attribute [r] external_id
      #   A user provided id that can be used to link an account holder with an external
      #   system
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :external_id

      # @!attribute [r] kyb_passed_timestamp
      #   An RFC 3339 timestamp indicating when precomputed KYC was completed on the
      #   business with a pass result.
      #
      #   This field is required only if workflow type is `KYB_BYO`.
      #
      #   @return [String, nil]
      optional :kyb_passed_timestamp, String

      # @!parse
      #   # @return [String]
      #   attr_writer :kyb_passed_timestamp

      # @!attribute [r] website_url
      #   Company website URL.
      #
      #   @return [String, nil]
      optional :website_url, String

      # @!parse
      #   # @return [String]
      #   attr_writer :website_url

      # @!method initialize(beneficial_owner_individuals:, business_entity:, control_person:, nature_of_business:, tos_timestamp:, workflow:, beneficial_owner_entities: nil, external_id: nil, kyb_passed_timestamp: nil, website_url: nil)
      #   @param beneficial_owner_individuals [Array<Lithic::Models::KYB::BeneficialOwnerIndividual>]
      #   @param business_entity [Lithic::Models::KYB::BusinessEntity]
      #   @param control_person [Lithic::Models::KYB::ControlPerson]
      #   @param nature_of_business [String]
      #   @param tos_timestamp [String]
      #   @param workflow [Symbol, Lithic::Models::KYB::Workflow]
      #   @param beneficial_owner_entities [Array<Lithic::Models::KYB::BeneficialOwnerEntity>]
      #   @param external_id [String]
      #   @param kyb_passed_timestamp [String]
      #   @param website_url [String]

      class BeneficialOwnerIndividual < Lithic::Internal::Type::BaseModel
        # @!attribute address
        #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        #
        #   @return [Lithic::Models::Address]
        required :address, -> { Lithic::Models::Address }

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

        # @!attribute [r] phone_number
        #   Individual's phone number, entered in E.164 format.
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!parse
        #   # @return [String]
        #   attr_writer :phone_number

        # @!method initialize(address:, dob:, email:, first_name:, government_id:, last_name:, phone_number: nil)
        #   Individuals associated with a KYB application. Phone number is optional.
        #
        #   @param address [Lithic::Models::Address]
        #   @param dob [String]
        #   @param email [String]
        #   @param first_name [String]
        #   @param government_id [String]
        #   @param last_name [String]
        #   @param phone_number [String]
      end

      # @see Lithic::Models::KYB#business_entity
      class BusinessEntity < Lithic::Internal::Type::BaseModel
        # @!attribute address
        #   Business's physical address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable.
        #
        #   @return [Lithic::Models::Address]
        required :address, -> { Lithic::Models::Address }

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

        # @!attribute [r] dba_business_name
        #   Any name that the business operates under that is not its legal business name
        #   (if applicable).
        #
        #   @return [String, nil]
        optional :dba_business_name, String

        # @!parse
        #   # @return [String]
        #   attr_writer :dba_business_name

        # @!attribute [r] parent_company
        #   Parent company name (if applicable).
        #
        #   @return [String, nil]
        optional :parent_company, String

        # @!parse
        #   # @return [String]
        #   attr_writer :parent_company

        # @!method initialize(address:, government_id:, legal_business_name:, phone_numbers:, dba_business_name: nil, parent_company: nil)
        #   Information for business for which the account is being opened and KYB is being
        #   run.
        #
        #   @param address [Lithic::Models::Address]
        #   @param government_id [String]
        #   @param legal_business_name [String]
        #   @param phone_numbers [Array<String>]
        #   @param dba_business_name [String]
        #   @param parent_company [String]
      end

      # @see Lithic::Models::KYB#control_person
      class ControlPerson < Lithic::Internal::Type::BaseModel
        # @!attribute address
        #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        #
        #   @return [Lithic::Models::Address]
        required :address, -> { Lithic::Models::Address }

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

        # @!attribute [r] phone_number
        #   Individual's phone number, entered in E.164 format.
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!parse
        #   # @return [String]
        #   attr_writer :phone_number

        # @!method initialize(address:, dob:, email:, first_name:, government_id:, last_name:, phone_number: nil)
        #   An individual with significant responsibility for managing the legal entity
        #   (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
        #   Officer, Managing Member, General Partner, President, Vice President, or
        #   Treasurer). This can be an executive, or someone who will have program-wide
        #   access to the cards that Lithic will provide. In some cases, this individual
        #   could also be a beneficial owner listed above. See
        #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
        #   (Section II) for more background.
        #
        #   @param address [Lithic::Models::Address]
        #   @param dob [String]
        #   @param email [String]
        #   @param first_name [String]
        #   @param government_id [String]
        #   @param last_name [String]
        #   @param phone_number [String]
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
        required :address, -> { Lithic::Models::Address }

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

        # @!attribute [r] dba_business_name
        #   Any name that the business operates under that is not its legal business name
        #   (if applicable).
        #
        #   @return [String, nil]
        optional :dba_business_name, String

        # @!parse
        #   # @return [String]
        #   attr_writer :dba_business_name

        # @!attribute [r] parent_company
        #   Parent company name (if applicable).
        #
        #   @return [String, nil]
        optional :parent_company, String

        # @!parse
        #   # @return [String]
        #   attr_writer :parent_company

        # @!method initialize(address:, government_id:, legal_business_name:, phone_numbers:, dba_business_name: nil, parent_company: nil)
        #   @param address [Lithic::Models::Address]
        #   @param government_id [String]
        #   @param legal_business_name [String]
        #   @param phone_numbers [Array<String>]
        #   @param dba_business_name [String]
        #   @param parent_company [String]
      end
    end
  end
end
