# frozen_string_literal: true

module Lithic
  module Models
    class AccountHolder < Lithic::BaseModel
      # @!attribute token
      #   Globally unique identifier for the account holder.
      #
      #   @return [String]
      required :token, String

      # @!attribute created
      #   Timestamp of when the account holder was created.
      #
      #   @return [Time]
      required :created, Time

      # @!attribute [r] account_token
      #   Globally unique identifier for the account.
      #
      #   @return [String, nil]
      optional :account_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_token

      # @!attribute [r] beneficial_owner_entities
      #   Only present when user_type == "BUSINESS". List of all entities with >25%
      #     ownership in the company.
      #
      #   @return [Array<Lithic::Models::AccountHolder::BeneficialOwnerEntity>, nil]
      optional :beneficial_owner_entities,
               -> { Lithic::ArrayOf[Lithic::Models::AccountHolder::BeneficialOwnerEntity] }

      # @!parse
      #   # @return [Array<Lithic::Models::AccountHolder::BeneficialOwnerEntity>]
      #   attr_writer :beneficial_owner_entities

      # @!attribute [r] beneficial_owner_individuals
      #   Only present when user_type == "BUSINESS". List of all individuals with >25%
      #     ownership in the company.
      #
      #   @return [Array<Lithic::Models::AccountHolder::BeneficialOwnerIndividual>, nil]
      optional :beneficial_owner_individuals,
               -> { Lithic::ArrayOf[Lithic::Models::AccountHolder::BeneficialOwnerIndividual] }

      # @!parse
      #   # @return [Array<Lithic::Models::AccountHolder::BeneficialOwnerIndividual>]
      #   attr_writer :beneficial_owner_individuals

      # @!attribute [r] business_account_token
      #   Only applicable for customers using the KYC-Exempt workflow to enroll authorized
      #     users of businesses. Pass the account_token of the enrolled business associated
      #     with the AUTHORIZED_USER in this field.
      #
      #   @return [String, nil]
      optional :business_account_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :business_account_token

      # @!attribute [r] business_entity
      #   Only present when user_type == "BUSINESS". Information about the business for
      #     which the account is being opened and KYB is being run.
      #
      #   @return [Lithic::Models::AccountHolder::BusinessEntity, nil]
      optional :business_entity, -> { Lithic::Models::AccountHolder::BusinessEntity }

      # @!parse
      #   # @return [Lithic::Models::AccountHolder::BusinessEntity]
      #   attr_writer :business_entity

      # @!attribute [r] control_person
      #   Only present when user_type == "BUSINESS". An individual with significant
      #     responsibility for managing the legal entity (e.g., a Chief Executive Officer,
      #     Chief Financial Officer, Chief Operating Officer, Managing Member, General
      #     Partner, President, Vice President, or Treasurer). This can be an executive, or
      #     someone who will have program-wide access to the cards that Lithic will provide.
      #     In some cases, this individual could also be a beneficial owner listed above.
      #
      #   @return [Lithic::Models::AccountHolder::ControlPerson, nil]
      optional :control_person, -> { Lithic::Models::AccountHolder::ControlPerson }

      # @!parse
      #   # @return [Lithic::Models::AccountHolder::ControlPerson]
      #   attr_writer :control_person

      # @!attribute [r] email
      #   < Deprecated. Use control_person.email when user_type == "BUSINESS". Use
      #     individual.phone_number when user_type == "INDIVIDUAL".
      #
      #     > Primary email of Account Holder.
      #
      #   @return [String, nil]
      optional :email, String

      # @!parse
      #   # @return [String]
      #   attr_writer :email

      # @!attribute [r] exemption_type
      #   The type of KYC exemption for a KYC-Exempt Account Holder.
      #
      #   @return [Symbol, Lithic::Models::AccountHolder::ExemptionType, nil]
      optional :exemption_type, enum: -> { Lithic::Models::AccountHolder::ExemptionType }

      # @!parse
      #   # @return [Symbol, Lithic::Models::AccountHolder::ExemptionType]
      #   attr_writer :exemption_type

      # @!attribute [r] external_id
      #   Customer-provided token that indicates a relationship with an object outside of
      #     the Lithic ecosystem.
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :external_id

      # @!attribute [r] individual
      #   Only present when user_type == "INDIVIDUAL". Information about the individual
      #     for which the account is being opened and KYC is being run.
      #
      #   @return [Lithic::Models::AccountHolder::Individual, nil]
      optional :individual, -> { Lithic::Models::AccountHolder::Individual }

      # @!parse
      #   # @return [Lithic::Models::AccountHolder::Individual]
      #   attr_writer :individual

      # @!attribute [r] nature_of_business
      #   Only present when user_type == "BUSINESS". User-submitted description of the
      #     business.
      #
      #   @return [String, nil]
      optional :nature_of_business, String

      # @!parse
      #   # @return [String]
      #   attr_writer :nature_of_business

      # @!attribute [r] phone_number
      #   < Deprecated. Use control_person.phone_number when user_type == "BUSINESS". Use
      #     individual.phone_number when user_type == "INDIVIDUAL".
      #
      #     > Primary phone of Account Holder, entered in E.164 format.
      #
      #   @return [String, nil]
      optional :phone_number, String

      # @!parse
      #   # @return [String]
      #   attr_writer :phone_number

      # @!attribute [r] required_documents
      #   Only present for "KYB_BASIC" workflow. A list of documents required for the
      #     account holder to be approved.
      #
      #   @return [Array<Lithic::Models::RequiredDocument>, nil]
      optional :required_documents, -> { Lithic::ArrayOf[Lithic::Models::RequiredDocument] }

      # @!parse
      #   # @return [Array<Lithic::Models::RequiredDocument>]
      #   attr_writer :required_documents

      # @!attribute [r] status
      #   <Deprecated. Use verification_application.status instead>
      #
      #     KYC and KYB evaluation states.
      #
      #     Note:
      #
      #     - `PENDING_REVIEW` is only applicable for the `KYB_BASIC` workflow.
      #
      #   @return [Symbol, Lithic::Models::AccountHolder::Status, nil]
      optional :status, enum: -> { Lithic::Models::AccountHolder::Status }

      # @!parse
      #   # @return [Symbol, Lithic::Models::AccountHolder::Status]
      #   attr_writer :status

      # @!attribute [r] status_reasons
      #   <Deprecated. Use verification_application.status_reasons> Reason for the
      #     evaluation status.
      #
      #   @return [Array<Symbol, Lithic::Models::AccountHolder::StatusReason>, nil]
      optional :status_reasons, -> { Lithic::ArrayOf[enum: Lithic::Models::AccountHolder::StatusReason] }

      # @!parse
      #   # @return [Array<Symbol, Lithic::Models::AccountHolder::StatusReason>]
      #   attr_writer :status_reasons

      # @!attribute [r] user_type
      #   The type of Account Holder. If the type is "INDIVIDUAL", the "individual"
      #     attribute will be present. If the type is "BUSINESS" then the "business_entity",
      #     "control_person", "beneficial_owner_individuals", "beneficial_owner_entities",
      #     "nature_of_business", and "website_url" attributes will be present.
      #
      #   @return [Symbol, Lithic::Models::AccountHolder::UserType, nil]
      optional :user_type, enum: -> { Lithic::Models::AccountHolder::UserType }

      # @!parse
      #   # @return [Symbol, Lithic::Models::AccountHolder::UserType]
      #   attr_writer :user_type

      # @!attribute [r] verification_application
      #   Information about the most recent identity verification attempt
      #
      #   @return [Lithic::Models::AccountHolder::VerificationApplication, nil]
      optional :verification_application, -> { Lithic::Models::AccountHolder::VerificationApplication }

      # @!parse
      #   # @return [Lithic::Models::AccountHolder::VerificationApplication]
      #   attr_writer :verification_application

      # @!attribute [r] website_url
      #   Only present when user_type == "BUSINESS". Business's primary website.
      #
      #   @return [String, nil]
      optional :website_url, String

      # @!parse
      #   # @return [String]
      #   attr_writer :website_url

      # @!parse
      #   # @param token [String]
      #   # @param created [Time]
      #   # @param account_token [String]
      #   # @param beneficial_owner_entities [Array<Lithic::Models::AccountHolder::BeneficialOwnerEntity>]
      #   # @param beneficial_owner_individuals [Array<Lithic::Models::AccountHolder::BeneficialOwnerIndividual>]
      #   # @param business_account_token [String]
      #   # @param business_entity [Lithic::Models::AccountHolder::BusinessEntity]
      #   # @param control_person [Lithic::Models::AccountHolder::ControlPerson]
      #   # @param email [String]
      #   # @param exemption_type [Symbol, Lithic::Models::AccountHolder::ExemptionType]
      #   # @param external_id [String]
      #   # @param individual [Lithic::Models::AccountHolder::Individual]
      #   # @param nature_of_business [String]
      #   # @param phone_number [String]
      #   # @param required_documents [Array<Lithic::Models::RequiredDocument>]
      #   # @param status [Symbol, Lithic::Models::AccountHolder::Status]
      #   # @param status_reasons [Array<Symbol, Lithic::Models::AccountHolder::StatusReason>]
      #   # @param user_type [Symbol, Lithic::Models::AccountHolder::UserType]
      #   # @param verification_application [Lithic::Models::AccountHolder::VerificationApplication]
      #   # @param website_url [String]
      #   #
      #   def initialize(
      #     token:,
      #     created:,
      #     account_token: nil,
      #     beneficial_owner_entities: nil,
      #     beneficial_owner_individuals: nil,
      #     business_account_token: nil,
      #     business_entity: nil,
      #     control_person: nil,
      #     email: nil,
      #     exemption_type: nil,
      #     external_id: nil,
      #     individual: nil,
      #     nature_of_business: nil,
      #     phone_number: nil,
      #     required_documents: nil,
      #     status: nil,
      #     status_reasons: nil,
      #     user_type: nil,
      #     verification_application: nil,
      #     website_url: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      class BeneficialOwnerEntity < Lithic::BaseModel
        # @!attribute address
        #   Business's physical address - PO boxes, UPS drops, and FedEx drops are not
        #     acceptable; APO/FPO are acceptable.
        #
        #   @return [Lithic::Models::Address]
        required :address, -> { Lithic::Models::Address }

        # @!attribute dba_business_name
        #   Any name that the business operates under that is not its legal business name
        #     (if applicable).
        #
        #   @return [String]
        required :dba_business_name, String

        # @!attribute entity_token
        #   Globally unique identifier for the entity.
        #
        #   @return [String]
        required :entity_token, String

        # @!attribute government_id
        #   Government-issued identification number. US Federal Employer Identification
        #     Numbers (EIN) are currently supported, entered as full nine-digits, with or
        #     without hyphens.
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
        #     format.
        #
        #   @return [Array<String>]
        required :phone_numbers, Lithic::ArrayOf[String]

        # @!attribute [r] parent_company
        #   Parent company name (if applicable).
        #
        #   @return [String, nil]
        optional :parent_company, String

        # @!parse
        #   # @return [String]
        #   attr_writer :parent_company

        # @!parse
        #   # @param address [Lithic::Models::Address]
        #   # @param dba_business_name [String]
        #   # @param entity_token [String]
        #   # @param government_id [String]
        #   # @param legal_business_name [String]
        #   # @param phone_numbers [Array<String>]
        #   # @param parent_company [String]
        #   #
        #   def initialize(
        #     address:,
        #     dba_business_name:,
        #     entity_token:,
        #     government_id:,
        #     legal_business_name:,
        #     phone_numbers:,
        #     parent_company: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end

      class BeneficialOwnerIndividual < Lithic::BaseModel
        # @!attribute address
        #   Individual's current address
        #
        #   @return [Lithic::Models::Address]
        required :address, -> { Lithic::Models::Address }

        # @!attribute dob
        #   Individual's date of birth, as an RFC 3339 date.
        #
        #   @return [String]
        required :dob, String

        # @!attribute email
        #   Individual's email address.
        #
        #   @return [String]
        required :email, String

        # @!attribute entity_token
        #   Globally unique identifier for the entity.
        #
        #   @return [String]
        required :entity_token, String

        # @!attribute first_name
        #   Individual's first name, as it appears on government-issued identity documents.
        #
        #   @return [String]
        required :first_name, String

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

        # @!parse
        #   # Information about an individual associated with an account holder. A subset of
        #   #   the information provided via KYC. For example, we do not return the government
        #   #   id.
        #   #
        #   # @param address [Lithic::Models::Address]
        #   # @param dob [String]
        #   # @param email [String]
        #   # @param entity_token [String]
        #   # @param first_name [String]
        #   # @param last_name [String]
        #   # @param phone_number [String]
        #   #
        #   def initialize(address:, dob:, email:, entity_token:, first_name:, last_name:, phone_number:, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end

      class BusinessEntity < Lithic::BaseModel
        # @!attribute address
        #   Business's physical address - PO boxes, UPS drops, and FedEx drops are not
        #     acceptable; APO/FPO are acceptable.
        #
        #   @return [Lithic::Models::Address]
        required :address, -> { Lithic::Models::Address }

        # @!attribute dba_business_name
        #   Any name that the business operates under that is not its legal business name
        #     (if applicable).
        #
        #   @return [String]
        required :dba_business_name, String

        # @!attribute entity_token
        #   Globally unique identifier for the entity.
        #
        #   @return [String]
        required :entity_token, String

        # @!attribute government_id
        #   Government-issued identification number. US Federal Employer Identification
        #     Numbers (EIN) are currently supported, entered as full nine-digits, with or
        #     without hyphens.
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
        #     format.
        #
        #   @return [Array<String>]
        required :phone_numbers, Lithic::ArrayOf[String]

        # @!attribute [r] parent_company
        #   Parent company name (if applicable).
        #
        #   @return [String, nil]
        optional :parent_company, String

        # @!parse
        #   # @return [String]
        #   attr_writer :parent_company

        # @!parse
        #   # Only present when user_type == "BUSINESS". Information about the business for
        #   #   which the account is being opened and KYB is being run.
        #   #
        #   # @param address [Lithic::Models::Address]
        #   # @param dba_business_name [String]
        #   # @param entity_token [String]
        #   # @param government_id [String]
        #   # @param legal_business_name [String]
        #   # @param phone_numbers [Array<String>]
        #   # @param parent_company [String]
        #   #
        #   def initialize(
        #     address:,
        #     dba_business_name:,
        #     entity_token:,
        #     government_id:,
        #     legal_business_name:,
        #     phone_numbers:,
        #     parent_company: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end

      class ControlPerson < Lithic::BaseModel
        # @!attribute address
        #   Individual's current address
        #
        #   @return [Lithic::Models::Address]
        required :address, -> { Lithic::Models::Address }

        # @!attribute dob
        #   Individual's date of birth, as an RFC 3339 date.
        #
        #   @return [String]
        required :dob, String

        # @!attribute email
        #   Individual's email address.
        #
        #   @return [String]
        required :email, String

        # @!attribute entity_token
        #   Globally unique identifier for the entity.
        #
        #   @return [String]
        required :entity_token, String

        # @!attribute first_name
        #   Individual's first name, as it appears on government-issued identity documents.
        #
        #   @return [String]
        required :first_name, String

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

        # @!parse
        #   # Only present when user_type == "BUSINESS". An individual with significant
        #   #   responsibility for managing the legal entity (e.g., a Chief Executive Officer,
        #   #   Chief Financial Officer, Chief Operating Officer, Managing Member, General
        #   #   Partner, President, Vice President, or Treasurer). This can be an executive, or
        #   #   someone who will have program-wide access to the cards that Lithic will provide.
        #   #   In some cases, this individual could also be a beneficial owner listed above.
        #   #
        #   # @param address [Lithic::Models::Address]
        #   # @param dob [String]
        #   # @param email [String]
        #   # @param entity_token [String]
        #   # @param first_name [String]
        #   # @param last_name [String]
        #   # @param phone_number [String]
        #   #
        #   def initialize(address:, dob:, email:, entity_token:, first_name:, last_name:, phone_number:, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end

      # The type of KYC exemption for a KYC-Exempt Account Holder.
      module ExemptionType
        extend Lithic::Enum

        AUTHORIZED_USER = :AUTHORIZED_USER
        PREPAID_CARD_USER = :PREPAID_CARD_USER

        finalize!
      end

      class Individual < Lithic::BaseModel
        # @!attribute address
        #   Individual's current address
        #
        #   @return [Lithic::Models::Address]
        required :address, -> { Lithic::Models::Address }

        # @!attribute dob
        #   Individual's date of birth, as an RFC 3339 date.
        #
        #   @return [String]
        required :dob, String

        # @!attribute email
        #   Individual's email address.
        #
        #   @return [String]
        required :email, String

        # @!attribute entity_token
        #   Globally unique identifier for the entity.
        #
        #   @return [String]
        required :entity_token, String

        # @!attribute first_name
        #   Individual's first name, as it appears on government-issued identity documents.
        #
        #   @return [String]
        required :first_name, String

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

        # @!parse
        #   # Only present when user_type == "INDIVIDUAL". Information about the individual
        #   #   for which the account is being opened and KYC is being run.
        #   #
        #   # @param address [Lithic::Models::Address]
        #   # @param dob [String]
        #   # @param email [String]
        #   # @param entity_token [String]
        #   # @param first_name [String]
        #   # @param last_name [String]
        #   # @param phone_number [String]
        #   #
        #   def initialize(address:, dob:, email:, entity_token:, first_name:, last_name:, phone_number:, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end

      # <Deprecated. Use verification_application.status instead>
      #
      #   KYC and KYB evaluation states.
      #
      #   Note:
      #
      #   - `PENDING_REVIEW` is only applicable for the `KYB_BASIC` workflow.
      module Status
        extend Lithic::Enum

        ACCEPTED = :ACCEPTED
        PENDING_REVIEW = :PENDING_REVIEW
        PENDING_DOCUMENT = :PENDING_DOCUMENT
        PENDING_RESUBMIT = :PENDING_RESUBMIT
        REJECTED = :REJECTED

        finalize!
      end

      module StatusReason
        extend Lithic::Enum

        ADDRESS_VERIFICATION_FAILURE = :ADDRESS_VERIFICATION_FAILURE
        AGE_THRESHOLD_FAILURE = :AGE_THRESHOLD_FAILURE
        COMPLETE_VERIFICATION_FAILURE = :COMPLETE_VERIFICATION_FAILURE
        DOB_VERIFICATION_FAILURE = :DOB_VERIFICATION_FAILURE
        ID_VERIFICATION_FAILURE = :ID_VERIFICATION_FAILURE
        MAX_DOCUMENT_ATTEMPTS = :MAX_DOCUMENT_ATTEMPTS
        MAX_RESUBMISSION_ATTEMPTS = :MAX_RESUBMISSION_ATTEMPTS
        NAME_VERIFICATION_FAILURE = :NAME_VERIFICATION_FAILURE
        OTHER_VERIFICATION_FAILURE = :OTHER_VERIFICATION_FAILURE
        RISK_THRESHOLD_FAILURE = :RISK_THRESHOLD_FAILURE
        WATCHLIST_ALERT_FAILURE = :WATCHLIST_ALERT_FAILURE

        finalize!
      end

      # The type of Account Holder. If the type is "INDIVIDUAL", the "individual"
      #   attribute will be present. If the type is "BUSINESS" then the "business_entity",
      #   "control_person", "beneficial_owner_individuals", "beneficial_owner_entities",
      #   "nature_of_business", and "website_url" attributes will be present.
      module UserType
        extend Lithic::Enum

        BUSINESS = :BUSINESS
        INDIVIDUAL = :INDIVIDUAL

        finalize!
      end

      class VerificationApplication < Lithic::BaseModel
        # @!attribute [r] created
        #   Timestamp of when the application was created.
        #
        #   @return [Time, nil]
        optional :created, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :created

        # @!attribute [r] status
        #   KYC and KYB evaluation states.
        #
        #     Note:
        #
        #     - `PENDING_REVIEW` is only applicable for the `KYB_BASIC` workflow.
        #
        #   @return [Symbol, Lithic::Models::AccountHolder::VerificationApplication::Status, nil]
        optional :status, enum: -> { Lithic::Models::AccountHolder::VerificationApplication::Status }

        # @!parse
        #   # @return [Symbol, Lithic::Models::AccountHolder::VerificationApplication::Status]
        #   attr_writer :status

        # @!attribute [r] status_reasons
        #   Reason for the evaluation status.
        #
        #   @return [Array<Symbol, Lithic::Models::AccountHolder::VerificationApplication::StatusReason>, nil]
        optional :status_reasons,
                 -> { Lithic::ArrayOf[enum: Lithic::Models::AccountHolder::VerificationApplication::StatusReason] }

        # @!parse
        #   # @return [Array<Symbol, Lithic::Models::AccountHolder::VerificationApplication::StatusReason>]
        #   attr_writer :status_reasons

        # @!attribute [r] updated
        #   Timestamp of when the application was last updated.
        #
        #   @return [Time, nil]
        optional :updated, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :updated

        # @!parse
        #   # Information about the most recent identity verification attempt
        #   #
        #   # @param created [Time]
        #   # @param status [Symbol, Lithic::Models::AccountHolder::VerificationApplication::Status]
        #   # @param status_reasons [Array<Symbol, Lithic::Models::AccountHolder::VerificationApplication::StatusReason>]
        #   # @param updated [Time]
        #   #
        #   def initialize(created: nil, status: nil, status_reasons: nil, updated: nil, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void

        # KYC and KYB evaluation states.
        #
        #   Note:
        #
        #   - `PENDING_REVIEW` is only applicable for the `KYB_BASIC` workflow.
        module Status
          extend Lithic::Enum

          ACCEPTED = :ACCEPTED
          PENDING_REVIEW = :PENDING_REVIEW
          PENDING_DOCUMENT = :PENDING_DOCUMENT
          PENDING_RESUBMIT = :PENDING_RESUBMIT
          REJECTED = :REJECTED

          finalize!
        end

        module StatusReason
          extend Lithic::Enum

          ADDRESS_VERIFICATION_FAILURE = :ADDRESS_VERIFICATION_FAILURE
          AGE_THRESHOLD_FAILURE = :AGE_THRESHOLD_FAILURE
          COMPLETE_VERIFICATION_FAILURE = :COMPLETE_VERIFICATION_FAILURE
          DOB_VERIFICATION_FAILURE = :DOB_VERIFICATION_FAILURE
          ID_VERIFICATION_FAILURE = :ID_VERIFICATION_FAILURE
          MAX_DOCUMENT_ATTEMPTS = :MAX_DOCUMENT_ATTEMPTS
          MAX_RESUBMISSION_ATTEMPTS = :MAX_RESUBMISSION_ATTEMPTS
          NAME_VERIFICATION_FAILURE = :NAME_VERIFICATION_FAILURE
          OTHER_VERIFICATION_FAILURE = :OTHER_VERIFICATION_FAILURE
          RISK_THRESHOLD_FAILURE = :RISK_THRESHOLD_FAILURE
          WATCHLIST_ALERT_FAILURE = :WATCHLIST_ALERT_FAILURE

          finalize!
        end
      end
    end
  end
end
