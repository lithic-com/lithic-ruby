# typed: strong

module Lithic
  module Models
    class AccountHolderUpdateParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # List of all entities with >25% ownership in the company. If no entity or
      #   individual owns >25% of the company, and the largest shareholder is an entity,
      #   please identify them in this field. See
      #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)(Section
      #   I) for more background. If no business owner is an entity, pass in an empty
      #   list. However, either this parameter or `beneficial_owner_individuals` must be
      #   populated. on entities that should be included.
      sig { returns(T.nilable(T::Array[Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerEntity])) }
      def beneficial_owner_entities
      end

      sig do
        params(_: T::Array[Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerEntity])
          .returns(T::Array[Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerEntity])
      end
      def beneficial_owner_entities=(_)
      end

      # List of all individuals with >25% ownership in the company. If no entity or
      #   individual owns >25% of the company, and the largest shareholder is an
      #   individual, please identify them in this field. See
      #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)(Section
      #   I) for more background on individuals that should be included. If no individual
      #   is an entity, pass in an empty list. However, either this parameter or
      #   `beneficial_owner_entities` must be populated.
      sig { returns(T.nilable(T::Array[Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerIndividual])) }
      def beneficial_owner_individuals
      end

      sig do
        params(_: T::Array[Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerIndividual])
          .returns(T::Array[Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerIndividual])
      end
      def beneficial_owner_individuals=(_)
      end

      # Information for business for which the account is being opened and KYB is being
      #   run.
      sig { returns(T.nilable(Lithic::Models::AccountHolderUpdateParams::BusinessEntity)) }
      def business_entity
      end

      sig do
        params(_: T.any(Lithic::Models::AccountHolderUpdateParams::BusinessEntity, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::AccountHolderUpdateParams::BusinessEntity, Lithic::Util::AnyHash))
      end
      def business_entity=(_)
      end

      # An individual with significant responsibility for managing the legal entity
      #   (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
      #   Officer, Managing Member, General Partner, President, Vice President, or
      #   Treasurer). This can be an executive, or someone who will have program-wide
      #   access to the cards that Lithic will provide. In some cases, this individual
      #   could also be a beneficial owner listed above. See
      #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
      #   (Section II) for more background.
      sig { returns(T.nilable(Lithic::Models::AccountHolderUpdateParams::ControlPerson)) }
      def control_person
      end

      sig do
        params(_: T.any(Lithic::Models::AccountHolderUpdateParams::ControlPerson, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::AccountHolderUpdateParams::ControlPerson, Lithic::Util::AnyHash))
      end
      def control_person=(_)
      end

      # A user provided id that can be used to link an account holder with an external
      #   system
      sig { returns(T.nilable(String)) }
      def external_id
      end

      sig { params(_: String).returns(String) }
      def external_id=(_)
      end

      # Short description of the company's line of business (i.e., what does the company
      #   do?).
      sig { returns(T.nilable(String)) }
      def nature_of_business
      end

      sig { params(_: String).returns(String) }
      def nature_of_business=(_)
      end

      # Company website URL.
      sig { returns(T.nilable(String)) }
      def website_url
      end

      sig { params(_: String).returns(String) }
      def website_url=(_)
      end

      # Information on the individual for whom the account is being opened and KYC is
      #   being run.
      sig { returns(T.nilable(Lithic::Models::AccountHolderUpdateParams::Individual)) }
      def individual
      end

      sig do
        params(_: T.any(Lithic::Models::AccountHolderUpdateParams::Individual, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::AccountHolderUpdateParams::Individual, Lithic::Util::AnyHash))
      end
      def individual=(_)
      end

      # Allowed for: KYC-Exempt, BYO-KYC, BYO-KYB.
      sig { returns(T.nilable(Lithic::Models::AddressUpdate)) }
      def address
      end

      sig do
        params(_: T.any(Lithic::Models::AddressUpdate, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::AddressUpdate, Lithic::Util::AnyHash))
      end
      def address=(_)
      end

      # Allowed for: KYC-Exempt, BYO-KYC. The token of the business account to which the
      #   account holder is associated.
      sig { returns(T.nilable(String)) }
      def business_account_token
      end

      sig { params(_: String).returns(String) }
      def business_account_token=(_)
      end

      # Allowed for all Account Holders. Account holder's email address. The primary
      #   purpose of this field is for cardholder identification and verification during
      #   the digital wallet tokenization process.
      sig { returns(T.nilable(String)) }
      def email
      end

      sig { params(_: String).returns(String) }
      def email=(_)
      end

      # Allowed for KYC-Exempt, BYO-KYC. Account holder's first name.
      sig { returns(T.nilable(String)) }
      def first_name
      end

      sig { params(_: String).returns(String) }
      def first_name=(_)
      end

      # Allowed for KYC-Exempt, BYO-KYC. Account holder's last name.
      sig { returns(T.nilable(String)) }
      def last_name
      end

      sig { params(_: String).returns(String) }
      def last_name=(_)
      end

      # Allowed for BYO-KYB. Legal business name of the account holder.
      sig { returns(T.nilable(String)) }
      def legal_business_name
      end

      sig { params(_: String).returns(String) }
      def legal_business_name=(_)
      end

      # Allowed for all Account Holders. Account holder's phone number, entered in E.164
      #   format. The primary purpose of this field is for cardholder identification and
      #   verification during the digital wallet tokenization process.
      sig { returns(T.nilable(String)) }
      def phone_number
      end

      sig { params(_: String).returns(String) }
      def phone_number=(_)
      end

      sig do
        params(
          beneficial_owner_entities: T::Array[Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerEntity],
          beneficial_owner_individuals: T::Array[Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerIndividual],
          business_entity: Lithic::Models::AccountHolderUpdateParams::BusinessEntity,
          control_person: Lithic::Models::AccountHolderUpdateParams::ControlPerson,
          external_id: String,
          nature_of_business: String,
          website_url: String,
          individual: Lithic::Models::AccountHolderUpdateParams::Individual,
          address: Lithic::Models::AddressUpdate,
          business_account_token: String,
          email: String,
          first_name: String,
          last_name: String,
          legal_business_name: String,
          phone_number: String,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        beneficial_owner_entities: nil,
        beneficial_owner_individuals: nil,
        business_entity: nil,
        control_person: nil,
        external_id: nil,
        nature_of_business: nil,
        website_url: nil,
        individual: nil,
        address: nil,
        business_account_token: nil,
        email: nil,
        first_name: nil,
        last_name: nil,
        legal_business_name: nil,
        phone_number: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              beneficial_owner_entities: T::Array[Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerEntity],
              beneficial_owner_individuals: T::Array[Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerIndividual],
              business_entity: Lithic::Models::AccountHolderUpdateParams::BusinessEntity,
              control_person: Lithic::Models::AccountHolderUpdateParams::ControlPerson,
              external_id: String,
              nature_of_business: String,
              website_url: String,
              individual: Lithic::Models::AccountHolderUpdateParams::Individual,
              address: Lithic::Models::AddressUpdate,
              business_account_token: String,
              email: String,
              first_name: String,
              last_name: String,
              legal_business_name: String,
              phone_number: String,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      class BeneficialOwnerEntity < Lithic::BaseModel
        # Globally unique identifier for an entity.
        sig { returns(String) }
        def entity_token
        end

        sig { params(_: String).returns(String) }
        def entity_token=(_)
        end

        # Business''s physical address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable.
        sig { returns(T.nilable(Lithic::Models::AddressUpdate)) }
        def address
        end

        sig do
          params(_: T.any(Lithic::Models::AddressUpdate, Lithic::Util::AnyHash))
            .returns(T.any(Lithic::Models::AddressUpdate, Lithic::Util::AnyHash))
        end
        def address=(_)
        end

        # Any name that the business operates under that is not its legal business name
        #   (if applicable).
        sig { returns(T.nilable(String)) }
        def dba_business_name
        end

        sig { params(_: String).returns(String) }
        def dba_business_name=(_)
        end

        # Government-issued identification number. US Federal Employer Identification
        #   Numbers (EIN) are currently supported, entered as full nine-digits, with or
        #   without hyphens.
        sig { returns(T.nilable(String)) }
        def government_id
        end

        sig { params(_: String).returns(String) }
        def government_id=(_)
        end

        # Legal (formal) business name.
        sig { returns(T.nilable(String)) }
        def legal_business_name
        end

        sig { params(_: String).returns(String) }
        def legal_business_name=(_)
        end

        # Parent company name (if applicable).
        sig { returns(T.nilable(String)) }
        def parent_company
        end

        sig { params(_: String).returns(String) }
        def parent_company=(_)
        end

        # One or more of the business's phone number(s), entered as a list in E.164
        #   format.
        sig { returns(T.nilable(T::Array[String])) }
        def phone_numbers
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def phone_numbers=(_)
        end

        sig do
          params(
            entity_token: String,
            address: Lithic::Models::AddressUpdate,
            dba_business_name: String,
            government_id: String,
            legal_business_name: String,
            parent_company: String,
            phone_numbers: T::Array[String]
          )
            .returns(T.attached_class)
        end
        def self.new(
          entity_token:,
          address: nil,
          dba_business_name: nil,
          government_id: nil,
          legal_business_name: nil,
          parent_company: nil,
          phone_numbers: nil
        )
        end

        sig do
          override
            .returns(
              {
                entity_token: String,
                address: Lithic::Models::AddressUpdate,
                dba_business_name: String,
                government_id: String,
                legal_business_name: String,
                parent_company: String,
                phone_numbers: T::Array[String]
              }
            )
        end
        def to_hash
        end
      end

      class BeneficialOwnerIndividual < Lithic::BaseModel
        # Globally unique identifier for an entity.
        sig { returns(String) }
        def entity_token
        end

        sig { params(_: String).returns(String) }
        def entity_token=(_)
        end

        # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        sig { returns(T.nilable(Lithic::Models::AddressUpdate)) }
        def address
        end

        sig do
          params(_: T.any(Lithic::Models::AddressUpdate, Lithic::Util::AnyHash))
            .returns(T.any(Lithic::Models::AddressUpdate, Lithic::Util::AnyHash))
        end
        def address=(_)
        end

        # Individual's date of birth, as an RFC 3339 date.
        sig { returns(T.nilable(String)) }
        def dob
        end

        sig { params(_: String).returns(String) }
        def dob=(_)
        end

        # Individual's email address. If utilizing Lithic for chargeback processing, this
        #   customer email address may be used to communicate dispute status and resolution.
        sig { returns(T.nilable(String)) }
        def email
        end

        sig { params(_: String).returns(String) }
        def email=(_)
        end

        # Individual's first name, as it appears on government-issued identity documents.
        sig { returns(T.nilable(String)) }
        def first_name
        end

        sig { params(_: String).returns(String) }
        def first_name=(_)
        end

        # Individual's last name, as it appears on government-issued identity documents.
        sig { returns(T.nilable(String)) }
        def last_name
        end

        sig { params(_: String).returns(String) }
        def last_name=(_)
        end

        # Individual's phone number, entered in E.164 format.
        sig { returns(T.nilable(String)) }
        def phone_number
        end

        sig { params(_: String).returns(String) }
        def phone_number=(_)
        end

        # Government-issued identification number (required for identity verification and
        #   compliance with banking regulations). Social Security Numbers (SSN) and
        #   Individual Taxpayer Identification Numbers (ITIN) are currently supported,
        #   entered as full nine-digits, with or without hyphens
        sig { returns(T.nilable(String)) }
        def government_id
        end

        sig { params(_: String).returns(String) }
        def government_id=(_)
        end

        # Individuals associated with a KYB application. Phone number is optional.
        sig do
          params(
            entity_token: String,
            address: Lithic::Models::AddressUpdate,
            dob: String,
            email: String,
            first_name: String,
            government_id: String,
            last_name: String,
            phone_number: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          entity_token:,
          address: nil,
          dob: nil,
          email: nil,
          first_name: nil,
          government_id: nil,
          last_name: nil,
          phone_number: nil
        )
        end

        sig do
          override
            .returns(
              {
                entity_token: String,
                address: Lithic::Models::AddressUpdate,
                dob: String,
                email: String,
                first_name: String,
                government_id: String,
                last_name: String,
                phone_number: String
              }
            )
        end
        def to_hash
        end
      end

      class BusinessEntity < Lithic::BaseModel
        # Globally unique identifier for an entity.
        sig { returns(String) }
        def entity_token
        end

        sig { params(_: String).returns(String) }
        def entity_token=(_)
        end

        # Business''s physical address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable.
        sig { returns(T.nilable(Lithic::Models::AddressUpdate)) }
        def address
        end

        sig do
          params(_: T.any(Lithic::Models::AddressUpdate, Lithic::Util::AnyHash))
            .returns(T.any(Lithic::Models::AddressUpdate, Lithic::Util::AnyHash))
        end
        def address=(_)
        end

        # Any name that the business operates under that is not its legal business name
        #   (if applicable).
        sig { returns(T.nilable(String)) }
        def dba_business_name
        end

        sig { params(_: String).returns(String) }
        def dba_business_name=(_)
        end

        # Government-issued identification number. US Federal Employer Identification
        #   Numbers (EIN) are currently supported, entered as full nine-digits, with or
        #   without hyphens.
        sig { returns(T.nilable(String)) }
        def government_id
        end

        sig { params(_: String).returns(String) }
        def government_id=(_)
        end

        # Legal (formal) business name.
        sig { returns(T.nilable(String)) }
        def legal_business_name
        end

        sig { params(_: String).returns(String) }
        def legal_business_name=(_)
        end

        # Parent company name (if applicable).
        sig { returns(T.nilable(String)) }
        def parent_company
        end

        sig { params(_: String).returns(String) }
        def parent_company=(_)
        end

        # One or more of the business's phone number(s), entered as a list in E.164
        #   format.
        sig { returns(T.nilable(T::Array[String])) }
        def phone_numbers
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def phone_numbers=(_)
        end

        # Information for business for which the account is being opened and KYB is being
        #   run.
        sig do
          params(
            entity_token: String,
            address: Lithic::Models::AddressUpdate,
            dba_business_name: String,
            government_id: String,
            legal_business_name: String,
            parent_company: String,
            phone_numbers: T::Array[String]
          )
            .returns(T.attached_class)
        end
        def self.new(
          entity_token:,
          address: nil,
          dba_business_name: nil,
          government_id: nil,
          legal_business_name: nil,
          parent_company: nil,
          phone_numbers: nil
        )
        end

        sig do
          override
            .returns(
              {
                entity_token: String,
                address: Lithic::Models::AddressUpdate,
                dba_business_name: String,
                government_id: String,
                legal_business_name: String,
                parent_company: String,
                phone_numbers: T::Array[String]
              }
            )
        end
        def to_hash
        end
      end

      class ControlPerson < Lithic::BaseModel
        # Globally unique identifier for an entity.
        sig { returns(String) }
        def entity_token
        end

        sig { params(_: String).returns(String) }
        def entity_token=(_)
        end

        # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        sig { returns(T.nilable(Lithic::Models::AddressUpdate)) }
        def address
        end

        sig do
          params(_: T.any(Lithic::Models::AddressUpdate, Lithic::Util::AnyHash))
            .returns(T.any(Lithic::Models::AddressUpdate, Lithic::Util::AnyHash))
        end
        def address=(_)
        end

        # Individual's date of birth, as an RFC 3339 date.
        sig { returns(T.nilable(String)) }
        def dob
        end

        sig { params(_: String).returns(String) }
        def dob=(_)
        end

        # Individual's email address. If utilizing Lithic for chargeback processing, this
        #   customer email address may be used to communicate dispute status and resolution.
        sig { returns(T.nilable(String)) }
        def email
        end

        sig { params(_: String).returns(String) }
        def email=(_)
        end

        # Individual's first name, as it appears on government-issued identity documents.
        sig { returns(T.nilable(String)) }
        def first_name
        end

        sig { params(_: String).returns(String) }
        def first_name=(_)
        end

        # Individual's last name, as it appears on government-issued identity documents.
        sig { returns(T.nilable(String)) }
        def last_name
        end

        sig { params(_: String).returns(String) }
        def last_name=(_)
        end

        # Individual's phone number, entered in E.164 format.
        sig { returns(T.nilable(String)) }
        def phone_number
        end

        sig { params(_: String).returns(String) }
        def phone_number=(_)
        end

        # Government-issued identification number (required for identity verification and
        #   compliance with banking regulations). Social Security Numbers (SSN) and
        #   Individual Taxpayer Identification Numbers (ITIN) are currently supported,
        #   entered as full nine-digits, with or without hyphens
        sig { returns(T.nilable(String)) }
        def government_id
        end

        sig { params(_: String).returns(String) }
        def government_id=(_)
        end

        # An individual with significant responsibility for managing the legal entity
        #   (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
        #   Officer, Managing Member, General Partner, President, Vice President, or
        #   Treasurer). This can be an executive, or someone who will have program-wide
        #   access to the cards that Lithic will provide. In some cases, this individual
        #   could also be a beneficial owner listed above. See
        #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
        #   (Section II) for more background.
        sig do
          params(
            entity_token: String,
            address: Lithic::Models::AddressUpdate,
            dob: String,
            email: String,
            first_name: String,
            government_id: String,
            last_name: String,
            phone_number: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          entity_token:,
          address: nil,
          dob: nil,
          email: nil,
          first_name: nil,
          government_id: nil,
          last_name: nil,
          phone_number: nil
        )
        end

        sig do
          override
            .returns(
              {
                entity_token: String,
                address: Lithic::Models::AddressUpdate,
                dob: String,
                email: String,
                first_name: String,
                government_id: String,
                last_name: String,
                phone_number: String
              }
            )
        end
        def to_hash
        end
      end

      class Individual < Lithic::BaseModel
        # Globally unique identifier for an entity.
        sig { returns(String) }
        def entity_token
        end

        sig { params(_: String).returns(String) }
        def entity_token=(_)
        end

        # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        sig { returns(T.nilable(Lithic::Models::AddressUpdate)) }
        def address
        end

        sig do
          params(_: T.any(Lithic::Models::AddressUpdate, Lithic::Util::AnyHash))
            .returns(T.any(Lithic::Models::AddressUpdate, Lithic::Util::AnyHash))
        end
        def address=(_)
        end

        # Individual's date of birth, as an RFC 3339 date.
        sig { returns(T.nilable(String)) }
        def dob
        end

        sig { params(_: String).returns(String) }
        def dob=(_)
        end

        # Individual's email address. If utilizing Lithic for chargeback processing, this
        #   customer email address may be used to communicate dispute status and resolution.
        sig { returns(T.nilable(String)) }
        def email
        end

        sig { params(_: String).returns(String) }
        def email=(_)
        end

        # Individual's first name, as it appears on government-issued identity documents.
        sig { returns(T.nilable(String)) }
        def first_name
        end

        sig { params(_: String).returns(String) }
        def first_name=(_)
        end

        # Individual's last name, as it appears on government-issued identity documents.
        sig { returns(T.nilable(String)) }
        def last_name
        end

        sig { params(_: String).returns(String) }
        def last_name=(_)
        end

        # Individual's phone number, entered in E.164 format.
        sig { returns(T.nilable(String)) }
        def phone_number
        end

        sig { params(_: String).returns(String) }
        def phone_number=(_)
        end

        # Government-issued identification number (required for identity verification and
        #   compliance with banking regulations). Social Security Numbers (SSN) and
        #   Individual Taxpayer Identification Numbers (ITIN) are currently supported,
        #   entered as full nine-digits, with or without hyphens
        sig { returns(T.nilable(String)) }
        def government_id
        end

        sig { params(_: String).returns(String) }
        def government_id=(_)
        end

        # Information on the individual for whom the account is being opened and KYC is
        #   being run.
        sig do
          params(
            entity_token: String,
            address: Lithic::Models::AddressUpdate,
            dob: String,
            email: String,
            first_name: String,
            government_id: String,
            last_name: String,
            phone_number: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          entity_token:,
          address: nil,
          dob: nil,
          email: nil,
          first_name: nil,
          government_id: nil,
          last_name: nil,
          phone_number: nil
        )
        end

        sig do
          override
            .returns(
              {
                entity_token: String,
                address: Lithic::Models::AddressUpdate,
                dob: String,
                email: String,
                first_name: String,
                government_id: String,
                last_name: String,
                phone_number: String
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
