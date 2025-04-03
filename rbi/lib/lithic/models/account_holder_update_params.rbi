# typed: strong

module Lithic
  module Models
    class AccountHolderUpdateParams < Lithic::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # List of all entities with >25% ownership in the company. If no entity or
      #   individual owns >25% of the company, and the largest shareholder is an entity,
      #   please identify them in this field. See
      #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)(Section
      #   I) for more background. If no business owner is an entity, pass in an empty
      #   list. However, either this parameter or `beneficial_owner_individuals` must be
      #   populated. on entities that should be included.
      sig { returns(T.nilable(T::Array[Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerEntity])) }
      attr_reader :beneficial_owner_entities

      sig do
        params(
          beneficial_owner_entities: T::Array[T.any(Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerEntity, Lithic::Internal::Util::AnyHash)]
        )
          .void
      end
      attr_writer :beneficial_owner_entities

      # List of all individuals with >25% ownership in the company. If no entity or
      #   individual owns >25% of the company, and the largest shareholder is an
      #   individual, please identify them in this field. See
      #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)(Section
      #   I) for more background on individuals that should be included. If no individual
      #   is an entity, pass in an empty list. However, either this parameter or
      #   `beneficial_owner_entities` must be populated.
      sig { returns(T.nilable(T::Array[Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerIndividual])) }
      attr_reader :beneficial_owner_individuals

      sig do
        params(
          beneficial_owner_individuals: T::Array[
          T.any(
            Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerIndividual,
            Lithic::Internal::Util::AnyHash
          )
          ]
        )
          .void
      end
      attr_writer :beneficial_owner_individuals

      # Information for business for which the account is being opened and KYB is being
      #   run.
      sig { returns(T.nilable(Lithic::Models::AccountHolderUpdateParams::BusinessEntity)) }
      attr_reader :business_entity

      sig do
        params(
          business_entity: T.any(Lithic::Models::AccountHolderUpdateParams::BusinessEntity, Lithic::Internal::Util::AnyHash)
        )
          .void
      end
      attr_writer :business_entity

      # An individual with significant responsibility for managing the legal entity
      #   (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
      #   Officer, Managing Member, General Partner, President, Vice President, or
      #   Treasurer). This can be an executive, or someone who will have program-wide
      #   access to the cards that Lithic will provide. In some cases, this individual
      #   could also be a beneficial owner listed above. See
      #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
      #   (Section II) for more background.
      sig { returns(T.nilable(Lithic::Models::AccountHolderUpdateParams::ControlPerson)) }
      attr_reader :control_person

      sig do
        params(
          control_person: T.any(Lithic::Models::AccountHolderUpdateParams::ControlPerson, Lithic::Internal::Util::AnyHash)
        )
          .void
      end
      attr_writer :control_person

      # A user provided id that can be used to link an account holder with an external
      #   system
      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      # Short description of the company's line of business (i.e., what does the company
      #   do?).
      sig { returns(T.nilable(String)) }
      attr_reader :nature_of_business

      sig { params(nature_of_business: String).void }
      attr_writer :nature_of_business

      # Company website URL.
      sig { returns(T.nilable(String)) }
      attr_reader :website_url

      sig { params(website_url: String).void }
      attr_writer :website_url

      # Information on the individual for whom the account is being opened and KYC is
      #   being run.
      sig { returns(T.nilable(Lithic::Models::AccountHolderUpdateParams::Individual)) }
      attr_reader :individual

      sig do
        params(
          individual: T.any(Lithic::Models::AccountHolderUpdateParams::Individual, Lithic::Internal::Util::AnyHash)
        )
          .void
      end
      attr_writer :individual

      # Allowed for: KYC-Exempt, BYO-KYC, BYO-KYB.
      sig { returns(T.nilable(Lithic::Models::AddressUpdate)) }
      attr_reader :address

      sig { params(address: T.any(Lithic::Models::AddressUpdate, Lithic::Internal::Util::AnyHash)).void }
      attr_writer :address

      # Allowed for: KYC-Exempt, BYO-KYC. The token of the business account to which the
      #   account holder is associated.
      sig { returns(T.nilable(String)) }
      attr_reader :business_account_token

      sig { params(business_account_token: String).void }
      attr_writer :business_account_token

      # Allowed for all Account Holders. Account holder's email address. The primary
      #   purpose of this field is for cardholder identification and verification during
      #   the digital wallet tokenization process.
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # Allowed for KYC-Exempt, BYO-KYC. Account holder's first name.
      sig { returns(T.nilable(String)) }
      attr_reader :first_name

      sig { params(first_name: String).void }
      attr_writer :first_name

      # Allowed for KYC-Exempt, BYO-KYC. Account holder's last name.
      sig { returns(T.nilable(String)) }
      attr_reader :last_name

      sig { params(last_name: String).void }
      attr_writer :last_name

      # Allowed for BYO-KYB. Legal business name of the account holder.
      sig { returns(T.nilable(String)) }
      attr_reader :legal_business_name

      sig { params(legal_business_name: String).void }
      attr_writer :legal_business_name

      # Allowed for all Account Holders. Account holder's phone number, entered in E.164
      #   format. The primary purpose of this field is for cardholder identification and
      #   verification during the digital wallet tokenization process.
      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { params(phone_number: String).void }
      attr_writer :phone_number

      sig do
        params(
          beneficial_owner_entities: T::Array[T.any(Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerEntity, Lithic::Internal::Util::AnyHash)],
          beneficial_owner_individuals: T::Array[
          T.any(
            Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerIndividual,
            Lithic::Internal::Util::AnyHash
          )
          ],
          business_entity: T.any(Lithic::Models::AccountHolderUpdateParams::BusinessEntity, Lithic::Internal::Util::AnyHash),
          control_person: T.any(Lithic::Models::AccountHolderUpdateParams::ControlPerson, Lithic::Internal::Util::AnyHash),
          external_id: String,
          nature_of_business: String,
          website_url: String,
          individual: T.any(Lithic::Models::AccountHolderUpdateParams::Individual, Lithic::Internal::Util::AnyHash),
          address: T.any(Lithic::Models::AddressUpdate, Lithic::Internal::Util::AnyHash),
          business_account_token: String,
          email: String,
          first_name: String,
          last_name: String,
          legal_business_name: String,
          phone_number: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::Util::AnyHash)
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
        attr_accessor :entity_token

        # Business''s physical address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable.
        sig { returns(T.nilable(Lithic::Models::AddressUpdate)) }
        attr_reader :address

        sig { params(address: T.any(Lithic::Models::AddressUpdate, Lithic::Internal::Util::AnyHash)).void }
        attr_writer :address

        # Any name that the business operates under that is not its legal business name
        #   (if applicable).
        sig { returns(T.nilable(String)) }
        attr_reader :dba_business_name

        sig { params(dba_business_name: String).void }
        attr_writer :dba_business_name

        # Government-issued identification number. US Federal Employer Identification
        #   Numbers (EIN) are currently supported, entered as full nine-digits, with or
        #   without hyphens.
        sig { returns(T.nilable(String)) }
        attr_reader :government_id

        sig { params(government_id: String).void }
        attr_writer :government_id

        # Legal (formal) business name.
        sig { returns(T.nilable(String)) }
        attr_reader :legal_business_name

        sig { params(legal_business_name: String).void }
        attr_writer :legal_business_name

        # Parent company name (if applicable).
        sig { returns(T.nilable(String)) }
        attr_reader :parent_company

        sig { params(parent_company: String).void }
        attr_writer :parent_company

        # One or more of the business's phone number(s), entered as a list in E.164
        #   format.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :phone_numbers

        sig { params(phone_numbers: T::Array[String]).void }
        attr_writer :phone_numbers

        sig do
          params(
            entity_token: String,
            address: T.any(Lithic::Models::AddressUpdate, Lithic::Internal::Util::AnyHash),
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
        attr_accessor :entity_token

        # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        sig { returns(T.nilable(Lithic::Models::AddressUpdate)) }
        attr_reader :address

        sig { params(address: T.any(Lithic::Models::AddressUpdate, Lithic::Internal::Util::AnyHash)).void }
        attr_writer :address

        # Individual's date of birth, as an RFC 3339 date.
        sig { returns(T.nilable(String)) }
        attr_reader :dob

        sig { params(dob: String).void }
        attr_writer :dob

        # Individual's email address. If utilizing Lithic for chargeback processing, this
        #   customer email address may be used to communicate dispute status and resolution.
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # Individual's first name, as it appears on government-issued identity documents.
        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { params(first_name: String).void }
        attr_writer :first_name

        # Individual's last name, as it appears on government-issued identity documents.
        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { params(last_name: String).void }
        attr_writer :last_name

        # Individual's phone number, entered in E.164 format.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # Government-issued identification number (required for identity verification and
        #   compliance with banking regulations). Social Security Numbers (SSN) and
        #   Individual Taxpayer Identification Numbers (ITIN) are currently supported,
        #   entered as full nine-digits, with or without hyphens
        sig { returns(T.nilable(String)) }
        attr_reader :government_id

        sig { params(government_id: String).void }
        attr_writer :government_id

        # Individuals associated with a KYB application. Phone number is optional.
        sig do
          params(
            entity_token: String,
            address: T.any(Lithic::Models::AddressUpdate, Lithic::Internal::Util::AnyHash),
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
        attr_accessor :entity_token

        # Business''s physical address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable.
        sig { returns(T.nilable(Lithic::Models::AddressUpdate)) }
        attr_reader :address

        sig { params(address: T.any(Lithic::Models::AddressUpdate, Lithic::Internal::Util::AnyHash)).void }
        attr_writer :address

        # Any name that the business operates under that is not its legal business name
        #   (if applicable).
        sig { returns(T.nilable(String)) }
        attr_reader :dba_business_name

        sig { params(dba_business_name: String).void }
        attr_writer :dba_business_name

        # Government-issued identification number. US Federal Employer Identification
        #   Numbers (EIN) are currently supported, entered as full nine-digits, with or
        #   without hyphens.
        sig { returns(T.nilable(String)) }
        attr_reader :government_id

        sig { params(government_id: String).void }
        attr_writer :government_id

        # Legal (formal) business name.
        sig { returns(T.nilable(String)) }
        attr_reader :legal_business_name

        sig { params(legal_business_name: String).void }
        attr_writer :legal_business_name

        # Parent company name (if applicable).
        sig { returns(T.nilable(String)) }
        attr_reader :parent_company

        sig { params(parent_company: String).void }
        attr_writer :parent_company

        # One or more of the business's phone number(s), entered as a list in E.164
        #   format.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :phone_numbers

        sig { params(phone_numbers: T::Array[String]).void }
        attr_writer :phone_numbers

        # Information for business for which the account is being opened and KYB is being
        #   run.
        sig do
          params(
            entity_token: String,
            address: T.any(Lithic::Models::AddressUpdate, Lithic::Internal::Util::AnyHash),
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
        attr_accessor :entity_token

        # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        sig { returns(T.nilable(Lithic::Models::AddressUpdate)) }
        attr_reader :address

        sig { params(address: T.any(Lithic::Models::AddressUpdate, Lithic::Internal::Util::AnyHash)).void }
        attr_writer :address

        # Individual's date of birth, as an RFC 3339 date.
        sig { returns(T.nilable(String)) }
        attr_reader :dob

        sig { params(dob: String).void }
        attr_writer :dob

        # Individual's email address. If utilizing Lithic for chargeback processing, this
        #   customer email address may be used to communicate dispute status and resolution.
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # Individual's first name, as it appears on government-issued identity documents.
        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { params(first_name: String).void }
        attr_writer :first_name

        # Individual's last name, as it appears on government-issued identity documents.
        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { params(last_name: String).void }
        attr_writer :last_name

        # Individual's phone number, entered in E.164 format.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # Government-issued identification number (required for identity verification and
        #   compliance with banking regulations). Social Security Numbers (SSN) and
        #   Individual Taxpayer Identification Numbers (ITIN) are currently supported,
        #   entered as full nine-digits, with or without hyphens
        sig { returns(T.nilable(String)) }
        attr_reader :government_id

        sig { params(government_id: String).void }
        attr_writer :government_id

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
            address: T.any(Lithic::Models::AddressUpdate, Lithic::Internal::Util::AnyHash),
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
        attr_accessor :entity_token

        # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        sig { returns(T.nilable(Lithic::Models::AddressUpdate)) }
        attr_reader :address

        sig { params(address: T.any(Lithic::Models::AddressUpdate, Lithic::Internal::Util::AnyHash)).void }
        attr_writer :address

        # Individual's date of birth, as an RFC 3339 date.
        sig { returns(T.nilable(String)) }
        attr_reader :dob

        sig { params(dob: String).void }
        attr_writer :dob

        # Individual's email address. If utilizing Lithic for chargeback processing, this
        #   customer email address may be used to communicate dispute status and resolution.
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # Individual's first name, as it appears on government-issued identity documents.
        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { params(first_name: String).void }
        attr_writer :first_name

        # Individual's last name, as it appears on government-issued identity documents.
        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { params(last_name: String).void }
        attr_writer :last_name

        # Individual's phone number, entered in E.164 format.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # Government-issued identification number (required for identity verification and
        #   compliance with banking regulations). Social Security Numbers (SSN) and
        #   Individual Taxpayer Identification Numbers (ITIN) are currently supported,
        #   entered as full nine-digits, with or without hyphens
        sig { returns(T.nilable(String)) }
        attr_reader :government_id

        sig { params(government_id: String).void }
        attr_writer :government_id

        # Information on the individual for whom the account is being opened and KYC is
        #   being run.
        sig do
          params(
            entity_token: String,
            address: T.any(Lithic::Models::AddressUpdate, Lithic::Internal::Util::AnyHash),
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
