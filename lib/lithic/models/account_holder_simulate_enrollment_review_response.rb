# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::AccountHolders#simulate_enrollment_review
    class AccountHolderSimulateEnrollmentReviewResponse < Lithic::Internal::Type::BaseModel
      # @!attribute [r] token
      #   Globally unique identifier for the account holder.
      #
      #   @return [String, nil]
      optional :token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :token

      # @!attribute [r] account_token
      #   Globally unique identifier for the account.
      #
      #   @return [String, nil]
      optional :account_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_token

      # @!attribute [r] beneficial_owner_entities
      #   Deprecated.
      #
      #   @return [Array<Lithic::Models::KYBBusinessEntity>, nil]
      optional :beneficial_owner_entities,
               -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::KYBBusinessEntity] }

      # @!parse
      #   # @return [Array<Lithic::Models::KYBBusinessEntity>]
      #   attr_writer :beneficial_owner_entities

      # @!attribute [r] beneficial_owner_individuals
      #   Only present when user_type == "BUSINESS". List of all direct and indirect
      #   individuals with 25% or more ownership in the company. If no individual owns 25%
      #   of the company, please identify the largest shareholder in this field. See
      #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
      #   (Section I) for more background on individuals that should be included.
      #
      #   @return [Array<Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::BeneficialOwnerIndividual>, nil]
      optional :beneficial_owner_individuals,
               -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::BeneficialOwnerIndividual] }

      # @!parse
      #   # @return [Array<Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::BeneficialOwnerIndividual>]
      #   attr_writer :beneficial_owner_individuals

      # @!attribute [r] business_account_token
      #   Only applicable for customers using the KYC-Exempt workflow to enroll authorized
      #   users of businesses. Pass the account_token of the enrolled business associated
      #   with the AUTHORIZED_USER in this field.
      #
      #   @return [String, nil]
      optional :business_account_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :business_account_token

      # @!attribute [r] business_entity
      #   Only present when user_type == "BUSINESS". Information about the business for
      #   which the account is being opened and KYB is being run.
      #
      #   @return [Lithic::Models::KYBBusinessEntity, nil]
      optional :business_entity, -> { Lithic::Models::KYBBusinessEntity }

      # @!parse
      #   # @return [Lithic::Models::KYBBusinessEntity]
      #   attr_writer :business_entity

      # @!attribute [r] control_person
      #   Only present when user_type == "BUSINESS".
      #
      #   An individual with significant responsibility for managing the legal entity
      #   (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
      #   Officer,
      #
      #   Managing Member, General Partner, President, Vice President, or Treasurer). This
      #   can be an executive, or someone who will have program-wide access
      #
      #   to the cards that Lithic will provide. In some cases, this individual could also
      #   be a beneficial owner listed above.
      #
      #   @return [Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ControlPerson, nil]
      optional :control_person,
               -> { Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ControlPerson }

      # @!parse
      #   # @return [Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ControlPerson]
      #   attr_writer :control_person

      # @!attribute [r] created
      #   Timestamp of when the account holder was created.
      #
      #   @return [Time, nil]
      optional :created, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :created

      # @!attribute [r] email
      #   < Deprecated. Use control_person.email when user_type == "BUSINESS". Use
      #   individual.phone_number when user_type == "INDIVIDUAL".
      #
      #   > Primary email of Account Holder.
      #
      #   @return [String, nil]
      optional :email, String

      # @!parse
      #   # @return [String]
      #   attr_writer :email

      # @!attribute [r] exemption_type
      #   The type of KYC exemption for a KYC-Exempt Account Holder. "None" if the account
      #   holder is not KYC-Exempt.
      #
      #   @return [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ExemptionType, nil]
      optional :exemption_type,
               enum: -> { Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ExemptionType }

      # @!parse
      #   # @return [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ExemptionType]
      #   attr_writer :exemption_type

      # @!attribute [r] external_id
      #   Customer-provided token that indicates a relationship with an object outside of
      #   the Lithic ecosystem.
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :external_id

      # @!attribute [r] individual
      #   Only present when user_type == "INDIVIDUAL". Information about the individual
      #   for which the account is being opened and KYC is being run.
      #
      #   @return [Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Individual, nil]
      optional :individual, -> { Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Individual }

      # @!parse
      #   # @return [Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Individual]
      #   attr_writer :individual

      # @!attribute [r] nature_of_business
      #   Only present when user_type == "BUSINESS". User-submitted description of the
      #   business.
      #
      #   @return [String, nil]
      optional :nature_of_business, String

      # @!parse
      #   # @return [String]
      #   attr_writer :nature_of_business

      # @!attribute [r] phone_number
      #   < Deprecated. Use control_person.phone_number when user_type == "BUSINESS". Use
      #   individual.phone_number when user_type == "INDIVIDUAL".
      #
      #   > Primary phone of Account Holder, entered in E.164 format.
      #
      #   @return [String, nil]
      optional :phone_number, String

      # @!parse
      #   # @return [String]
      #   attr_writer :phone_number

      # @!attribute [r] required_documents
      #   Only present for "KYB_BASIC" and "KYC_ADVANCED" workflows. A list of documents
      #   required for the account holder to be approved.
      #
      #   @return [Array<Lithic::Models::RequiredDocument>, nil]
      optional :required_documents, -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::RequiredDocument] }

      # @!parse
      #   # @return [Array<Lithic::Models::RequiredDocument>]
      #   attr_writer :required_documents

      # @!attribute [r] status
      #   <Deprecated. Use verification_application.status instead>
      #
      #   KYC and KYB evaluation states.
      #
      #   Note: `PENDING_RESUBMIT` and `PENDING_DOCUMENT` are only applicable for the
      #   `ADVANCED` workflow.
      #
      #   @return [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Status, nil]
      optional :status, enum: -> { Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Status }

      # @!parse
      #   # @return [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Status]
      #   attr_writer :status

      # @!attribute [r] status_reasons
      #   <Deprecated. Use verification_application.status_reasons> Reason for the
      #   evaluation status.
      #
      #   @return [Array<Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason>, nil]
      optional :status_reasons,
               -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason] }

      # @!parse
      #   # @return [Array<Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason>]
      #   attr_writer :status_reasons

      # @!attribute [r] user_type
      #   The type of Account Holder. If the type is "INDIVIDUAL", the "individual"
      #   attribute will be present.
      #
      #   If the type is "BUSINESS" then the "business_entity", "control_person",
      #   "beneficial_owner_individuals", "nature_of_business", and "website_url"
      #   attributes will be present.
      #
      #   @return [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::UserType, nil]
      optional :user_type, enum: -> { Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::UserType }

      # @!parse
      #   # @return [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::UserType]
      #   attr_writer :user_type

      # @!attribute [r] verification_application
      #   Information about the most recent identity verification attempt
      #
      #   @return [Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication, nil]
      optional :verification_application,
               -> { Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication }

      # @!parse
      #   # @return [Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication]
      #   attr_writer :verification_application

      # @!attribute [r] website_url
      #   Only present when user_type == "BUSINESS". Business's primary website.
      #
      #   @return [String, nil]
      optional :website_url, String

      # @!parse
      #   # @return [String]
      #   attr_writer :website_url

      # @!method initialize(token: nil, account_token: nil, beneficial_owner_entities: nil, beneficial_owner_individuals: nil, business_account_token: nil, business_entity: nil, control_person: nil, created: nil, email: nil, exemption_type: nil, external_id: nil, individual: nil, nature_of_business: nil, phone_number: nil, required_documents: nil, status: nil, status_reasons: nil, user_type: nil, verification_application: nil, website_url: nil)
      #   @param token [String]
      #   @param account_token [String]
      #   @param beneficial_owner_entities [Array<Lithic::Models::KYBBusinessEntity>]
      #   @param beneficial_owner_individuals [Array<Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::BeneficialOwnerIndividual>]
      #   @param business_account_token [String]
      #   @param business_entity [Lithic::Models::KYBBusinessEntity]
      #   @param control_person [Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ControlPerson]
      #   @param created [Time]
      #   @param email [String]
      #   @param exemption_type [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ExemptionType]
      #   @param external_id [String]
      #   @param individual [Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Individual]
      #   @param nature_of_business [String]
      #   @param phone_number [String]
      #   @param required_documents [Array<Lithic::Models::RequiredDocument>]
      #   @param status [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Status]
      #   @param status_reasons [Array<Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason>]
      #   @param user_type [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::UserType]
      #   @param verification_application [Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication]
      #   @param website_url [String]

      class BeneficialOwnerIndividual < Lithic::Internal::Type::BaseModel
        # @!attribute [r] address
        #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        #
        #   @return [Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::BeneficialOwnerIndividual::Address, nil]
        optional :address,
                 -> { Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::BeneficialOwnerIndividual::Address }

        # @!parse
        #   # @return [Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::BeneficialOwnerIndividual::Address]
        #   attr_writer :address

        # @!attribute [r] dob
        #   Individual's date of birth, as an RFC 3339 date.
        #
        #   @return [String, nil]
        optional :dob, String

        # @!parse
        #   # @return [String]
        #   attr_writer :dob

        # @!attribute [r] email
        #   Individual's email address. If utilizing Lithic for chargeback processing, this
        #   customer email address may be used to communicate dispute status and resolution.
        #
        #   @return [String, nil]
        optional :email, String

        # @!parse
        #   # @return [String]
        #   attr_writer :email

        # @!attribute [r] first_name
        #   Individual's first name, as it appears on government-issued identity documents.
        #
        #   @return [String, nil]
        optional :first_name, String

        # @!parse
        #   # @return [String]
        #   attr_writer :first_name

        # @!attribute [r] last_name
        #   Individual's last name, as it appears on government-issued identity documents.
        #
        #   @return [String, nil]
        optional :last_name, String

        # @!parse
        #   # @return [String]
        #   attr_writer :last_name

        # @!attribute [r] phone_number
        #   Individual's phone number, entered in E.164 format.
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!parse
        #   # @return [String]
        #   attr_writer :phone_number

        # @!method initialize(address: nil, dob: nil, email: nil, first_name: nil, last_name: nil, phone_number: nil)
        #   @param address [Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::BeneficialOwnerIndividual::Address]
        #   @param dob [String]
        #   @param email [String]
        #   @param first_name [String]
        #   @param last_name [String]
        #   @param phone_number [String]

        # @see Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::BeneficialOwnerIndividual#address
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

          # @!attribute [r] address2
          #   Unit or apartment number (if applicable).
          #
          #   @return [String, nil]
          optional :address2, String

          # @!parse
          #   # @return [String]
          #   attr_writer :address2

          # @!method initialize(address1:, city:, country:, postal_code:, state:, address2: nil)
          #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
          #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
          #
          #   @param address1 [String]
          #   @param city [String]
          #   @param country [String]
          #   @param postal_code [String]
          #   @param state [String]
          #   @param address2 [String]
        end
      end

      # @see Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse#control_person
      class ControlPerson < Lithic::Internal::Type::BaseModel
        # @!attribute [r] address
        #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        #
        #   @return [Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ControlPerson::Address, nil]
        optional :address,
                 -> { Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ControlPerson::Address }

        # @!parse
        #   # @return [Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ControlPerson::Address]
        #   attr_writer :address

        # @!attribute [r] dob
        #   Individual's date of birth, as an RFC 3339 date.
        #
        #   @return [String, nil]
        optional :dob, String

        # @!parse
        #   # @return [String]
        #   attr_writer :dob

        # @!attribute [r] email
        #   Individual's email address. If utilizing Lithic for chargeback processing, this
        #   customer email address may be used to communicate dispute status and resolution.
        #
        #   @return [String, nil]
        optional :email, String

        # @!parse
        #   # @return [String]
        #   attr_writer :email

        # @!attribute [r] first_name
        #   Individual's first name, as it appears on government-issued identity documents.
        #
        #   @return [String, nil]
        optional :first_name, String

        # @!parse
        #   # @return [String]
        #   attr_writer :first_name

        # @!attribute [r] last_name
        #   Individual's last name, as it appears on government-issued identity documents.
        #
        #   @return [String, nil]
        optional :last_name, String

        # @!parse
        #   # @return [String]
        #   attr_writer :last_name

        # @!attribute [r] phone_number
        #   Individual's phone number, entered in E.164 format.
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!parse
        #   # @return [String]
        #   attr_writer :phone_number

        # @!method initialize(address: nil, dob: nil, email: nil, first_name: nil, last_name: nil, phone_number: nil)
        #   Only present when user_type == "BUSINESS".
        #
        #   An individual with significant responsibility for managing the legal entity
        #   (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
        #   Officer,
        #
        #   Managing Member, General Partner, President, Vice President, or Treasurer). This
        #   can be an executive, or someone who will have program-wide access
        #
        #   to the cards that Lithic will provide. In some cases, this individual could also
        #   be a beneficial owner listed above.
        #
        #   @param address [Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ControlPerson::Address]
        #   @param dob [String]
        #   @param email [String]
        #   @param first_name [String]
        #   @param last_name [String]
        #   @param phone_number [String]

        # @see Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ControlPerson#address
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

          # @!attribute [r] address2
          #   Unit or apartment number (if applicable).
          #
          #   @return [String, nil]
          optional :address2, String

          # @!parse
          #   # @return [String]
          #   attr_writer :address2

          # @!method initialize(address1:, city:, country:, postal_code:, state:, address2: nil)
          #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
          #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
          #
          #   @param address1 [String]
          #   @param city [String]
          #   @param country [String]
          #   @param postal_code [String]
          #   @param state [String]
          #   @param address2 [String]
        end
      end

      # The type of KYC exemption for a KYC-Exempt Account Holder. "None" if the account
      # holder is not KYC-Exempt.
      #
      # @see Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse#exemption_type
      module ExemptionType
        extend Lithic::Internal::Type::Enum

        AUTHORIZED_USER = :AUTHORIZED_USER
        PREPAID_CARD_USER = :PREPAID_CARD_USER

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse#individual
      class Individual < Lithic::Internal::Type::BaseModel
        # @!attribute [r] address
        #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        #
        #   @return [Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Individual::Address, nil]
        optional :address,
                 -> { Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Individual::Address }

        # @!parse
        #   # @return [Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Individual::Address]
        #   attr_writer :address

        # @!attribute [r] dob
        #   Individual's date of birth, as an RFC 3339 date.
        #
        #   @return [String, nil]
        optional :dob, String

        # @!parse
        #   # @return [String]
        #   attr_writer :dob

        # @!attribute [r] email
        #   Individual's email address. If utilizing Lithic for chargeback processing, this
        #   customer email address may be used to communicate dispute status and resolution.
        #
        #   @return [String, nil]
        optional :email, String

        # @!parse
        #   # @return [String]
        #   attr_writer :email

        # @!attribute [r] first_name
        #   Individual's first name, as it appears on government-issued identity documents.
        #
        #   @return [String, nil]
        optional :first_name, String

        # @!parse
        #   # @return [String]
        #   attr_writer :first_name

        # @!attribute [r] last_name
        #   Individual's last name, as it appears on government-issued identity documents.
        #
        #   @return [String, nil]
        optional :last_name, String

        # @!parse
        #   # @return [String]
        #   attr_writer :last_name

        # @!attribute [r] phone_number
        #   Individual's phone number, entered in E.164 format.
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!parse
        #   # @return [String]
        #   attr_writer :phone_number

        # @!method initialize(address: nil, dob: nil, email: nil, first_name: nil, last_name: nil, phone_number: nil)
        #   Only present when user_type == "INDIVIDUAL". Information about the individual
        #   for which the account is being opened and KYC is being run.
        #
        #   @param address [Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Individual::Address]
        #   @param dob [String]
        #   @param email [String]
        #   @param first_name [String]
        #   @param last_name [String]
        #   @param phone_number [String]

        # @see Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Individual#address
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

          # @!attribute [r] address2
          #   Unit or apartment number (if applicable).
          #
          #   @return [String, nil]
          optional :address2, String

          # @!parse
          #   # @return [String]
          #   attr_writer :address2

          # @!method initialize(address1:, city:, country:, postal_code:, state:, address2: nil)
          #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
          #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
          #
          #   @param address1 [String]
          #   @param city [String]
          #   @param country [String]
          #   @param postal_code [String]
          #   @param state [String]
          #   @param address2 [String]
        end
      end

      # <Deprecated. Use verification_application.status instead>
      #
      # KYC and KYB evaluation states.
      #
      # Note: `PENDING_RESUBMIT` and `PENDING_DOCUMENT` are only applicable for the
      # `ADVANCED` workflow.
      #
      # @see Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse#status
      module Status
        extend Lithic::Internal::Type::Enum

        ACCEPTED = :ACCEPTED
        PENDING_DOCUMENT = :PENDING_DOCUMENT
        PENDING_RESUBMIT = :PENDING_RESUBMIT
        REJECTED = :REJECTED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status Reasons for KYC/KYB enrollment states
      module StatusReason
        extend Lithic::Internal::Type::Enum

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
        PRIMARY_BUSINESS_ENTITY_ID_VERIFICATION_FAILURE = :PRIMARY_BUSINESS_ENTITY_ID_VERIFICATION_FAILURE
        PRIMARY_BUSINESS_ENTITY_ADDRESS_VERIFICATION_FAILURE =
          :PRIMARY_BUSINESS_ENTITY_ADDRESS_VERIFICATION_FAILURE
        PRIMARY_BUSINESS_ENTITY_NAME_VERIFICATION_FAILURE = :PRIMARY_BUSINESS_ENTITY_NAME_VERIFICATION_FAILURE
        PRIMARY_BUSINESS_ENTITY_BUSINESS_OFFICERS_NOT_MATCHED =
          :PRIMARY_BUSINESS_ENTITY_BUSINESS_OFFICERS_NOT_MATCHED
        PRIMARY_BUSINESS_ENTITY_SOS_FILING_INACTIVE = :PRIMARY_BUSINESS_ENTITY_SOS_FILING_INACTIVE
        PRIMARY_BUSINESS_ENTITY_SOS_NOT_MATCHED = :PRIMARY_BUSINESS_ENTITY_SOS_NOT_MATCHED
        PRIMARY_BUSINESS_ENTITY_CMRA_FAILURE = :PRIMARY_BUSINESS_ENTITY_CMRA_FAILURE
        PRIMARY_BUSINESS_ENTITY_WATCHLIST_FAILURE = :PRIMARY_BUSINESS_ENTITY_WATCHLIST_FAILURE
        PRIMARY_BUSINESS_ENTITY_REGISTERED_AGENT_FAILURE = :PRIMARY_BUSINESS_ENTITY_REGISTERED_AGENT_FAILURE
        CONTROL_PERSON_BLOCKLIST_ALERT_FAILURE = :CONTROL_PERSON_BLOCKLIST_ALERT_FAILURE
        CONTROL_PERSON_ID_VERIFICATION_FAILURE = :CONTROL_PERSON_ID_VERIFICATION_FAILURE
        CONTROL_PERSON_DOB_VERIFICATION_FAILURE = :CONTROL_PERSON_DOB_VERIFICATION_FAILURE
        CONTROL_PERSON_NAME_VERIFICATION_FAILURE = :CONTROL_PERSON_NAME_VERIFICATION_FAILURE

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of Account Holder. If the type is "INDIVIDUAL", the "individual"
      # attribute will be present.
      #
      # If the type is "BUSINESS" then the "business_entity", "control_person",
      # "beneficial_owner_individuals", "nature_of_business", and "website_url"
      # attributes will be present.
      #
      # @see Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse#user_type
      module UserType
        extend Lithic::Internal::Type::Enum

        BUSINESS = :BUSINESS
        INDIVIDUAL = :INDIVIDUAL

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse#verification_application
      class VerificationApplication < Lithic::Internal::Type::BaseModel
        # @!attribute created
        #   Timestamp of when the application was created.
        #
        #   @return [Time]
        required :created, Time

        # @!attribute status
        #   KYC and KYB evaluation states.
        #
        #   Note: `PENDING_RESUBMIT` and `PENDING_DOCUMENT` are only applicable for the
        #   `ADVANCED` workflow.
        #
        #   @return [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::Status]
        required :status,
                 enum: -> { Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::Status }

        # @!attribute status_reasons
        #   Reason for the evaluation status.
        #
        #   @return [Array<Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason>]
        required :status_reasons,
                 -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason] }

        # @!attribute updated
        #   Timestamp of when the application was last updated.
        #
        #   @return [Time]
        required :updated, Time

        # @!method initialize(created:, status:, status_reasons:, updated:)
        #   Information about the most recent identity verification attempt
        #
        #   @param created [Time]
        #   @param status [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::Status]
        #   @param status_reasons [Array<Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason>]
        #   @param updated [Time]

        # KYC and KYB evaluation states.
        #
        # Note: `PENDING_RESUBMIT` and `PENDING_DOCUMENT` are only applicable for the
        # `ADVANCED` workflow.
        #
        # @see Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication#status
        module Status
          extend Lithic::Internal::Type::Enum

          ACCEPTED = :ACCEPTED
          PENDING_DOCUMENT = :PENDING_DOCUMENT
          PENDING_RESUBMIT = :PENDING_RESUBMIT
          REJECTED = :REJECTED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Status Reasons for KYC/KYB enrollment states
        module StatusReason
          extend Lithic::Internal::Type::Enum

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
          PRIMARY_BUSINESS_ENTITY_ID_VERIFICATION_FAILURE = :PRIMARY_BUSINESS_ENTITY_ID_VERIFICATION_FAILURE
          PRIMARY_BUSINESS_ENTITY_ADDRESS_VERIFICATION_FAILURE =
            :PRIMARY_BUSINESS_ENTITY_ADDRESS_VERIFICATION_FAILURE
          PRIMARY_BUSINESS_ENTITY_NAME_VERIFICATION_FAILURE = :PRIMARY_BUSINESS_ENTITY_NAME_VERIFICATION_FAILURE
          PRIMARY_BUSINESS_ENTITY_BUSINESS_OFFICERS_NOT_MATCHED =
            :PRIMARY_BUSINESS_ENTITY_BUSINESS_OFFICERS_NOT_MATCHED
          PRIMARY_BUSINESS_ENTITY_SOS_FILING_INACTIVE = :PRIMARY_BUSINESS_ENTITY_SOS_FILING_INACTIVE
          PRIMARY_BUSINESS_ENTITY_SOS_NOT_MATCHED = :PRIMARY_BUSINESS_ENTITY_SOS_NOT_MATCHED
          PRIMARY_BUSINESS_ENTITY_CMRA_FAILURE = :PRIMARY_BUSINESS_ENTITY_CMRA_FAILURE
          PRIMARY_BUSINESS_ENTITY_WATCHLIST_FAILURE = :PRIMARY_BUSINESS_ENTITY_WATCHLIST_FAILURE
          PRIMARY_BUSINESS_ENTITY_REGISTERED_AGENT_FAILURE = :PRIMARY_BUSINESS_ENTITY_REGISTERED_AGENT_FAILURE
          CONTROL_PERSON_BLOCKLIST_ALERT_FAILURE = :CONTROL_PERSON_BLOCKLIST_ALERT_FAILURE
          CONTROL_PERSON_ID_VERIFICATION_FAILURE = :CONTROL_PERSON_ID_VERIFICATION_FAILURE
          CONTROL_PERSON_DOB_VERIFICATION_FAILURE = :CONTROL_PERSON_DOB_VERIFICATION_FAILURE
          CONTROL_PERSON_NAME_VERIFICATION_FAILURE = :CONTROL_PERSON_NAME_VERIFICATION_FAILURE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
