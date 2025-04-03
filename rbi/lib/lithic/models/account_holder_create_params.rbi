# typed: strong

module Lithic
  module Models
    class AccountHolderCreateParams < Lithic::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # List of all entities with >25% ownership in the company. If no entity or
      #   individual owns >25% of the company, and the largest shareholder is an entity,
      #   please identify them in this field. See
      #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
      #   (Section I) for more background. If no business owner is an entity, pass in an
      #   empty list. However, either this parameter or `beneficial_owner_individuals`
      #   must be populated. on entities that should be included.
      sig { returns(T::Array[Lithic::Models::AccountHolderCreateParams::BeneficialOwnerEntity]) }
      attr_accessor :beneficial_owner_entities

      # List of all direct and indirect individuals with >25% ownership in the company.
      #   If no entity or individual owns >25% of the company, and the largest shareholder
      #   is an individual, please identify them in this field. See
      #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
      #   (Section I) for more background on individuals that should be included. If no
      #   individual is an entity, pass in an empty list. However, either this parameter
      #   or `beneficial_owner_entities` must be populated.
      sig { returns(T::Array[Lithic::Models::AccountHolderCreateParams::BeneficialOwnerIndividual]) }
      attr_accessor :beneficial_owner_individuals

      # Information for business for which the account is being opened and KYB is being
      #   run.
      sig { returns(Lithic::Models::AccountHolderCreateParams::BusinessEntity) }
      attr_reader :business_entity

      sig do
        params(
          business_entity: T.any(Lithic::Models::AccountHolderCreateParams::BusinessEntity, Lithic::Internal::Util::AnyHash)
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
      sig { returns(Lithic::Models::AccountHolderCreateParams::ControlPerson) }
      attr_reader :control_person

      sig do
        params(
          control_person: T.any(Lithic::Models::AccountHolderCreateParams::ControlPerson, Lithic::Internal::Util::AnyHash)
        )
          .void
      end
      attr_writer :control_person

      # Short description of the company's line of business (i.e., what does the company
      #   do?).
      sig { returns(String) }
      attr_accessor :nature_of_business

      # An RFC 3339 timestamp indicating when the account holder accepted the applicable
      #   legal agreements (e.g., cardholder terms) as agreed upon during API customer's
      #   implementation with Lithic.
      sig { returns(String) }
      attr_accessor :tos_timestamp

      # Specifies the workflow type. This must be 'KYC_EXEMPT'
      sig { returns(Lithic::Models::AccountHolderCreateParams::Workflow::OrSymbol) }
      attr_accessor :workflow

      # A user provided id that can be used to link an account holder with an external
      #   system
      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      # An RFC 3339 timestamp indicating when precomputed KYC was completed on the
      #   business with a pass result.
      #
      #   This field is required only if workflow type is `KYB_BYO`.
      sig { returns(T.nilable(String)) }
      attr_reader :kyb_passed_timestamp

      sig { params(kyb_passed_timestamp: String).void }
      attr_writer :kyb_passed_timestamp

      # Company website URL.
      sig { returns(T.nilable(String)) }
      attr_reader :website_url

      sig { params(website_url: String).void }
      attr_writer :website_url

      # Information on individual for whom the account is being opened and KYC is being
      #   run.
      sig { returns(Lithic::Models::AccountHolderCreateParams::Individual) }
      attr_reader :individual

      sig do
        params(
          individual: T.any(Lithic::Models::AccountHolderCreateParams::Individual, Lithic::Internal::Util::AnyHash)
        )
          .void
      end
      attr_writer :individual

      # An RFC 3339 timestamp indicating when precomputed KYC was completed on the
      #   individual with a pass result.
      #
      #   This field is required only if workflow type is `KYC_BYO`.
      sig { returns(T.nilable(String)) }
      attr_reader :kyc_passed_timestamp

      sig { params(kyc_passed_timestamp: String).void }
      attr_writer :kyc_passed_timestamp

      # KYC Exempt user's current address - PO boxes, UPS drops, and FedEx drops are not
      #   acceptable; APO/FPO are acceptable.
      sig { returns(Lithic::Models::Address) }
      attr_reader :address

      sig { params(address: T.any(Lithic::Models::Address, Lithic::Internal::Util::AnyHash)).void }
      attr_writer :address

      # The KYC Exempt user's email
      sig { returns(String) }
      attr_accessor :email

      # The KYC Exempt user's first name
      sig { returns(String) }
      attr_accessor :first_name

      # Specifies the type of KYC Exempt user
      sig { returns(Lithic::Models::AccountHolderCreateParams::KYCExemptionType::OrSymbol) }
      attr_accessor :kyc_exemption_type

      # The KYC Exempt user's last name
      sig { returns(String) }
      attr_accessor :last_name

      # The KYC Exempt user's phone number, entered in E.164 format.
      sig { returns(String) }
      attr_accessor :phone_number

      # Only applicable for customers using the KYC-Exempt workflow to enroll authorized
      #   users of businesses. Pass the account_token of the enrolled business associated
      #   with the AUTHORIZED_USER in this field.
      sig { returns(T.nilable(String)) }
      attr_reader :business_account_token

      sig { params(business_account_token: String).void }
      attr_writer :business_account_token

      sig do
        params(
          beneficial_owner_entities: T::Array[T.any(Lithic::Models::AccountHolderCreateParams::BeneficialOwnerEntity, Lithic::Internal::Util::AnyHash)],
          beneficial_owner_individuals: T::Array[
          T.any(
            Lithic::Models::AccountHolderCreateParams::BeneficialOwnerIndividual,
            Lithic::Internal::Util::AnyHash
          )
          ],
          business_entity: T.any(Lithic::Models::AccountHolderCreateParams::BusinessEntity, Lithic::Internal::Util::AnyHash),
          control_person: T.any(Lithic::Models::AccountHolderCreateParams::ControlPerson, Lithic::Internal::Util::AnyHash),
          nature_of_business: String,
          tos_timestamp: String,
          workflow: Lithic::Models::AccountHolderCreateParams::Workflow::OrSymbol,
          individual: T.any(Lithic::Models::AccountHolderCreateParams::Individual, Lithic::Internal::Util::AnyHash),
          address: T.any(Lithic::Models::Address, Lithic::Internal::Util::AnyHash),
          email: String,
          first_name: String,
          kyc_exemption_type: Lithic::Models::AccountHolderCreateParams::KYCExemptionType::OrSymbol,
          last_name: String,
          phone_number: String,
          external_id: String,
          kyb_passed_timestamp: String,
          website_url: String,
          kyc_passed_timestamp: String,
          business_account_token: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        beneficial_owner_entities:,
        beneficial_owner_individuals:,
        business_entity:,
        control_person:,
        nature_of_business:,
        tos_timestamp:,
        workflow:,
        individual:,
        address:,
        email:,
        first_name:,
        kyc_exemption_type:,
        last_name:,
        phone_number:,
        external_id: nil,
        kyb_passed_timestamp: nil,
        website_url: nil,
        kyc_passed_timestamp: nil,
        business_account_token: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              beneficial_owner_entities: T::Array[Lithic::Models::AccountHolderCreateParams::BeneficialOwnerEntity],
              beneficial_owner_individuals: T::Array[Lithic::Models::AccountHolderCreateParams::BeneficialOwnerIndividual],
              business_entity: Lithic::Models::AccountHolderCreateParams::BusinessEntity,
              control_person: Lithic::Models::AccountHolderCreateParams::ControlPerson,
              nature_of_business: String,
              tos_timestamp: String,
              workflow: Lithic::Models::AccountHolderCreateParams::Workflow::OrSymbol,
              external_id: String,
              kyb_passed_timestamp: String,
              website_url: String,
              individual: Lithic::Models::AccountHolderCreateParams::Individual,
              kyc_passed_timestamp: String,
              address: Lithic::Models::Address,
              email: String,
              first_name: String,
              kyc_exemption_type: Lithic::Models::AccountHolderCreateParams::KYCExemptionType::OrSymbol,
              last_name: String,
              phone_number: String,
              business_account_token: String,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      class BeneficialOwnerEntity < Lithic::BaseModel
        # Business's physical address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable.
        sig { returns(Lithic::Models::Address) }
        attr_reader :address

        sig { params(address: T.any(Lithic::Models::Address, Lithic::Internal::Util::AnyHash)).void }
        attr_writer :address

        # Government-issued identification number. US Federal Employer Identification
        #   Numbers (EIN) are currently supported, entered as full nine-digits, with or
        #   without hyphens.
        sig { returns(String) }
        attr_accessor :government_id

        # Legal (formal) business name.
        sig { returns(String) }
        attr_accessor :legal_business_name

        # One or more of the business's phone number(s), entered as a list in E.164
        #   format.
        sig { returns(T::Array[String]) }
        attr_accessor :phone_numbers

        # Any name that the business operates under that is not its legal business name
        #   (if applicable).
        sig { returns(T.nilable(String)) }
        attr_reader :dba_business_name

        sig { params(dba_business_name: String).void }
        attr_writer :dba_business_name

        # Parent company name (if applicable).
        sig { returns(T.nilable(String)) }
        attr_reader :parent_company

        sig { params(parent_company: String).void }
        attr_writer :parent_company

        sig do
          params(
            address: T.any(Lithic::Models::Address, Lithic::Internal::Util::AnyHash),
            government_id: String,
            legal_business_name: String,
            phone_numbers: T::Array[String],
            dba_business_name: String,
            parent_company: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          address:,
          government_id:,
          legal_business_name:,
          phone_numbers:,
          dba_business_name: nil,
          parent_company: nil
        )
        end

        sig do
          override
            .returns(
              {
                address: Lithic::Models::Address,
                government_id: String,
                legal_business_name: String,
                phone_numbers: T::Array[String],
                dba_business_name: String,
                parent_company: String
              }
            )
        end
        def to_hash
        end
      end

      class BeneficialOwnerIndividual < Lithic::BaseModel
        # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        sig { returns(Lithic::Models::Address) }
        attr_reader :address

        sig { params(address: T.any(Lithic::Models::Address, Lithic::Internal::Util::AnyHash)).void }
        attr_writer :address

        # Individual's date of birth, as an RFC 3339 date.
        sig { returns(String) }
        attr_accessor :dob

        # Individual's email address. If utilizing Lithic for chargeback processing, this
        #   customer email address may be used to communicate dispute status and resolution.
        sig { returns(String) }
        attr_accessor :email

        # Individual's first name, as it appears on government-issued identity documents.
        sig { returns(String) }
        attr_accessor :first_name

        # Government-issued identification number (required for identity verification and
        #   compliance with banking regulations). Social Security Numbers (SSN) and
        #   Individual Taxpayer Identification Numbers (ITIN) are currently supported,
        #   entered as full nine-digits, with or without hyphens
        sig { returns(String) }
        attr_accessor :government_id

        # Individual's last name, as it appears on government-issued identity documents.
        sig { returns(String) }
        attr_accessor :last_name

        # Individual's phone number, entered in E.164 format.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # Individuals associated with a KYB application. Phone number is optional.
        sig do
          params(
            address: T.any(Lithic::Models::Address, Lithic::Internal::Util::AnyHash),
            dob: String,
            email: String,
            first_name: String,
            government_id: String,
            last_name: String,
            phone_number: String
          )
            .returns(T.attached_class)
        end
        def self.new(address:, dob:, email:, first_name:, government_id:, last_name:, phone_number: nil)
        end

        sig do
          override
            .returns(
              {
                address: Lithic::Models::Address,
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
        # Business's physical address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable.
        sig { returns(Lithic::Models::Address) }
        attr_reader :address

        sig { params(address: T.any(Lithic::Models::Address, Lithic::Internal::Util::AnyHash)).void }
        attr_writer :address

        # Government-issued identification number. US Federal Employer Identification
        #   Numbers (EIN) are currently supported, entered as full nine-digits, with or
        #   without hyphens.
        sig { returns(String) }
        attr_accessor :government_id

        # Legal (formal) business name.
        sig { returns(String) }
        attr_accessor :legal_business_name

        # One or more of the business's phone number(s), entered as a list in E.164
        #   format.
        sig { returns(T::Array[String]) }
        attr_accessor :phone_numbers

        # Any name that the business operates under that is not its legal business name
        #   (if applicable).
        sig { returns(T.nilable(String)) }
        attr_reader :dba_business_name

        sig { params(dba_business_name: String).void }
        attr_writer :dba_business_name

        # Parent company name (if applicable).
        sig { returns(T.nilable(String)) }
        attr_reader :parent_company

        sig { params(parent_company: String).void }
        attr_writer :parent_company

        # Information for business for which the account is being opened and KYB is being
        #   run.
        sig do
          params(
            address: T.any(Lithic::Models::Address, Lithic::Internal::Util::AnyHash),
            government_id: String,
            legal_business_name: String,
            phone_numbers: T::Array[String],
            dba_business_name: String,
            parent_company: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          address:,
          government_id:,
          legal_business_name:,
          phone_numbers:,
          dba_business_name: nil,
          parent_company: nil
        )
        end

        sig do
          override
            .returns(
              {
                address: Lithic::Models::Address,
                government_id: String,
                legal_business_name: String,
                phone_numbers: T::Array[String],
                dba_business_name: String,
                parent_company: String
              }
            )
        end
        def to_hash
        end
      end

      class ControlPerson < Lithic::BaseModel
        # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        sig { returns(Lithic::Models::Address) }
        attr_reader :address

        sig { params(address: T.any(Lithic::Models::Address, Lithic::Internal::Util::AnyHash)).void }
        attr_writer :address

        # Individual's date of birth, as an RFC 3339 date.
        sig { returns(String) }
        attr_accessor :dob

        # Individual's email address. If utilizing Lithic for chargeback processing, this
        #   customer email address may be used to communicate dispute status and resolution.
        sig { returns(String) }
        attr_accessor :email

        # Individual's first name, as it appears on government-issued identity documents.
        sig { returns(String) }
        attr_accessor :first_name

        # Government-issued identification number (required for identity verification and
        #   compliance with banking regulations). Social Security Numbers (SSN) and
        #   Individual Taxpayer Identification Numbers (ITIN) are currently supported,
        #   entered as full nine-digits, with or without hyphens
        sig { returns(String) }
        attr_accessor :government_id

        # Individual's last name, as it appears on government-issued identity documents.
        sig { returns(String) }
        attr_accessor :last_name

        # Individual's phone number, entered in E.164 format.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

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
            address: T.any(Lithic::Models::Address, Lithic::Internal::Util::AnyHash),
            dob: String,
            email: String,
            first_name: String,
            government_id: String,
            last_name: String,
            phone_number: String
          )
            .returns(T.attached_class)
        end
        def self.new(address:, dob:, email:, first_name:, government_id:, last_name:, phone_number: nil)
        end

        sig do
          override
            .returns(
              {
                address: Lithic::Models::Address,
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

      # Specifies the workflow type. This must be 'KYC_EXEMPT'
      module Workflow
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AccountHolderCreateParams::Workflow) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::AccountHolderCreateParams::Workflow::TaggedSymbol) }

        KYC_EXEMPT = T.let(:KYC_EXEMPT, Lithic::Models::AccountHolderCreateParams::Workflow::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::AccountHolderCreateParams::Workflow::TaggedSymbol]) }
        def self.values
        end
      end

      class Individual < Lithic::BaseModel
        # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        sig { returns(Lithic::Models::Address) }
        attr_reader :address

        sig { params(address: T.any(Lithic::Models::Address, Lithic::Internal::Util::AnyHash)).void }
        attr_writer :address

        # Individual's date of birth, as an RFC 3339 date.
        sig { returns(String) }
        attr_accessor :dob

        # Individual's email address. If utilizing Lithic for chargeback processing, this
        #   customer email address may be used to communicate dispute status and resolution.
        sig { returns(String) }
        attr_accessor :email

        # Individual's first name, as it appears on government-issued identity documents.
        sig { returns(String) }
        attr_accessor :first_name

        # Government-issued identification number (required for identity verification and
        #   compliance with banking regulations). Social Security Numbers (SSN) and
        #   Individual Taxpayer Identification Numbers (ITIN) are currently supported,
        #   entered as full nine-digits, with or without hyphens
        sig { returns(String) }
        attr_accessor :government_id

        # Individual's last name, as it appears on government-issued identity documents.
        sig { returns(String) }
        attr_accessor :last_name

        # Individual's phone number, entered in E.164 format.
        sig { returns(String) }
        attr_accessor :phone_number

        # Information on individual for whom the account is being opened and KYC is being
        #   run.
        sig do
          params(
            address: T.any(Lithic::Models::Address, Lithic::Internal::Util::AnyHash),
            dob: String,
            email: String,
            first_name: String,
            government_id: String,
            last_name: String,
            phone_number: String
          )
            .returns(T.attached_class)
        end
        def self.new(address:, dob:, email:, first_name:, government_id:, last_name:, phone_number:)
        end

        sig do
          override
            .returns(
              {
                address: Lithic::Models::Address,
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

      # Specifies the type of KYC Exempt user
      module KYCExemptionType
        extend Lithic::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::AccountHolderCreateParams::KYCExemptionType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::AccountHolderCreateParams::KYCExemptionType::TaggedSymbol) }

        AUTHORIZED_USER =
          T.let(:AUTHORIZED_USER, Lithic::Models::AccountHolderCreateParams::KYCExemptionType::TaggedSymbol)
        PREPAID_CARD_USER =
          T.let(:PREPAID_CARD_USER, Lithic::Models::AccountHolderCreateParams::KYCExemptionType::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::AccountHolderCreateParams::KYCExemptionType::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
