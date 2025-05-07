# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::AccountHolders#update
    module AccountHolderUpdateResponse
      extend Lithic::Internal::Type::Union

      variant -> { Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse }

      variant -> { Lithic::Models::AccountHolderUpdateResponse::PatchResponse }

      class KYBKYCPatchResponse < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Globally unique identifier for the account holder.
        #
        #   @return [String, nil]
        optional :token, String

        # @!attribute account_token
        #   Globally unique identifier for the account.
        #
        #   @return [String, nil]
        optional :account_token, String

        # @!attribute beneficial_owner_entities
        #   Deprecated.
        #
        #   @return [Array<Lithic::KYBBusinessEntity>, nil]
        optional :beneficial_owner_entities, -> { Lithic::Internal::Type::ArrayOf[Lithic::KYBBusinessEntity] }

        # @!attribute beneficial_owner_individuals
        #   Only present when user_type == "BUSINESS". You must submit a list of all direct
        #   and indirect individuals with 25% or more ownership in the company. A maximum of
        #   4 beneficial owners can be submitted. If no individual owns 25% of the company
        #   you do not need to send beneficial owner information. See
        #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
        #   (Section I) for more background on individuals that should be included.
        #
        #   @return [Array<Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::BeneficialOwnerIndividual>, nil]
        optional :beneficial_owner_individuals,
                 -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::BeneficialOwnerIndividual] }

        # @!attribute business_account_token
        #   Only applicable for customers using the KYC-Exempt workflow to enroll authorized
        #   users of businesses. Pass the account_token of the enrolled business associated
        #   with the AUTHORIZED_USER in this field.
        #
        #   @return [String, nil]
        optional :business_account_token, String

        # @!attribute business_entity
        #   Only present when user_type == "BUSINESS". Information about the business for
        #   which the account is being opened and KYB is being run.
        #
        #   @return [Lithic::KYBBusinessEntity, nil]
        optional :business_entity, -> { Lithic::KYBBusinessEntity }

        # @!attribute control_person
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
        #   @return [Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ControlPerson, nil]
        optional :control_person,
                 -> { Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ControlPerson }

        # @!attribute created
        #   Timestamp of when the account holder was created.
        #
        #   @return [Time, nil]
        optional :created, Time

        # @!attribute email
        #   < Deprecated. Use control_person.email when user_type == "BUSINESS". Use
        #   individual.phone_number when user_type == "INDIVIDUAL".
        #
        #   > Primary email of Account Holder.
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute exemption_type
        #   The type of KYC exemption for a KYC-Exempt Account Holder. "None" if the account
        #   holder is not KYC-Exempt.
        #
        #   @return [Symbol, Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ExemptionType, nil]
        optional :exemption_type,
                 enum: -> { Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ExemptionType }

        # @!attribute external_id
        #   Customer-provided token that indicates a relationship with an object outside of
        #   the Lithic ecosystem.
        #
        #   @return [String, nil]
        optional :external_id, String

        # @!attribute individual
        #   Only present when user_type == "INDIVIDUAL". Information about the individual
        #   for which the account is being opened and KYC is being run.
        #
        #   @return [Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Individual, nil]
        optional :individual, -> { Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Individual }

        # @!attribute nature_of_business
        #   Only present when user_type == "BUSINESS". User-submitted description of the
        #   business.
        #
        #   @return [String, nil]
        optional :nature_of_business, String

        # @!attribute phone_number
        #   < Deprecated. Use control_person.phone_number when user_type == "BUSINESS". Use
        #   individual.phone_number when user_type == "INDIVIDUAL".
        #
        #   > Primary phone of Account Holder, entered in E.164 format.
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!attribute required_documents
        #   Only present for "KYB_BASIC" and "KYC_ADVANCED" workflows. A list of documents
        #   required for the account holder to be approved.
        #
        #   @return [Array<Lithic::RequiredDocument>, nil]
        optional :required_documents, -> { Lithic::Internal::Type::ArrayOf[Lithic::RequiredDocument] }

        # @!attribute status
        #   <Deprecated. Use verification_application.status instead>
        #
        #   KYC and KYB evaluation states.
        #
        #   Note: `PENDING_RESUBMIT` and `PENDING_DOCUMENT` are only applicable for the
        #   `ADVANCED` workflow.
        #
        #   @return [Symbol, Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Status, nil]
        optional :status, enum: -> { Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Status }

        # @!attribute status_reasons
        #   <Deprecated. Use verification_application.status_reasons> Reason for the
        #   evaluation status.
        #
        #   @return [Array<Symbol, Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason>, nil]
        optional :status_reasons,
                 -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason] }

        # @!attribute user_type
        #   The type of Account Holder. If the type is "INDIVIDUAL", the "individual"
        #   attribute will be present.
        #
        #   If the type is "BUSINESS" then the "business_entity", "control_person",
        #   "beneficial_owner_individuals", "nature_of_business", and "website_url"
        #   attributes will be present.
        #
        #   @return [Symbol, Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::UserType, nil]
        optional :user_type,
                 enum: -> { Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::UserType }

        # @!attribute verification_application
        #   Information about the most recent identity verification attempt
        #
        #   @return [Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication, nil]
        optional :verification_application,
                 -> { Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication }

        # @!attribute website_url
        #   Only present when user_type == "BUSINESS". Business's primary website.
        #
        #   @return [String, nil]
        optional :website_url, String

        # @!method initialize(token: nil, account_token: nil, beneficial_owner_entities: nil, beneficial_owner_individuals: nil, business_account_token: nil, business_entity: nil, control_person: nil, created: nil, email: nil, exemption_type: nil, external_id: nil, individual: nil, nature_of_business: nil, phone_number: nil, required_documents: nil, status: nil, status_reasons: nil, user_type: nil, verification_application: nil, website_url: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse} for more
        #   details.
        #
        #   @param token [String] Globally unique identifier for the account holder.
        #
        #   @param account_token [String] Globally unique identifier for the account.
        #
        #   @param beneficial_owner_entities [Array<Lithic::KYBBusinessEntity>] Deprecated.
        #
        #   @param beneficial_owner_individuals [Array<Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::BeneficialOwnerIndividual>] Only present when user_type == "BUSINESS". You must submit a list of all direct
        #
        #   @param business_account_token [String] Only applicable for customers using the KYC-Exempt workflow to enroll authorized
        #
        #   @param business_entity [Lithic::KYBBusinessEntity] Only present when user_type == "BUSINESS". Information about the business for wh
        #
        #   @param control_person [Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ControlPerson] Only present when user_type == "BUSINESS".
        #
        #   @param created [Time] Timestamp of when the account holder was created.
        #
        #   @param email [String] <
        #
        #   @param exemption_type [Symbol, Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ExemptionType] The type of KYC exemption for a KYC-Exempt Account Holder. "None" if the account
        #
        #   @param external_id [String] Customer-provided token that indicates a relationship with an object outside of
        #
        #   @param individual [Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Individual] Only present when user_type == "INDIVIDUAL". Information about the individual fo
        #
        #   @param nature_of_business [String] Only present when user_type == "BUSINESS". User-submitted description of the bus
        #
        #   @param phone_number [String] <
        #
        #   @param required_documents [Array<Lithic::RequiredDocument>] Only present for "KYB_BASIC" and "KYC_ADVANCED" workflows. A list of documents r
        #
        #   @param status [Symbol, Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Status] <Deprecated. Use verification_application.status instead>
        #
        #   @param status_reasons [Array<Symbol, Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason>] <Deprecated. Use verification_application.status_reasons> Reason for the evaluat
        #
        #   @param user_type [Symbol, Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::UserType] The type of Account Holder. If the type is "INDIVIDUAL", the "individual" attrib
        #
        #   @param verification_application [Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication] Information about the most recent identity verification attempt
        #
        #   @param website_url [String] Only present when user_type == "BUSINESS". Business's primary website.

        class BeneficialOwnerIndividual < Lithic::Internal::Type::BaseModel
          # @!attribute address
          #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
          #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
          #
          #   @return [Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::BeneficialOwnerIndividual::Address, nil]
          optional :address,
                   -> { Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::BeneficialOwnerIndividual::Address }

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

          # @!method initialize(address: nil, dob: nil, email: nil, first_name: nil, last_name: nil, phone_number: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::BeneficialOwnerIndividual}
          #   for more details.
          #
          #   @param address [Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::BeneficialOwnerIndividual::Address] Individual's current address - PO boxes, UPS drops, and FedEx drops are not acce
          #
          #   @param dob [String] Individual's date of birth, as an RFC 3339 date.
          #
          #   @param email [String] Individual's email address. If utilizing Lithic for chargeback processing, this
          #
          #   @param first_name [String] Individual's first name, as it appears on government-issued identity documents.
          #
          #   @param last_name [String] Individual's last name, as it appears on government-issued identity documents.
          #
          #   @param phone_number [String] Individual's phone number, entered in E.164 format.

          # @see Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::BeneficialOwnerIndividual#address
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
            #   {Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::BeneficialOwnerIndividual::Address}
            #   for more details.
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
        end

        # @see Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse#control_person
        class ControlPerson < Lithic::Internal::Type::BaseModel
          # @!attribute address
          #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
          #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
          #
          #   @return [Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ControlPerson::Address, nil]
          optional :address,
                   -> { Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ControlPerson::Address }

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

          # @!method initialize(address: nil, dob: nil, email: nil, first_name: nil, last_name: nil, phone_number: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ControlPerson}
          #   for more details.
          #
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
          #   @param address [Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ControlPerson::Address] Individual's current address - PO boxes, UPS drops, and FedEx drops are not acce
          #
          #   @param dob [String] Individual's date of birth, as an RFC 3339 date.
          #
          #   @param email [String] Individual's email address. If utilizing Lithic for chargeback processing, this
          #
          #   @param first_name [String] Individual's first name, as it appears on government-issued identity documents.
          #
          #   @param last_name [String] Individual's last name, as it appears on government-issued identity documents.
          #
          #   @param phone_number [String] Individual's phone number, entered in E.164 format.

          # @see Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ControlPerson#address
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
            #   {Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ControlPerson::Address}
            #   for more details.
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
        end

        # The type of KYC exemption for a KYC-Exempt Account Holder. "None" if the account
        # holder is not KYC-Exempt.
        #
        # @see Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse#exemption_type
        module ExemptionType
          extend Lithic::Internal::Type::Enum

          AUTHORIZED_USER = :AUTHORIZED_USER
          PREPAID_CARD_USER = :PREPAID_CARD_USER

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse#individual
        class Individual < Lithic::Internal::Type::BaseModel
          # @!attribute address
          #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
          #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
          #
          #   @return [Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Individual::Address, nil]
          optional :address,
                   -> { Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Individual::Address }

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

          # @!method initialize(address: nil, dob: nil, email: nil, first_name: nil, last_name: nil, phone_number: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Individual}
          #   for more details.
          #
          #   Only present when user_type == "INDIVIDUAL". Information about the individual
          #   for which the account is being opened and KYC is being run.
          #
          #   @param address [Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Individual::Address] Individual's current address - PO boxes, UPS drops, and FedEx drops are not acce
          #
          #   @param dob [String] Individual's date of birth, as an RFC 3339 date.
          #
          #   @param email [String] Individual's email address. If utilizing Lithic for chargeback processing, this
          #
          #   @param first_name [String] Individual's first name, as it appears on government-issued identity documents.
          #
          #   @param last_name [String] Individual's last name, as it appears on government-issued identity documents.
          #
          #   @param phone_number [String] Individual's phone number, entered in E.164 format.

          # @see Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Individual#address
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
            #   {Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Individual::Address}
            #   for more details.
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
        end

        # <Deprecated. Use verification_application.status instead>
        #
        # KYC and KYB evaluation states.
        #
        # Note: `PENDING_RESUBMIT` and `PENDING_DOCUMENT` are only applicable for the
        # `ADVANCED` workflow.
        #
        # @see Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse#status
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
        # @see Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse#user_type
        module UserType
          extend Lithic::Internal::Type::Enum

          BUSINESS = :BUSINESS
          INDIVIDUAL = :INDIVIDUAL

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse#verification_application
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
          #   @return [Symbol, Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::Status]
          required :status,
                   enum: -> { Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::Status }

          # @!attribute status_reasons
          #   Reason for the evaluation status.
          #
          #   @return [Array<Symbol, Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason>]
          required :status_reasons,
                   -> do
                     Lithic::Internal::Type::ArrayOf[
                       enum: Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason
                     ]
                   end

          # @!attribute updated
          #   Timestamp of when the application was last updated.
          #
          #   @return [Time]
          required :updated, Time

          # @!method initialize(created:, status:, status_reasons:, updated:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication}
          #   for more details.
          #
          #   Information about the most recent identity verification attempt
          #
          #   @param created [Time] Timestamp of when the application was created.
          #
          #   @param status [Symbol, Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::Status] KYC and KYB evaluation states.
          #
          #   @param status_reasons [Array<Symbol, Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason>] Reason for the evaluation status.
          #
          #   @param updated [Time] Timestamp of when the application was last updated.

          # KYC and KYB evaluation states.
          #
          # Note: `PENDING_RESUBMIT` and `PENDING_DOCUMENT` are only applicable for the
          # `ADVANCED` workflow.
          #
          # @see Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication#status
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

      class PatchResponse < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   The token for the account holder that was updated
        #
        #   @return [String, nil]
        optional :token, String

        # @!attribute address
        #   The address for the account holder
        #
        #   @return [Lithic::Models::AccountHolderUpdateResponse::PatchResponse::Address, nil]
        optional :address, -> { Lithic::Models::AccountHolderUpdateResponse::PatchResponse::Address }

        # @!attribute business_account_token
        #   The token for the business account that the account holder is associated with
        #
        #   @return [String, nil]
        optional :business_account_token, String

        # @!attribute email
        #   The email for the account holder
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute first_name
        #   The first name for the account holder
        #
        #   @return [String, nil]
        optional :first_name, String

        # @!attribute last_name
        #   The last name for the account holder
        #
        #   @return [String, nil]
        optional :last_name, String

        # @!attribute legal_business_name
        #   The legal business name for the account holder
        #
        #   @return [String, nil]
        optional :legal_business_name, String

        # @!attribute phone_number
        #   The phone_number for the account holder
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!method initialize(token: nil, address: nil, business_account_token: nil, email: nil, first_name: nil, last_name: nil, legal_business_name: nil, phone_number: nil)
        #   @param token [String] The token for the account holder that was updated
        #
        #   @param address [Lithic::Models::AccountHolderUpdateResponse::PatchResponse::Address] The address for the account holder
        #
        #   @param business_account_token [String] The token for the business account that the account holder is associated with
        #
        #   @param email [String] The email for the account holder
        #
        #   @param first_name [String] The first name for the account holder
        #
        #   @param last_name [String] The last name for the account holder
        #
        #   @param legal_business_name [String] The legal business name for the account holder
        #
        #   @param phone_number [String] The phone_number for the account holder

        # @see Lithic::Models::AccountHolderUpdateResponse::PatchResponse#address
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
          #   {Lithic::Models::AccountHolderUpdateResponse::PatchResponse::Address} for more
          #   details.
          #
          #   The address for the account holder
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
      end

      # @!method self.variants
      #   @return [Array(Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse, Lithic::Models::AccountHolderUpdateResponse::PatchResponse)]
    end
  end
end
