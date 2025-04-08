# typed: strong

module Lithic
  module Models
    class AccountHolder < Lithic::Internal::Type::BaseModel
      # Globally unique identifier for the account holder.
      sig { returns(String) }
      attr_accessor :token

      # Timestamp of when the account holder was created.
      sig { returns(Time) }
      attr_accessor :created

      # Globally unique identifier for the account.
      sig { returns(T.nilable(String)) }
      attr_reader :account_token

      sig { params(account_token: String).void }
      attr_writer :account_token

      # Deprecated.
      sig { returns(T.nilable(T::Array[Lithic::Models::AccountHolder::BeneficialOwnerEntity])) }
      attr_reader :beneficial_owner_entities

      sig do
        params(
          beneficial_owner_entities: T::Array[T.any(Lithic::Models::AccountHolder::BeneficialOwnerEntity, Lithic::Internal::AnyHash)]
        )
          .void
      end
      attr_writer :beneficial_owner_entities

      # Only present when user_type == "BUSINESS". List of all direct and indirect
      # individuals with 25% or more ownership in the company. If no individual owns 25%
      # of the company, please identify the largest shareholder in this field. See
      # [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
      # (Section I) for more background on individuals that should be included.
      sig { returns(T.nilable(T::Array[Lithic::Models::AccountHolder::BeneficialOwnerIndividual])) }
      attr_reader :beneficial_owner_individuals

      sig do
        params(
          beneficial_owner_individuals: T::Array[T.any(Lithic::Models::AccountHolder::BeneficialOwnerIndividual, Lithic::Internal::AnyHash)]
        )
          .void
      end
      attr_writer :beneficial_owner_individuals

      # Only applicable for customers using the KYC-Exempt workflow to enroll authorized
      # users of businesses. Pass the account_token of the enrolled business associated
      # with the AUTHORIZED_USER in this field.
      sig { returns(T.nilable(String)) }
      attr_reader :business_account_token

      sig { params(business_account_token: String).void }
      attr_writer :business_account_token

      # Only present when user_type == "BUSINESS". Information about the business for
      # which the account is being opened and KYB is being run.
      sig { returns(T.nilable(Lithic::Models::AccountHolder::BusinessEntity)) }
      attr_reader :business_entity

      sig do
        params(business_entity: T.any(Lithic::Models::AccountHolder::BusinessEntity, Lithic::Internal::AnyHash))
          .void
      end
      attr_writer :business_entity

      # Only present when user_type == "BUSINESS". An individual with significant
      # responsibility for managing the legal entity (e.g., a Chief Executive Officer,
      # Chief Financial Officer, Chief Operating Officer, Managing Member, General
      # Partner, President, Vice President, or Treasurer). This can be an executive, or
      # someone who will have program-wide access to the cards that Lithic will provide.
      # In some cases, this individual could also be a beneficial owner listed above.
      sig { returns(T.nilable(Lithic::Models::AccountHolder::ControlPerson)) }
      attr_reader :control_person

      sig do
        params(control_person: T.any(Lithic::Models::AccountHolder::ControlPerson, Lithic::Internal::AnyHash)).void
      end
      attr_writer :control_person

      # < Deprecated. Use control_person.email when user_type == "BUSINESS". Use
      # individual.phone_number when user_type == "INDIVIDUAL".
      #
      # > Primary email of Account Holder.
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # The type of KYC exemption for a KYC-Exempt Account Holder.
      sig { returns(T.nilable(Lithic::Models::AccountHolder::ExemptionType::TaggedSymbol)) }
      attr_reader :exemption_type

      sig { params(exemption_type: Lithic::Models::AccountHolder::ExemptionType::OrSymbol).void }
      attr_writer :exemption_type

      # Customer-provided token that indicates a relationship with an object outside of
      # the Lithic ecosystem.
      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      # Only present when user_type == "INDIVIDUAL". Information about the individual
      # for which the account is being opened and KYC is being run.
      sig { returns(T.nilable(Lithic::Models::AccountHolder::Individual)) }
      attr_reader :individual

      sig { params(individual: T.any(Lithic::Models::AccountHolder::Individual, Lithic::Internal::AnyHash)).void }
      attr_writer :individual

      # Only present when user_type == "BUSINESS". User-submitted description of the
      # business.
      sig { returns(T.nilable(String)) }
      attr_reader :nature_of_business

      sig { params(nature_of_business: String).void }
      attr_writer :nature_of_business

      # < Deprecated. Use control_person.phone_number when user_type == "BUSINESS". Use
      # individual.phone_number when user_type == "INDIVIDUAL".
      #
      # > Primary phone of Account Holder, entered in E.164 format.
      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { params(phone_number: String).void }
      attr_writer :phone_number

      # Only present for "KYB_BASIC" workflow. A list of documents required for the
      # account holder to be approved.
      sig { returns(T.nilable(T::Array[Lithic::Models::RequiredDocument])) }
      attr_reader :required_documents

      sig do
        params(required_documents: T::Array[T.any(Lithic::Models::RequiredDocument, Lithic::Internal::AnyHash)])
          .void
      end
      attr_writer :required_documents

      # <Deprecated. Use verification_application.status instead>
      #
      # KYC and KYB evaluation states.
      #
      # Note:
      #
      # - `PENDING_REVIEW` is only applicable for the `KYB_BASIC` workflow.
      sig { returns(T.nilable(Lithic::Models::AccountHolder::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Lithic::Models::AccountHolder::Status::OrSymbol).void }
      attr_writer :status

      # <Deprecated. Use verification_application.status_reasons> Reason for the
      # evaluation status.
      sig { returns(T.nilable(T::Array[Lithic::Models::AccountHolder::StatusReason::TaggedSymbol])) }
      attr_reader :status_reasons

      sig { params(status_reasons: T::Array[Lithic::Models::AccountHolder::StatusReason::OrSymbol]).void }
      attr_writer :status_reasons

      # The type of Account Holder. If the type is "INDIVIDUAL", the "individual"
      # attribute will be present. If the type is "BUSINESS" then the "business_entity",
      # "control_person", "beneficial_owner_individuals", "nature_of_business", and
      # "website_url" attributes will be present.
      sig { returns(T.nilable(Lithic::Models::AccountHolder::UserType::TaggedSymbol)) }
      attr_reader :user_type

      sig { params(user_type: Lithic::Models::AccountHolder::UserType::OrSymbol).void }
      attr_writer :user_type

      # Information about the most recent identity verification attempt
      sig { returns(T.nilable(Lithic::Models::AccountHolder::VerificationApplication)) }
      attr_reader :verification_application

      sig do
        params(
          verification_application: T.any(Lithic::Models::AccountHolder::VerificationApplication, Lithic::Internal::AnyHash)
        )
          .void
      end
      attr_writer :verification_application

      # Only present when user_type == "BUSINESS". Business's primary website.
      sig { returns(T.nilable(String)) }
      attr_reader :website_url

      sig { params(website_url: String).void }
      attr_writer :website_url

      sig do
        params(
          token: String,
          created: Time,
          account_token: String,
          beneficial_owner_entities: T::Array[T.any(Lithic::Models::AccountHolder::BeneficialOwnerEntity, Lithic::Internal::AnyHash)],
          beneficial_owner_individuals: T::Array[T.any(Lithic::Models::AccountHolder::BeneficialOwnerIndividual, Lithic::Internal::AnyHash)],
          business_account_token: String,
          business_entity: T.any(Lithic::Models::AccountHolder::BusinessEntity, Lithic::Internal::AnyHash),
          control_person: T.any(Lithic::Models::AccountHolder::ControlPerson, Lithic::Internal::AnyHash),
          email: String,
          exemption_type: Lithic::Models::AccountHolder::ExemptionType::OrSymbol,
          external_id: String,
          individual: T.any(Lithic::Models::AccountHolder::Individual, Lithic::Internal::AnyHash),
          nature_of_business: String,
          phone_number: String,
          required_documents: T::Array[T.any(Lithic::Models::RequiredDocument, Lithic::Internal::AnyHash)],
          status: Lithic::Models::AccountHolder::Status::OrSymbol,
          status_reasons: T::Array[Lithic::Models::AccountHolder::StatusReason::OrSymbol],
          user_type: Lithic::Models::AccountHolder::UserType::OrSymbol,
          verification_application: T.any(Lithic::Models::AccountHolder::VerificationApplication, Lithic::Internal::AnyHash),
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
      ); end
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
              exemption_type: Lithic::Models::AccountHolder::ExemptionType::TaggedSymbol,
              external_id: String,
              individual: Lithic::Models::AccountHolder::Individual,
              nature_of_business: String,
              phone_number: String,
              required_documents: T::Array[Lithic::Models::RequiredDocument],
              status: Lithic::Models::AccountHolder::Status::TaggedSymbol,
              status_reasons: T::Array[Lithic::Models::AccountHolder::StatusReason::TaggedSymbol],
              user_type: Lithic::Models::AccountHolder::UserType::TaggedSymbol,
              verification_application: Lithic::Models::AccountHolder::VerificationApplication,
              website_url: String
            }
          )
      end
      def to_hash; end

      class BeneficialOwnerEntity < Lithic::Internal::Type::BaseModel
        # Business's physical address - PO boxes, UPS drops, and FedEx drops are not
        # acceptable; APO/FPO are acceptable.
        sig { returns(Lithic::Models::Address) }
        attr_reader :address

        sig { params(address: T.any(Lithic::Models::Address, Lithic::Internal::AnyHash)).void }
        attr_writer :address

        # Any name that the business operates under that is not its legal business name
        # (if applicable).
        sig { returns(String) }
        attr_accessor :dba_business_name

        # Globally unique identifier for the entity.
        sig { returns(String) }
        attr_accessor :entity_token

        # Government-issued identification number. US Federal Employer Identification
        # Numbers (EIN) are currently supported, entered as full nine-digits, with or
        # without hyphens.
        sig { returns(String) }
        attr_accessor :government_id

        # Legal (formal) business name.
        sig { returns(String) }
        attr_accessor :legal_business_name

        # One or more of the business's phone number(s), entered as a list in E.164
        # format.
        sig { returns(T::Array[String]) }
        attr_accessor :phone_numbers

        # Parent company name (if applicable).
        sig { returns(T.nilable(String)) }
        attr_reader :parent_company

        sig { params(parent_company: String).void }
        attr_writer :parent_company

        sig do
          params(
            address: T.any(Lithic::Models::Address, Lithic::Internal::AnyHash),
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
        ); end
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
        def to_hash; end
      end

      class BeneficialOwnerIndividual < Lithic::Internal::Type::BaseModel
        # Individual's current address
        sig { returns(Lithic::Models::Address) }
        attr_reader :address

        sig { params(address: T.any(Lithic::Models::Address, Lithic::Internal::AnyHash)).void }
        attr_writer :address

        # Individual's date of birth, as an RFC 3339 date.
        sig { returns(String) }
        attr_accessor :dob

        # Individual's email address.
        sig { returns(String) }
        attr_accessor :email

        # Globally unique identifier for the entity.
        sig { returns(String) }
        attr_accessor :entity_token

        # Individual's first name, as it appears on government-issued identity documents.
        sig { returns(String) }
        attr_accessor :first_name

        # Individual's last name, as it appears on government-issued identity documents.
        sig { returns(String) }
        attr_accessor :last_name

        # Individual's phone number, entered in E.164 format.
        sig { returns(String) }
        attr_accessor :phone_number

        # Information about an individual associated with an account holder. A subset of
        # the information provided via KYC. For example, we do not return the government
        # id.
        sig do
          params(
            address: T.any(Lithic::Models::Address, Lithic::Internal::AnyHash),
            dob: String,
            email: String,
            entity_token: String,
            first_name: String,
            last_name: String,
            phone_number: String
          )
            .returns(T.attached_class)
        end
        def self.new(address:, dob:, email:, entity_token:, first_name:, last_name:, phone_number:); end

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
        def to_hash; end
      end

      class BusinessEntity < Lithic::Internal::Type::BaseModel
        # Business's physical address - PO boxes, UPS drops, and FedEx drops are not
        # acceptable; APO/FPO are acceptable.
        sig { returns(Lithic::Models::Address) }
        attr_reader :address

        sig { params(address: T.any(Lithic::Models::Address, Lithic::Internal::AnyHash)).void }
        attr_writer :address

        # Any name that the business operates under that is not its legal business name
        # (if applicable).
        sig { returns(String) }
        attr_accessor :dba_business_name

        # Globally unique identifier for the entity.
        sig { returns(String) }
        attr_accessor :entity_token

        # Government-issued identification number. US Federal Employer Identification
        # Numbers (EIN) are currently supported, entered as full nine-digits, with or
        # without hyphens.
        sig { returns(String) }
        attr_accessor :government_id

        # Legal (formal) business name.
        sig { returns(String) }
        attr_accessor :legal_business_name

        # One or more of the business's phone number(s), entered as a list in E.164
        # format.
        sig { returns(T::Array[String]) }
        attr_accessor :phone_numbers

        # Parent company name (if applicable).
        sig { returns(T.nilable(String)) }
        attr_reader :parent_company

        sig { params(parent_company: String).void }
        attr_writer :parent_company

        # Only present when user_type == "BUSINESS". Information about the business for
        # which the account is being opened and KYB is being run.
        sig do
          params(
            address: T.any(Lithic::Models::Address, Lithic::Internal::AnyHash),
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
        ); end
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
        def to_hash; end
      end

      class ControlPerson < Lithic::Internal::Type::BaseModel
        # Individual's current address
        sig { returns(Lithic::Models::Address) }
        attr_reader :address

        sig { params(address: T.any(Lithic::Models::Address, Lithic::Internal::AnyHash)).void }
        attr_writer :address

        # Individual's date of birth, as an RFC 3339 date.
        sig { returns(String) }
        attr_accessor :dob

        # Individual's email address.
        sig { returns(String) }
        attr_accessor :email

        # Globally unique identifier for the entity.
        sig { returns(String) }
        attr_accessor :entity_token

        # Individual's first name, as it appears on government-issued identity documents.
        sig { returns(String) }
        attr_accessor :first_name

        # Individual's last name, as it appears on government-issued identity documents.
        sig { returns(String) }
        attr_accessor :last_name

        # Individual's phone number, entered in E.164 format.
        sig { returns(String) }
        attr_accessor :phone_number

        # Only present when user_type == "BUSINESS". An individual with significant
        # responsibility for managing the legal entity (e.g., a Chief Executive Officer,
        # Chief Financial Officer, Chief Operating Officer, Managing Member, General
        # Partner, President, Vice President, or Treasurer). This can be an executive, or
        # someone who will have program-wide access to the cards that Lithic will provide.
        # In some cases, this individual could also be a beneficial owner listed above.
        sig do
          params(
            address: T.any(Lithic::Models::Address, Lithic::Internal::AnyHash),
            dob: String,
            email: String,
            entity_token: String,
            first_name: String,
            last_name: String,
            phone_number: String
          )
            .returns(T.attached_class)
        end
        def self.new(address:, dob:, email:, entity_token:, first_name:, last_name:, phone_number:); end

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
        def to_hash; end
      end

      # The type of KYC exemption for a KYC-Exempt Account Holder.
      module ExemptionType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AccountHolder::ExemptionType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::AccountHolder::ExemptionType::TaggedSymbol) }

        AUTHORIZED_USER = T.let(:AUTHORIZED_USER, Lithic::Models::AccountHolder::ExemptionType::TaggedSymbol)
        PREPAID_CARD_USER = T.let(:PREPAID_CARD_USER, Lithic::Models::AccountHolder::ExemptionType::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::AccountHolder::ExemptionType::TaggedSymbol]) }
        def self.values; end
      end

      class Individual < Lithic::Internal::Type::BaseModel
        # Individual's current address
        sig { returns(Lithic::Models::Address) }
        attr_reader :address

        sig { params(address: T.any(Lithic::Models::Address, Lithic::Internal::AnyHash)).void }
        attr_writer :address

        # Individual's date of birth, as an RFC 3339 date.
        sig { returns(String) }
        attr_accessor :dob

        # Individual's email address.
        sig { returns(String) }
        attr_accessor :email

        # Globally unique identifier for the entity.
        sig { returns(String) }
        attr_accessor :entity_token

        # Individual's first name, as it appears on government-issued identity documents.
        sig { returns(String) }
        attr_accessor :first_name

        # Individual's last name, as it appears on government-issued identity documents.
        sig { returns(String) }
        attr_accessor :last_name

        # Individual's phone number, entered in E.164 format.
        sig { returns(String) }
        attr_accessor :phone_number

        # Only present when user_type == "INDIVIDUAL". Information about the individual
        # for which the account is being opened and KYC is being run.
        sig do
          params(
            address: T.any(Lithic::Models::Address, Lithic::Internal::AnyHash),
            dob: String,
            email: String,
            entity_token: String,
            first_name: String,
            last_name: String,
            phone_number: String
          )
            .returns(T.attached_class)
        end
        def self.new(address:, dob:, email:, entity_token:, first_name:, last_name:, phone_number:); end

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
        def to_hash; end
      end

      # <Deprecated. Use verification_application.status instead>
      #
      # KYC and KYB evaluation states.
      #
      # Note:
      #
      # - `PENDING_REVIEW` is only applicable for the `KYB_BASIC` workflow.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AccountHolder::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Lithic::Models::AccountHolder::Status::TaggedSymbol) }

        ACCEPTED = T.let(:ACCEPTED, Lithic::Models::AccountHolder::Status::TaggedSymbol)
        PENDING_REVIEW = T.let(:PENDING_REVIEW, Lithic::Models::AccountHolder::Status::TaggedSymbol)
        PENDING_DOCUMENT = T.let(:PENDING_DOCUMENT, Lithic::Models::AccountHolder::Status::TaggedSymbol)
        PENDING_RESUBMIT = T.let(:PENDING_RESUBMIT, Lithic::Models::AccountHolder::Status::TaggedSymbol)
        REJECTED = T.let(:REJECTED, Lithic::Models::AccountHolder::Status::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::AccountHolder::Status::TaggedSymbol]) }
        def self.values; end
      end

      module StatusReason
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AccountHolder::StatusReason) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::AccountHolder::StatusReason::TaggedSymbol) }

        ADDRESS_VERIFICATION_FAILURE =
          T.let(:ADDRESS_VERIFICATION_FAILURE, Lithic::Models::AccountHolder::StatusReason::TaggedSymbol)
        AGE_THRESHOLD_FAILURE =
          T.let(:AGE_THRESHOLD_FAILURE, Lithic::Models::AccountHolder::StatusReason::TaggedSymbol)
        COMPLETE_VERIFICATION_FAILURE =
          T.let(:COMPLETE_VERIFICATION_FAILURE, Lithic::Models::AccountHolder::StatusReason::TaggedSymbol)
        DOB_VERIFICATION_FAILURE =
          T.let(:DOB_VERIFICATION_FAILURE, Lithic::Models::AccountHolder::StatusReason::TaggedSymbol)
        ID_VERIFICATION_FAILURE =
          T.let(:ID_VERIFICATION_FAILURE, Lithic::Models::AccountHolder::StatusReason::TaggedSymbol)
        MAX_DOCUMENT_ATTEMPTS =
          T.let(:MAX_DOCUMENT_ATTEMPTS, Lithic::Models::AccountHolder::StatusReason::TaggedSymbol)
        MAX_RESUBMISSION_ATTEMPTS =
          T.let(:MAX_RESUBMISSION_ATTEMPTS, Lithic::Models::AccountHolder::StatusReason::TaggedSymbol)
        NAME_VERIFICATION_FAILURE =
          T.let(:NAME_VERIFICATION_FAILURE, Lithic::Models::AccountHolder::StatusReason::TaggedSymbol)
        OTHER_VERIFICATION_FAILURE =
          T.let(:OTHER_VERIFICATION_FAILURE, Lithic::Models::AccountHolder::StatusReason::TaggedSymbol)
        RISK_THRESHOLD_FAILURE =
          T.let(:RISK_THRESHOLD_FAILURE, Lithic::Models::AccountHolder::StatusReason::TaggedSymbol)
        WATCHLIST_ALERT_FAILURE =
          T.let(:WATCHLIST_ALERT_FAILURE, Lithic::Models::AccountHolder::StatusReason::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::AccountHolder::StatusReason::TaggedSymbol]) }
        def self.values; end
      end

      # The type of Account Holder. If the type is "INDIVIDUAL", the "individual"
      # attribute will be present. If the type is "BUSINESS" then the "business_entity",
      # "control_person", "beneficial_owner_individuals", "nature_of_business", and
      # "website_url" attributes will be present.
      module UserType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AccountHolder::UserType) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Lithic::Models::AccountHolder::UserType::TaggedSymbol) }

        BUSINESS = T.let(:BUSINESS, Lithic::Models::AccountHolder::UserType::TaggedSymbol)
        INDIVIDUAL = T.let(:INDIVIDUAL, Lithic::Models::AccountHolder::UserType::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::AccountHolder::UserType::TaggedSymbol]) }
        def self.values; end
      end

      class VerificationApplication < Lithic::Internal::Type::BaseModel
        # Timestamp of when the application was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created

        sig { params(created: Time).void }
        attr_writer :created

        # KYC and KYB evaluation states.
        #
        # Note:
        #
        # - `PENDING_REVIEW` is only applicable for the `KYB_BASIC` workflow.
        sig { returns(T.nilable(Lithic::Models::AccountHolder::VerificationApplication::Status::TaggedSymbol)) }
        attr_reader :status

        sig { params(status: Lithic::Models::AccountHolder::VerificationApplication::Status::OrSymbol).void }
        attr_writer :status

        # Reason for the evaluation status.
        sig do
          returns(
            T.nilable(T::Array[Lithic::Models::AccountHolder::VerificationApplication::StatusReason::TaggedSymbol])
          )
        end
        attr_reader :status_reasons

        sig do
          params(
            status_reasons: T::Array[Lithic::Models::AccountHolder::VerificationApplication::StatusReason::OrSymbol]
          )
            .void
        end
        attr_writer :status_reasons

        # Timestamp of when the application was last updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated

        sig { params(updated: Time).void }
        attr_writer :updated

        # Information about the most recent identity verification attempt
        sig do
          params(
            created: Time,
            status: Lithic::Models::AccountHolder::VerificationApplication::Status::OrSymbol,
            status_reasons: T::Array[Lithic::Models::AccountHolder::VerificationApplication::StatusReason::OrSymbol],
            updated: Time
          )
            .returns(T.attached_class)
        end
        def self.new(created: nil, status: nil, status_reasons: nil, updated: nil); end

        sig do
          override
            .returns(
              {
                created: Time,
                status: Lithic::Models::AccountHolder::VerificationApplication::Status::TaggedSymbol,
                status_reasons: T::Array[Lithic::Models::AccountHolder::VerificationApplication::StatusReason::TaggedSymbol],
                updated: Time
              }
            )
        end
        def to_hash; end

        # KYC and KYB evaluation states.
        #
        # Note:
        #
        # - `PENDING_REVIEW` is only applicable for the `KYB_BASIC` workflow.
        module Status
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::AccountHolder::VerificationApplication::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Lithic::Models::AccountHolder::VerificationApplication::Status::TaggedSymbol) }

          ACCEPTED = T.let(:ACCEPTED, Lithic::Models::AccountHolder::VerificationApplication::Status::TaggedSymbol)
          PENDING_REVIEW =
            T.let(:PENDING_REVIEW, Lithic::Models::AccountHolder::VerificationApplication::Status::TaggedSymbol)
          PENDING_DOCUMENT =
            T.let(:PENDING_DOCUMENT, Lithic::Models::AccountHolder::VerificationApplication::Status::TaggedSymbol)
          PENDING_RESUBMIT =
            T.let(:PENDING_RESUBMIT, Lithic::Models::AccountHolder::VerificationApplication::Status::TaggedSymbol)
          REJECTED = T.let(:REJECTED, Lithic::Models::AccountHolder::VerificationApplication::Status::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::AccountHolder::VerificationApplication::Status::TaggedSymbol]) }
          def self.values; end
        end

        module StatusReason
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::AccountHolder::VerificationApplication::StatusReason) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Lithic::Models::AccountHolder::VerificationApplication::StatusReason::TaggedSymbol) }

          ADDRESS_VERIFICATION_FAILURE =
            T.let(
              :ADDRESS_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolder::VerificationApplication::StatusReason::TaggedSymbol
            )
          AGE_THRESHOLD_FAILURE =
            T.let(
              :AGE_THRESHOLD_FAILURE,
              Lithic::Models::AccountHolder::VerificationApplication::StatusReason::TaggedSymbol
            )
          COMPLETE_VERIFICATION_FAILURE =
            T.let(
              :COMPLETE_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolder::VerificationApplication::StatusReason::TaggedSymbol
            )
          DOB_VERIFICATION_FAILURE =
            T.let(
              :DOB_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolder::VerificationApplication::StatusReason::TaggedSymbol
            )
          ID_VERIFICATION_FAILURE =
            T.let(
              :ID_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolder::VerificationApplication::StatusReason::TaggedSymbol
            )
          MAX_DOCUMENT_ATTEMPTS =
            T.let(
              :MAX_DOCUMENT_ATTEMPTS,
              Lithic::Models::AccountHolder::VerificationApplication::StatusReason::TaggedSymbol
            )
          MAX_RESUBMISSION_ATTEMPTS =
            T.let(
              :MAX_RESUBMISSION_ATTEMPTS,
              Lithic::Models::AccountHolder::VerificationApplication::StatusReason::TaggedSymbol
            )
          NAME_VERIFICATION_FAILURE =
            T.let(
              :NAME_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolder::VerificationApplication::StatusReason::TaggedSymbol
            )
          OTHER_VERIFICATION_FAILURE =
            T.let(
              :OTHER_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolder::VerificationApplication::StatusReason::TaggedSymbol
            )
          RISK_THRESHOLD_FAILURE =
            T.let(
              :RISK_THRESHOLD_FAILURE,
              Lithic::Models::AccountHolder::VerificationApplication::StatusReason::TaggedSymbol
            )
          WATCHLIST_ALERT_FAILURE =
            T.let(
              :WATCHLIST_ALERT_FAILURE,
              Lithic::Models::AccountHolder::VerificationApplication::StatusReason::TaggedSymbol
            )

          sig do
            override
              .returns(T::Array[Lithic::Models::AccountHolder::VerificationApplication::StatusReason::TaggedSymbol])
          end
          def self.values; end
        end
      end
    end
  end
end
