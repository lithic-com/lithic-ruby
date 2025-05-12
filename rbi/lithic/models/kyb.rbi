# typed: strong

module Lithic
  module Models
    class KYB < Lithic::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Lithic::KYB, Lithic::Internal::AnyHash) }

      # You must submit a list of all direct and indirect individuals with 25% or more
      # ownership in the company. A maximum of 4 beneficial owners can be submitted. If
      # no individual owns 25% of the company you do not need to send beneficial owner
      # information. See
      # [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
      # (Section I) for more background on individuals that should be included.
      sig { returns(T::Array[Lithic::KYB::BeneficialOwnerIndividual]) }
      attr_accessor :beneficial_owner_individuals

      # Information for business for which the account is being opened and KYB is being
      # run.
      sig { returns(Lithic::KYB::BusinessEntity) }
      attr_reader :business_entity

      sig { params(business_entity: Lithic::KYB::BusinessEntity::OrHash).void }
      attr_writer :business_entity

      # An individual with significant responsibility for managing the legal entity
      # (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
      # Officer, Managing Member, General Partner, President, Vice President, or
      # Treasurer). This can be an executive, or someone who will have program-wide
      # access to the cards that Lithic will provide. In some cases, this individual
      # could also be a beneficial owner listed above. See
      # [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
      # (Section II) for more background.
      sig { returns(Lithic::KYB::ControlPerson) }
      attr_reader :control_person

      sig { params(control_person: Lithic::KYB::ControlPerson::OrHash).void }
      attr_writer :control_person

      # Short description of the company's line of business (i.e., what does the company
      # do?).
      sig { returns(String) }
      attr_accessor :nature_of_business

      # An RFC 3339 timestamp indicating when the account holder accepted the applicable
      # legal agreements (e.g., cardholder terms) as agreed upon during API customer's
      # implementation with Lithic.
      sig { returns(String) }
      attr_accessor :tos_timestamp

      # Specifies the type of KYB workflow to run.
      sig { returns(Lithic::KYB::Workflow::OrSymbol) }
      attr_accessor :workflow

      # Deprecated.
      sig { returns(T.nilable(T::Array[Lithic::KYB::BeneficialOwnerEntity])) }
      attr_reader :beneficial_owner_entities

      sig do
        params(
          beneficial_owner_entities:
            T::Array[Lithic::KYB::BeneficialOwnerEntity::OrHash]
        ).void
      end
      attr_writer :beneficial_owner_entities

      # A user provided id that can be used to link an account holder with an external
      # system
      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      # An RFC 3339 timestamp indicating when precomputed KYC was completed on the
      # business with a pass result.
      #
      # This field is required only if workflow type is `KYB_BYO`.
      sig { returns(T.nilable(String)) }
      attr_reader :kyb_passed_timestamp

      sig { params(kyb_passed_timestamp: String).void }
      attr_writer :kyb_passed_timestamp

      # Company website URL.
      sig { returns(T.nilable(String)) }
      attr_reader :website_url

      sig { params(website_url: String).void }
      attr_writer :website_url

      sig do
        params(
          beneficial_owner_individuals:
            T::Array[Lithic::KYB::BeneficialOwnerIndividual::OrHash],
          business_entity: Lithic::KYB::BusinessEntity::OrHash,
          control_person: Lithic::KYB::ControlPerson::OrHash,
          nature_of_business: String,
          tos_timestamp: String,
          workflow: Lithic::KYB::Workflow::OrSymbol,
          beneficial_owner_entities:
            T::Array[Lithic::KYB::BeneficialOwnerEntity::OrHash],
          external_id: String,
          kyb_passed_timestamp: String,
          website_url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # You must submit a list of all direct and indirect individuals with 25% or more
        # ownership in the company. A maximum of 4 beneficial owners can be submitted. If
        # no individual owns 25% of the company you do not need to send beneficial owner
        # information. See
        # [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
        # (Section I) for more background on individuals that should be included.
        beneficial_owner_individuals:,
        # Information for business for which the account is being opened and KYB is being
        # run.
        business_entity:,
        # An individual with significant responsibility for managing the legal entity
        # (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
        # Officer, Managing Member, General Partner, President, Vice President, or
        # Treasurer). This can be an executive, or someone who will have program-wide
        # access to the cards that Lithic will provide. In some cases, this individual
        # could also be a beneficial owner listed above. See
        # [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
        # (Section II) for more background.
        control_person:,
        # Short description of the company's line of business (i.e., what does the company
        # do?).
        nature_of_business:,
        # An RFC 3339 timestamp indicating when the account holder accepted the applicable
        # legal agreements (e.g., cardholder terms) as agreed upon during API customer's
        # implementation with Lithic.
        tos_timestamp:,
        # Specifies the type of KYB workflow to run.
        workflow:,
        # Deprecated.
        beneficial_owner_entities: nil,
        # A user provided id that can be used to link an account holder with an external
        # system
        external_id: nil,
        # An RFC 3339 timestamp indicating when precomputed KYC was completed on the
        # business with a pass result.
        #
        # This field is required only if workflow type is `KYB_BYO`.
        kyb_passed_timestamp: nil,
        # Company website URL.
        website_url: nil
      )
      end

      sig do
        override.returns(
          {
            beneficial_owner_individuals:
              T::Array[Lithic::KYB::BeneficialOwnerIndividual],
            business_entity: Lithic::KYB::BusinessEntity,
            control_person: Lithic::KYB::ControlPerson,
            nature_of_business: String,
            tos_timestamp: String,
            workflow: Lithic::KYB::Workflow::OrSymbol,
            beneficial_owner_entities:
              T::Array[Lithic::KYB::BeneficialOwnerEntity],
            external_id: String,
            kyb_passed_timestamp: String,
            website_url: String
          }
        )
      end
      def to_hash
      end

      class BeneficialOwnerIndividual < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::KYB::BeneficialOwnerIndividual,
              Lithic::Internal::AnyHash
            )
          end

        # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        sig { returns(Lithic::Address) }
        attr_reader :address

        sig { params(address: Lithic::Address::OrHash).void }
        attr_writer :address

        # Individual's date of birth, as an RFC 3339 date.
        sig { returns(String) }
        attr_accessor :dob

        # Individual's email address. If utilizing Lithic for chargeback processing, this
        # customer email address may be used to communicate dispute status and resolution.
        sig { returns(String) }
        attr_accessor :email

        # Individual's first name, as it appears on government-issued identity documents.
        sig { returns(String) }
        attr_accessor :first_name

        # Government-issued identification number (required for identity verification and
        # compliance with banking regulations). Social Security Numbers (SSN) and
        # Individual Taxpayer Identification Numbers (ITIN) are currently supported,
        # entered as full nine-digits, with or without hyphens
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
            address: Lithic::Address::OrHash,
            dob: String,
            email: String,
            first_name: String,
            government_id: String,
            last_name: String,
            phone_number: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
          # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
          address:,
          # Individual's date of birth, as an RFC 3339 date.
          dob:,
          # Individual's email address. If utilizing Lithic for chargeback processing, this
          # customer email address may be used to communicate dispute status and resolution.
          email:,
          # Individual's first name, as it appears on government-issued identity documents.
          first_name:,
          # Government-issued identification number (required for identity verification and
          # compliance with banking regulations). Social Security Numbers (SSN) and
          # Individual Taxpayer Identification Numbers (ITIN) are currently supported,
          # entered as full nine-digits, with or without hyphens
          government_id:,
          # Individual's last name, as it appears on government-issued identity documents.
          last_name:,
          # Individual's phone number, entered in E.164 format.
          phone_number: nil
        )
        end

        sig do
          override.returns(
            {
              address: Lithic::Address,
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

      class BusinessEntity < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::KYB::BusinessEntity, Lithic::Internal::AnyHash)
          end

        # Business's physical address - PO boxes, UPS drops, and FedEx drops are not
        # acceptable; APO/FPO are acceptable.
        sig { returns(Lithic::Address) }
        attr_reader :address

        sig { params(address: Lithic::Address::OrHash).void }
        attr_writer :address

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

        # Any name that the business operates under that is not its legal business name
        # (if applicable).
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
        # run.
        sig do
          params(
            address: Lithic::Address::OrHash,
            government_id: String,
            legal_business_name: String,
            phone_numbers: T::Array[String],
            dba_business_name: String,
            parent_company: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Business's physical address - PO boxes, UPS drops, and FedEx drops are not
          # acceptable; APO/FPO are acceptable.
          address:,
          # Government-issued identification number. US Federal Employer Identification
          # Numbers (EIN) are currently supported, entered as full nine-digits, with or
          # without hyphens.
          government_id:,
          # Legal (formal) business name.
          legal_business_name:,
          # One or more of the business's phone number(s), entered as a list in E.164
          # format.
          phone_numbers:,
          # Any name that the business operates under that is not its legal business name
          # (if applicable).
          dba_business_name: nil,
          # Parent company name (if applicable).
          parent_company: nil
        )
        end

        sig do
          override.returns(
            {
              address: Lithic::Address,
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

      class ControlPerson < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::KYB::ControlPerson, Lithic::Internal::AnyHash)
          end

        # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        sig { returns(Lithic::Address) }
        attr_reader :address

        sig { params(address: Lithic::Address::OrHash).void }
        attr_writer :address

        # Individual's date of birth, as an RFC 3339 date.
        sig { returns(String) }
        attr_accessor :dob

        # Individual's email address. If utilizing Lithic for chargeback processing, this
        # customer email address may be used to communicate dispute status and resolution.
        sig { returns(String) }
        attr_accessor :email

        # Individual's first name, as it appears on government-issued identity documents.
        sig { returns(String) }
        attr_accessor :first_name

        # Government-issued identification number (required for identity verification and
        # compliance with banking regulations). Social Security Numbers (SSN) and
        # Individual Taxpayer Identification Numbers (ITIN) are currently supported,
        # entered as full nine-digits, with or without hyphens
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
        # (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
        # Officer, Managing Member, General Partner, President, Vice President, or
        # Treasurer). This can be an executive, or someone who will have program-wide
        # access to the cards that Lithic will provide. In some cases, this individual
        # could also be a beneficial owner listed above. See
        # [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
        # (Section II) for more background.
        sig do
          params(
            address: Lithic::Address::OrHash,
            dob: String,
            email: String,
            first_name: String,
            government_id: String,
            last_name: String,
            phone_number: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
          # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
          address:,
          # Individual's date of birth, as an RFC 3339 date.
          dob:,
          # Individual's email address. If utilizing Lithic for chargeback processing, this
          # customer email address may be used to communicate dispute status and resolution.
          email:,
          # Individual's first name, as it appears on government-issued identity documents.
          first_name:,
          # Government-issued identification number (required for identity verification and
          # compliance with banking regulations). Social Security Numbers (SSN) and
          # Individual Taxpayer Identification Numbers (ITIN) are currently supported,
          # entered as full nine-digits, with or without hyphens
          government_id:,
          # Individual's last name, as it appears on government-issued identity documents.
          last_name:,
          # Individual's phone number, entered in E.164 format.
          phone_number: nil
        )
        end

        sig do
          override.returns(
            {
              address: Lithic::Address,
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
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::KYB::Workflow) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        KYB_BASIC = T.let(:KYB_BASIC, Lithic::KYB::Workflow::TaggedSymbol)
        KYB_BYO = T.let(:KYB_BYO, Lithic::KYB::Workflow::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::KYB::Workflow::TaggedSymbol]) }
        def self.values
        end
      end

      class BeneficialOwnerEntity < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::KYB::BeneficialOwnerEntity, Lithic::Internal::AnyHash)
          end

        # Business's physical address - PO boxes, UPS drops, and FedEx drops are not
        # acceptable; APO/FPO are acceptable.
        sig { returns(Lithic::Address) }
        attr_reader :address

        sig { params(address: Lithic::Address::OrHash).void }
        attr_writer :address

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

        # Any name that the business operates under that is not its legal business name
        # (if applicable).
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
            address: Lithic::Address::OrHash,
            government_id: String,
            legal_business_name: String,
            phone_numbers: T::Array[String],
            dba_business_name: String,
            parent_company: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Business's physical address - PO boxes, UPS drops, and FedEx drops are not
          # acceptable; APO/FPO are acceptable.
          address:,
          # Government-issued identification number. US Federal Employer Identification
          # Numbers (EIN) are currently supported, entered as full nine-digits, with or
          # without hyphens.
          government_id:,
          # Legal (formal) business name.
          legal_business_name:,
          # One or more of the business's phone number(s), entered as a list in E.164
          # format.
          phone_numbers:,
          # Any name that the business operates under that is not its legal business name
          # (if applicable).
          dba_business_name: nil,
          # Parent company name (if applicable).
          parent_company: nil
        )
        end

        sig do
          override.returns(
            {
              address: Lithic::Address,
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
    end
  end
end
