# typed: strong

module Lithic
  module Models
    class KYB < Lithic::BaseModel
      # List of all entities with >25% ownership in the company. If no entity or
      #   individual owns >25% of the company, and the largest shareholder is an entity,
      #   please identify them in this field. See
      #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
      #   (Section I) for more background. If no business owner is an entity, pass in an
      #   empty list. However, either this parameter or `beneficial_owner_individuals`
      #   must be populated. on entities that should be included.
      sig { returns(T::Array[Lithic::Models::KYB::BeneficialOwnerEntity]) }
      def beneficial_owner_entities
      end

      sig do
        params(_: T::Array[Lithic::Models::KYB::BeneficialOwnerEntity])
          .returns(T::Array[Lithic::Models::KYB::BeneficialOwnerEntity])
      end
      def beneficial_owner_entities=(_)
      end

      # List of all direct and indirect individuals with >25% ownership in the company.
      #   If no entity or individual owns >25% of the company, and the largest shareholder
      #   is an individual, please identify them in this field. See
      #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
      #   (Section I) for more background on individuals that should be included. If no
      #   individual is an entity, pass in an empty list. However, either this parameter
      #   or `beneficial_owner_entities` must be populated.
      sig { returns(T::Array[Lithic::Models::KYB::BeneficialOwnerIndividual]) }
      def beneficial_owner_individuals
      end

      sig do
        params(_: T::Array[Lithic::Models::KYB::BeneficialOwnerIndividual])
          .returns(T::Array[Lithic::Models::KYB::BeneficialOwnerIndividual])
      end
      def beneficial_owner_individuals=(_)
      end

      # Information for business for which the account is being opened and KYB is being
      #   run.
      sig { returns(Lithic::Models::KYB::BusinessEntity) }
      def business_entity
      end

      sig do
        params(_: T.any(Lithic::Models::KYB::BusinessEntity, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::KYB::BusinessEntity, Lithic::Util::AnyHash))
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
      sig { returns(Lithic::Models::KYB::ControlPerson) }
      def control_person
      end

      sig do
        params(_: T.any(Lithic::Models::KYB::ControlPerson, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::KYB::ControlPerson, Lithic::Util::AnyHash))
      end
      def control_person=(_)
      end

      # Short description of the company's line of business (i.e., what does the company
      #   do?).
      sig { returns(String) }
      def nature_of_business
      end

      sig { params(_: String).returns(String) }
      def nature_of_business=(_)
      end

      # An RFC 3339 timestamp indicating when the account holder accepted the applicable
      #   legal agreements (e.g., cardholder terms) as agreed upon during API customer's
      #   implementation with Lithic.
      sig { returns(String) }
      def tos_timestamp
      end

      sig { params(_: String).returns(String) }
      def tos_timestamp=(_)
      end

      # Specifies the type of KYB workflow to run.
      sig { returns(Lithic::Models::KYB::Workflow::OrSymbol) }
      def workflow
      end

      sig { params(_: Lithic::Models::KYB::Workflow::OrSymbol).returns(Lithic::Models::KYB::Workflow::OrSymbol) }
      def workflow=(_)
      end

      # A user provided id that can be used to link an account holder with an external
      #   system
      sig { returns(T.nilable(String)) }
      def external_id
      end

      sig { params(_: String).returns(String) }
      def external_id=(_)
      end

      # An RFC 3339 timestamp indicating when precomputed KYC was completed on the
      #   business with a pass result.
      #
      #   This field is required only if workflow type is `KYB_BYO`.
      sig { returns(T.nilable(String)) }
      def kyb_passed_timestamp
      end

      sig { params(_: String).returns(String) }
      def kyb_passed_timestamp=(_)
      end

      # Company website URL.
      sig { returns(T.nilable(String)) }
      def website_url
      end

      sig { params(_: String).returns(String) }
      def website_url=(_)
      end

      sig do
        params(
          beneficial_owner_entities: T::Array[Lithic::Models::KYB::BeneficialOwnerEntity],
          beneficial_owner_individuals: T::Array[Lithic::Models::KYB::BeneficialOwnerIndividual],
          business_entity: T.any(Lithic::Models::KYB::BusinessEntity, Lithic::Util::AnyHash),
          control_person: T.any(Lithic::Models::KYB::ControlPerson, Lithic::Util::AnyHash),
          nature_of_business: String,
          tos_timestamp: String,
          workflow: Lithic::Models::KYB::Workflow::OrSymbol,
          external_id: String,
          kyb_passed_timestamp: String,
          website_url: String
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
        external_id: nil,
        kyb_passed_timestamp: nil,
        website_url: nil
      )
      end

      sig do
        override
          .returns(
            {
              beneficial_owner_entities: T::Array[Lithic::Models::KYB::BeneficialOwnerEntity],
              beneficial_owner_individuals: T::Array[Lithic::Models::KYB::BeneficialOwnerIndividual],
              business_entity: Lithic::Models::KYB::BusinessEntity,
              control_person: Lithic::Models::KYB::ControlPerson,
              nature_of_business: String,
              tos_timestamp: String,
              workflow: Lithic::Models::KYB::Workflow::OrSymbol,
              external_id: String,
              kyb_passed_timestamp: String,
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

        sig do
          params(_: T.any(Lithic::Models::Address, Lithic::Util::AnyHash))
            .returns(T.any(Lithic::Models::Address, Lithic::Util::AnyHash))
        end
        def address=(_)
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

        # Any name that the business operates under that is not its legal business name
        #   (if applicable).
        sig { returns(T.nilable(String)) }
        def dba_business_name
        end

        sig { params(_: String).returns(String) }
        def dba_business_name=(_)
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
            address: T.any(Lithic::Models::Address, Lithic::Util::AnyHash),
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
        def address
        end

        sig do
          params(_: T.any(Lithic::Models::Address, Lithic::Util::AnyHash))
            .returns(T.any(Lithic::Models::Address, Lithic::Util::AnyHash))
        end
        def address=(_)
        end

        # Individual's date of birth, as an RFC 3339 date.
        sig { returns(String) }
        def dob
        end

        sig { params(_: String).returns(String) }
        def dob=(_)
        end

        # Individual's email address. If utilizing Lithic for chargeback processing, this
        #   customer email address may be used to communicate dispute status and resolution.
        sig { returns(String) }
        def email
        end

        sig { params(_: String).returns(String) }
        def email=(_)
        end

        # Individual's first name, as it appears on government-issued identity documents.
        sig { returns(String) }
        def first_name
        end

        sig { params(_: String).returns(String) }
        def first_name=(_)
        end

        # Government-issued identification number (required for identity verification and
        #   compliance with banking regulations). Social Security Numbers (SSN) and
        #   Individual Taxpayer Identification Numbers (ITIN) are currently supported,
        #   entered as full nine-digits, with or without hyphens
        sig { returns(String) }
        def government_id
        end

        sig { params(_: String).returns(String) }
        def government_id=(_)
        end

        # Individual's last name, as it appears on government-issued identity documents.
        sig { returns(String) }
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

        # Individuals associated with a KYB application. Phone number is optional.
        sig do
          params(
            address: T.any(Lithic::Models::Address, Lithic::Util::AnyHash),
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
        def address
        end

        sig do
          params(_: T.any(Lithic::Models::Address, Lithic::Util::AnyHash))
            .returns(T.any(Lithic::Models::Address, Lithic::Util::AnyHash))
        end
        def address=(_)
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

        # Any name that the business operates under that is not its legal business name
        #   (if applicable).
        sig { returns(T.nilable(String)) }
        def dba_business_name
        end

        sig { params(_: String).returns(String) }
        def dba_business_name=(_)
        end

        # Parent company name (if applicable).
        sig { returns(T.nilable(String)) }
        def parent_company
        end

        sig { params(_: String).returns(String) }
        def parent_company=(_)
        end

        # Information for business for which the account is being opened and KYB is being
        #   run.
        sig do
          params(
            address: T.any(Lithic::Models::Address, Lithic::Util::AnyHash),
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
        def address
        end

        sig do
          params(_: T.any(Lithic::Models::Address, Lithic::Util::AnyHash))
            .returns(T.any(Lithic::Models::Address, Lithic::Util::AnyHash))
        end
        def address=(_)
        end

        # Individual's date of birth, as an RFC 3339 date.
        sig { returns(String) }
        def dob
        end

        sig { params(_: String).returns(String) }
        def dob=(_)
        end

        # Individual's email address. If utilizing Lithic for chargeback processing, this
        #   customer email address may be used to communicate dispute status and resolution.
        sig { returns(String) }
        def email
        end

        sig { params(_: String).returns(String) }
        def email=(_)
        end

        # Individual's first name, as it appears on government-issued identity documents.
        sig { returns(String) }
        def first_name
        end

        sig { params(_: String).returns(String) }
        def first_name=(_)
        end

        # Government-issued identification number (required for identity verification and
        #   compliance with banking regulations). Social Security Numbers (SSN) and
        #   Individual Taxpayer Identification Numbers (ITIN) are currently supported,
        #   entered as full nine-digits, with or without hyphens
        sig { returns(String) }
        def government_id
        end

        sig { params(_: String).returns(String) }
        def government_id=(_)
        end

        # Individual's last name, as it appears on government-issued identity documents.
        sig { returns(String) }
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
            address: T.any(Lithic::Models::Address, Lithic::Util::AnyHash),
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

      # Specifies the type of KYB workflow to run.
      module Workflow
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::KYB::Workflow) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::KYB::Workflow::TaggedSymbol) }

        KYB_BASIC = T.let(:KYB_BASIC, Lithic::Models::KYB::Workflow::TaggedSymbol)
        KYB_BYO = T.let(:KYB_BYO, Lithic::Models::KYB::Workflow::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::KYB::Workflow::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
