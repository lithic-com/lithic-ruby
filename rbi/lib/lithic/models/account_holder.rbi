# typed: strong

module Lithic
  module Models
    class AccountHolder < Lithic::BaseModel
      # Globally unique identifier for the account holder.
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # Timestamp of when the account holder was created.
      sig { returns(Time) }
      def created
      end

      sig { params(_: Time).returns(Time) }
      def created=(_)
      end

      # Globally unique identifier for the account.
      sig { returns(T.nilable(String)) }
      def account_token
      end

      sig { params(_: String).returns(String) }
      def account_token=(_)
      end

      # Only present when user_type == "BUSINESS". List of all entities with >25%
      #   ownership in the company.
      sig { returns(T.nilable(T::Array[Lithic::Models::AccountHolder::BeneficialOwnerEntity])) }
      def beneficial_owner_entities
      end

      sig do
        params(_: T::Array[Lithic::Models::AccountHolder::BeneficialOwnerEntity])
          .returns(T::Array[Lithic::Models::AccountHolder::BeneficialOwnerEntity])
      end
      def beneficial_owner_entities=(_)
      end

      # Only present when user_type == "BUSINESS". List of all individuals with >25%
      #   ownership in the company.
      sig { returns(T.nilable(T::Array[Lithic::Models::AccountHolder::BeneficialOwnerIndividual])) }
      def beneficial_owner_individuals
      end

      sig do
        params(_: T::Array[Lithic::Models::AccountHolder::BeneficialOwnerIndividual])
          .returns(T::Array[Lithic::Models::AccountHolder::BeneficialOwnerIndividual])
      end
      def beneficial_owner_individuals=(_)
      end

      # Only applicable for customers using the KYC-Exempt workflow to enroll authorized
      #   users of businesses. Pass the account_token of the enrolled business associated
      #   with the AUTHORIZED_USER in this field.
      sig { returns(T.nilable(String)) }
      def business_account_token
      end

      sig { params(_: String).returns(String) }
      def business_account_token=(_)
      end

      # Only present when user_type == "BUSINESS". Information about the business for
      #   which the account is being opened and KYB is being run.
      sig { returns(T.nilable(Lithic::Models::AccountHolder::BusinessEntity)) }
      def business_entity
      end

      sig do
        params(_: Lithic::Models::AccountHolder::BusinessEntity)
          .returns(Lithic::Models::AccountHolder::BusinessEntity)
      end
      def business_entity=(_)
      end

      # Only present when user_type == "BUSINESS". An individual with significant
      #   responsibility for managing the legal entity (e.g., a Chief Executive Officer,
      #   Chief Financial Officer, Chief Operating Officer, Managing Member, General
      #   Partner, President, Vice President, or Treasurer). This can be an executive, or
      #   someone who will have program-wide access to the cards that Lithic will provide.
      #   In some cases, this individual could also be a beneficial owner listed above.
      sig { returns(T.nilable(Lithic::Models::AccountHolder::ControlPerson)) }
      def control_person
      end

      sig do
        params(_: Lithic::Models::AccountHolder::ControlPerson)
          .returns(Lithic::Models::AccountHolder::ControlPerson)
      end
      def control_person=(_)
      end

      # < Deprecated. Use control_person.email when user_type == "BUSINESS". Use
      #   individual.phone_number when user_type == "INDIVIDUAL".
      #
      #   > Primary email of Account Holder.
      sig { returns(T.nilable(String)) }
      def email
      end

      sig { params(_: String).returns(String) }
      def email=(_)
      end

      # The type of KYC exemption for a KYC-Exempt Account Holder.
      sig { returns(T.nilable(Symbol)) }
      def exemption_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def exemption_type=(_)
      end

      # Customer-provided token that indicates a relationship with an object outside of
      #   the Lithic ecosystem.
      sig { returns(T.nilable(String)) }
      def external_id
      end

      sig { params(_: String).returns(String) }
      def external_id=(_)
      end

      # Only present when user_type == "INDIVIDUAL". Information about the individual
      #   for which the account is being opened and KYC is being run.
      sig { returns(T.nilable(Lithic::Models::AccountHolder::Individual)) }
      def individual
      end

      sig { params(_: Lithic::Models::AccountHolder::Individual).returns(Lithic::Models::AccountHolder::Individual) }
      def individual=(_)
      end

      # Only present when user_type == "BUSINESS". User-submitted description of the
      #   business.
      sig { returns(T.nilable(String)) }
      def nature_of_business
      end

      sig { params(_: String).returns(String) }
      def nature_of_business=(_)
      end

      # < Deprecated. Use control_person.phone_number when user_type == "BUSINESS". Use
      #   individual.phone_number when user_type == "INDIVIDUAL".
      #
      #   > Primary phone of Account Holder, entered in E.164 format.
      sig { returns(T.nilable(String)) }
      def phone_number
      end

      sig { params(_: String).returns(String) }
      def phone_number=(_)
      end

      # Only present for "KYB_BASIC" workflow. A list of documents required for the
      #   account holder to be approved.
      sig { returns(T.nilable(T::Array[Lithic::Models::RequiredDocument])) }
      def required_documents
      end

      sig { params(_: T::Array[Lithic::Models::RequiredDocument]).returns(T::Array[Lithic::Models::RequiredDocument]) }
      def required_documents=(_)
      end

      # <Deprecated. Use verification_application.status instead>
      #
      #   KYC and KYB evaluation states.
      #
      #   Note:
      #
      #   - `PENDING_REVIEW` is only applicable for the `KYB_BASIC` workflow.
      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # <Deprecated. Use verification_application.status_reasons> Reason for the
      #   evaluation status.
      sig { returns(T.nilable(T::Array[Symbol])) }
      def status_reasons
      end

      sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
      def status_reasons=(_)
      end

      # The type of Account Holder. If the type is "INDIVIDUAL", the "individual"
      #   attribute will be present. If the type is "BUSINESS" then the "business_entity",
      #   "control_person", "beneficial_owner_individuals", "beneficial_owner_entities",
      #   "nature_of_business", and "website_url" attributes will be present.
      sig { returns(T.nilable(Symbol)) }
      def user_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def user_type=(_)
      end

      # Information about the most recent identity verification attempt
      sig { returns(T.nilable(Lithic::Models::AccountHolder::VerificationApplication)) }
      def verification_application
      end

      sig do
        params(_: Lithic::Models::AccountHolder::VerificationApplication)
          .returns(Lithic::Models::AccountHolder::VerificationApplication)
      end
      def verification_application=(_)
      end

      # Only present when user_type == "BUSINESS". Business's primary website.
      sig { returns(T.nilable(String)) }
      def website_url
      end

      sig { params(_: String).returns(String) }
      def website_url=(_)
      end

      sig do
        params(
          token: String,
          created: Time,
          account_token: String,
          beneficial_owner_entities: T::Array[Lithic::Models::AccountHolder::BeneficialOwnerEntity],
          beneficial_owner_individuals: T::Array[Lithic::Models::AccountHolder::BeneficialOwnerIndividual],
          business_account_token: String,
          business_entity: Lithic::Models::AccountHolder::BusinessEntity,
          control_person: Lithic::Models::AccountHolder::ControlPerson,
          email: String,
          exemption_type: Symbol,
          external_id: String,
          individual: Lithic::Models::AccountHolder::Individual,
          nature_of_business: String,
          phone_number: String,
          required_documents: T::Array[Lithic::Models::RequiredDocument],
          status: Symbol,
          status_reasons: T::Array[Symbol],
          user_type: Symbol,
          verification_application: Lithic::Models::AccountHolder::VerificationApplication,
          website_url: String
        )
          .returns(T.attached_class)
      end
      def self.new(
        token:,
        created:,
        account_token: nil,
        beneficial_owner_entities: nil,
        beneficial_owner_individuals: nil,
        business_account_token: nil,
        business_entity: nil,
        control_person: nil,
        email: nil,
        exemption_type: nil,
        external_id: nil,
        individual: nil,
        nature_of_business: nil,
        phone_number: nil,
        required_documents: nil,
        status: nil,
        status_reasons: nil,
        user_type: nil,
        verification_application: nil,
        website_url: nil
      )
      end

      sig do
        override
          .returns(
            {
              token: String,
              created: Time,
              account_token: String,
              beneficial_owner_entities: T::Array[Lithic::Models::AccountHolder::BeneficialOwnerEntity],
              beneficial_owner_individuals: T::Array[Lithic::Models::AccountHolder::BeneficialOwnerIndividual],
              business_account_token: String,
              business_entity: Lithic::Models::AccountHolder::BusinessEntity,
              control_person: Lithic::Models::AccountHolder::ControlPerson,
              email: String,
              exemption_type: Symbol,
              external_id: String,
              individual: Lithic::Models::AccountHolder::Individual,
              nature_of_business: String,
              phone_number: String,
              required_documents: T::Array[Lithic::Models::RequiredDocument],
              status: Symbol,
              status_reasons: T::Array[Symbol],
              user_type: Symbol,
              verification_application: Lithic::Models::AccountHolder::VerificationApplication,
              website_url: String
            }
          )
      end
      def to_hash
      end

      class BeneficialOwnerEntity < Lithic::BaseModel
        # Business's physical address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable.
        sig { returns(Lithic::Models::Address) }
        def address
        end

        sig { params(_: Lithic::Models::Address).returns(Lithic::Models::Address) }
        def address=(_)
        end

        # Any name that the business operates under that is not its legal business name
        #   (if applicable).
        sig { returns(String) }
        def dba_business_name
        end

        sig { params(_: String).returns(String) }
        def dba_business_name=(_)
        end

        # Globally unique identifier for the entity.
        sig { returns(String) }
        def entity_token
        end

        sig { params(_: String).returns(String) }
        def entity_token=(_)
        end

        # Government-issued identification number. US Federal Employer Identification
        #   Numbers (EIN) are currently supported, entered as full nine-digits, with or
        #   without hyphens.
        sig { returns(String) }
        def government_id
        end

        sig { params(_: String).returns(String) }
        def government_id=(_)
        end

        # Legal (formal) business name.
        sig { returns(String) }
        def legal_business_name
        end

        sig { params(_: String).returns(String) }
        def legal_business_name=(_)
        end

        # One or more of the business's phone number(s), entered as a list in E.164
        #   format.
        sig { returns(T::Array[String]) }
        def phone_numbers
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def phone_numbers=(_)
        end

        # Parent company name (if applicable).
        sig { returns(T.nilable(String)) }
        def parent_company
        end

        sig { params(_: String).returns(String) }
        def parent_company=(_)
        end

        sig do
          params(
            address: Lithic::Models::Address,
            dba_business_name: String,
            entity_token: String,
            government_id: String,
            legal_business_name: String,
            phone_numbers: T::Array[String],
            parent_company: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          address:,
          dba_business_name:,
          entity_token:,
          government_id:,
          legal_business_name:,
          phone_numbers:,
          parent_company: nil
        )
        end

        sig do
          override
            .returns(
              {
                address: Lithic::Models::Address,
                dba_business_name: String,
                entity_token: String,
                government_id: String,
                legal_business_name: String,
                phone_numbers: T::Array[String],
                parent_company: String
              }
            )
        end
        def to_hash
        end
      end

      class BeneficialOwnerIndividual < Lithic::BaseModel
        # Individual's current address
        sig { returns(Lithic::Models::Address) }
        def address
        end

        sig { params(_: Lithic::Models::Address).returns(Lithic::Models::Address) }
        def address=(_)
        end

        # Individual's date of birth, as an RFC 3339 date.
        sig { returns(String) }
        def dob
        end

        sig { params(_: String).returns(String) }
        def dob=(_)
        end

        # Individual's email address.
        sig { returns(String) }
        def email
        end

        sig { params(_: String).returns(String) }
        def email=(_)
        end

        # Globally unique identifier for the entity.
        sig { returns(String) }
        def entity_token
        end

        sig { params(_: String).returns(String) }
        def entity_token=(_)
        end

        # Individual's first name, as it appears on government-issued identity documents.
        sig { returns(String) }
        def first_name
        end

        sig { params(_: String).returns(String) }
        def first_name=(_)
        end

        # Individual's last name, as it appears on government-issued identity documents.
        sig { returns(String) }
        def last_name
        end

        sig { params(_: String).returns(String) }
        def last_name=(_)
        end

        # Individual's phone number, entered in E.164 format.
        sig { returns(String) }
        def phone_number
        end

        sig { params(_: String).returns(String) }
        def phone_number=(_)
        end

        # Information about an individual associated with an account holder. A subset of
        #   the information provided via KYC. For example, we do not return the government
        #   id.
        sig do
          params(
            address: Lithic::Models::Address,
            dob: String,
            email: String,
            entity_token: String,
            first_name: String,
            last_name: String,
            phone_number: String
          )
            .returns(T.attached_class)
        end
        def self.new(address:, dob:, email:, entity_token:, first_name:, last_name:, phone_number:)
        end

        sig do
          override
            .returns(
              {
                address: Lithic::Models::Address,
                dob: String,
                email: String,
                entity_token: String,
                first_name: String,
                last_name: String,
                phone_number: String
              }
            )
        end
        def to_hash
        end
      end

      class BusinessEntity < Lithic::BaseModel
        # Business's physical address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable.
        sig { returns(Lithic::Models::Address) }
        def address
        end

        sig { params(_: Lithic::Models::Address).returns(Lithic::Models::Address) }
        def address=(_)
        end

        # Any name that the business operates under that is not its legal business name
        #   (if applicable).
        sig { returns(String) }
        def dba_business_name
        end

        sig { params(_: String).returns(String) }
        def dba_business_name=(_)
        end

        # Globally unique identifier for the entity.
        sig { returns(String) }
        def entity_token
        end

        sig { params(_: String).returns(String) }
        def entity_token=(_)
        end

        # Government-issued identification number. US Federal Employer Identification
        #   Numbers (EIN) are currently supported, entered as full nine-digits, with or
        #   without hyphens.
        sig { returns(String) }
        def government_id
        end

        sig { params(_: String).returns(String) }
        def government_id=(_)
        end

        # Legal (formal) business name.
        sig { returns(String) }
        def legal_business_name
        end

        sig { params(_: String).returns(String) }
        def legal_business_name=(_)
        end

        # One or more of the business's phone number(s), entered as a list in E.164
        #   format.
        sig { returns(T::Array[String]) }
        def phone_numbers
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def phone_numbers=(_)
        end

        # Parent company name (if applicable).
        sig { returns(T.nilable(String)) }
        def parent_company
        end

        sig { params(_: String).returns(String) }
        def parent_company=(_)
        end

        # Only present when user_type == "BUSINESS". Information about the business for
        #   which the account is being opened and KYB is being run.
        sig do
          params(
            address: Lithic::Models::Address,
            dba_business_name: String,
            entity_token: String,
            government_id: String,
            legal_business_name: String,
            phone_numbers: T::Array[String],
            parent_company: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          address:,
          dba_business_name:,
          entity_token:,
          government_id:,
          legal_business_name:,
          phone_numbers:,
          parent_company: nil
        )
        end

        sig do
          override
            .returns(
              {
                address: Lithic::Models::Address,
                dba_business_name: String,
                entity_token: String,
                government_id: String,
                legal_business_name: String,
                phone_numbers: T::Array[String],
                parent_company: String
              }
            )
        end
        def to_hash
        end
      end

      class ControlPerson < Lithic::BaseModel
        # Individual's current address
        sig { returns(Lithic::Models::Address) }
        def address
        end

        sig { params(_: Lithic::Models::Address).returns(Lithic::Models::Address) }
        def address=(_)
        end

        # Individual's date of birth, as an RFC 3339 date.
        sig { returns(String) }
        def dob
        end

        sig { params(_: String).returns(String) }
        def dob=(_)
        end

        # Individual's email address.
        sig { returns(String) }
        def email
        end

        sig { params(_: String).returns(String) }
        def email=(_)
        end

        # Globally unique identifier for the entity.
        sig { returns(String) }
        def entity_token
        end

        sig { params(_: String).returns(String) }
        def entity_token=(_)
        end

        # Individual's first name, as it appears on government-issued identity documents.
        sig { returns(String) }
        def first_name
        end

        sig { params(_: String).returns(String) }
        def first_name=(_)
        end

        # Individual's last name, as it appears on government-issued identity documents.
        sig { returns(String) }
        def last_name
        end

        sig { params(_: String).returns(String) }
        def last_name=(_)
        end

        # Individual's phone number, entered in E.164 format.
        sig { returns(String) }
        def phone_number
        end

        sig { params(_: String).returns(String) }
        def phone_number=(_)
        end

        # Only present when user_type == "BUSINESS". An individual with significant
        #   responsibility for managing the legal entity (e.g., a Chief Executive Officer,
        #   Chief Financial Officer, Chief Operating Officer, Managing Member, General
        #   Partner, President, Vice President, or Treasurer). This can be an executive, or
        #   someone who will have program-wide access to the cards that Lithic will provide.
        #   In some cases, this individual could also be a beneficial owner listed above.
        sig do
          params(
            address: Lithic::Models::Address,
            dob: String,
            email: String,
            entity_token: String,
            first_name: String,
            last_name: String,
            phone_number: String
          )
            .returns(T.attached_class)
        end
        def self.new(address:, dob:, email:, entity_token:, first_name:, last_name:, phone_number:)
        end

        sig do
          override
            .returns(
              {
                address: Lithic::Models::Address,
                dob: String,
                email: String,
                entity_token: String,
                first_name: String,
                last_name: String,
                phone_number: String
              }
            )
        end
        def to_hash
        end
      end

      # The type of KYC exemption for a KYC-Exempt Account Holder.
      class ExemptionType < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        AUTHORIZED_USER = :AUTHORIZED_USER
        PREPAID_CARD_USER = :PREPAID_CARD_USER
      end

      class Individual < Lithic::BaseModel
        # Individual's current address
        sig { returns(Lithic::Models::Address) }
        def address
        end

        sig { params(_: Lithic::Models::Address).returns(Lithic::Models::Address) }
        def address=(_)
        end

        # Individual's date of birth, as an RFC 3339 date.
        sig { returns(String) }
        def dob
        end

        sig { params(_: String).returns(String) }
        def dob=(_)
        end

        # Individual's email address.
        sig { returns(String) }
        def email
        end

        sig { params(_: String).returns(String) }
        def email=(_)
        end

        # Globally unique identifier for the entity.
        sig { returns(String) }
        def entity_token
        end

        sig { params(_: String).returns(String) }
        def entity_token=(_)
        end

        # Individual's first name, as it appears on government-issued identity documents.
        sig { returns(String) }
        def first_name
        end

        sig { params(_: String).returns(String) }
        def first_name=(_)
        end

        # Individual's last name, as it appears on government-issued identity documents.
        sig { returns(String) }
        def last_name
        end

        sig { params(_: String).returns(String) }
        def last_name=(_)
        end

        # Individual's phone number, entered in E.164 format.
        sig { returns(String) }
        def phone_number
        end

        sig { params(_: String).returns(String) }
        def phone_number=(_)
        end

        # Only present when user_type == "INDIVIDUAL". Information about the individual
        #   for which the account is being opened and KYC is being run.
        sig do
          params(
            address: Lithic::Models::Address,
            dob: String,
            email: String,
            entity_token: String,
            first_name: String,
            last_name: String,
            phone_number: String
          )
            .returns(T.attached_class)
        end
        def self.new(address:, dob:, email:, entity_token:, first_name:, last_name:, phone_number:)
        end

        sig do
          override
            .returns(
              {
                address: Lithic::Models::Address,
                dob: String,
                email: String,
                entity_token: String,
                first_name: String,
                last_name: String,
                phone_number: String
              }
            )
        end
        def to_hash
        end
      end

      # <Deprecated. Use verification_application.status instead>
      #
      #   KYC and KYB evaluation states.
      #
      #   Note:
      #
      #   - `PENDING_REVIEW` is only applicable for the `KYB_BASIC` workflow.
      class Status < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ACCEPTED = :ACCEPTED
        PENDING_REVIEW = :PENDING_REVIEW
        PENDING_DOCUMENT = :PENDING_DOCUMENT
        PENDING_RESUBMIT = :PENDING_RESUBMIT
        REJECTED = :REJECTED
      end

      class StatusReason < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

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
      end

      # The type of Account Holder. If the type is "INDIVIDUAL", the "individual"
      #   attribute will be present. If the type is "BUSINESS" then the "business_entity",
      #   "control_person", "beneficial_owner_individuals", "beneficial_owner_entities",
      #   "nature_of_business", and "website_url" attributes will be present.
      class UserType < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        BUSINESS = :BUSINESS
        INDIVIDUAL = :INDIVIDUAL
      end

      class VerificationApplication < Lithic::BaseModel
        # Timestamp of when the application was created.
        sig { returns(T.nilable(Time)) }
        def created
        end

        sig { params(_: Time).returns(Time) }
        def created=(_)
        end

        # KYC and KYB evaluation states.
        #
        #   Note:
        #
        #   - `PENDING_REVIEW` is only applicable for the `KYB_BASIC` workflow.
        sig { returns(T.nilable(Symbol)) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        # Reason for the evaluation status.
        sig { returns(T.nilable(T::Array[Symbol])) }
        def status_reasons
        end

        sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
        def status_reasons=(_)
        end

        # Timestamp of when the application was last updated.
        sig { returns(T.nilable(Time)) }
        def updated
        end

        sig { params(_: Time).returns(Time) }
        def updated=(_)
        end

        # Information about the most recent identity verification attempt
        sig do
          params(created: Time, status: Symbol, status_reasons: T::Array[Symbol], updated: Time)
            .returns(T.attached_class)
        end
        def self.new(created: nil, status: nil, status_reasons: nil, updated: nil)
        end

        sig do
          override.returns({created: Time, status: Symbol, status_reasons: T::Array[Symbol], updated: Time})
        end
        def to_hash
        end

        # KYC and KYB evaluation states.
        #
        #   Note:
        #
        #   - `PENDING_REVIEW` is only applicable for the `KYB_BASIC` workflow.
        class Status < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          ACCEPTED = :ACCEPTED
          PENDING_REVIEW = :PENDING_REVIEW
          PENDING_DOCUMENT = :PENDING_DOCUMENT
          PENDING_RESUBMIT = :PENDING_RESUBMIT
          REJECTED = :REJECTED
        end

        class StatusReason < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

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
        end
      end
    end
  end
end
