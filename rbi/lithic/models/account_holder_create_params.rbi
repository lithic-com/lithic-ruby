# typed: strong

module Lithic
  module Models
    class AccountHolderCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::AccountHolderCreateParams, Lithic::Internal::AnyHash)
        end

      # You must submit a list of all direct and indirect individuals with 25% or more
      # ownership in the company. A maximum of 4 beneficial owners can be submitted. If
      # no individual owns 25% of the company you do not need to send beneficial owner
      # information. See
      # [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
      # (Section I) for more background on individuals that should be included.
      sig do
        returns(
          T::Array[Lithic::AccountHolderCreateParams::BeneficialOwnerIndividual]
        )
      end
      attr_accessor :beneficial_owner_individuals

      # Information for business for which the account is being opened and KYB is being
      # run.
      sig { returns(Lithic::AccountHolderCreateParams::BusinessEntity) }
      attr_reader :business_entity

      sig do
        params(
          business_entity:
            Lithic::AccountHolderCreateParams::BusinessEntity::OrHash
        ).void
      end
      attr_writer :business_entity

      # An individual with significant responsibility for managing the legal entity
      # (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
      # Officer, Managing Member, General Partner, President, Vice President, or
      # Treasurer). This can be an executive, or someone who will have program-wide
      # access to the cards that Lithic will provide. In some cases, this individual
      # could also be a beneficial owner listed above. See
      # [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
      # (Section II) for more background.
      sig { returns(Lithic::AccountHolderCreateParams::ControlPerson) }
      attr_reader :control_person

      sig do
        params(
          control_person:
            Lithic::AccountHolderCreateParams::ControlPerson::OrHash
        ).void
      end
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

      # Specifies the workflow type. This must be 'KYC_EXEMPT'
      sig { returns(Lithic::AccountHolderCreateParams::Workflow::OrSymbol) }
      attr_accessor :workflow

      # Deprecated.
      sig do
        returns(
          T.nilable(
            T::Array[Lithic::AccountHolderCreateParams::BeneficialOwnerEntity]
          )
        )
      end
      attr_reader :beneficial_owner_entities

      sig do
        params(
          beneficial_owner_entities:
            T::Array[
              Lithic::AccountHolderCreateParams::BeneficialOwnerEntity::OrHash
            ]
        ).void
      end
      attr_writer :beneficial_owner_entities

      # A user provided id that can be used to link an account holder with an external
      # system
      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      # An RFC 3339 timestamp indicating when precomputed KYB was completed on the
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

      # Information on individual for whom the account is being opened and KYC is being
      # run.
      sig { returns(Lithic::AccountHolderCreateParams::Individual) }
      attr_reader :individual

      sig do
        params(
          individual: Lithic::AccountHolderCreateParams::Individual::OrHash
        ).void
      end
      attr_writer :individual

      # An RFC 3339 timestamp indicating when precomputed KYC was completed on the
      # individual with a pass result.
      #
      # This field is required only if workflow type is `KYC_BYO`.
      sig { returns(T.nilable(String)) }
      attr_reader :kyc_passed_timestamp

      sig { params(kyc_passed_timestamp: String).void }
      attr_writer :kyc_passed_timestamp

      # KYC Exempt user's current address - PO boxes, UPS drops, and FedEx drops are not
      # acceptable; APO/FPO are acceptable.
      sig { returns(Lithic::Address) }
      attr_reader :address

      sig { params(address: Lithic::Address::OrHash).void }
      attr_writer :address

      # The KYC Exempt user's email
      sig { returns(String) }
      attr_accessor :email

      # The KYC Exempt user's first name
      sig { returns(String) }
      attr_accessor :first_name

      # Specifies the type of KYC Exempt user
      sig do
        returns(Lithic::AccountHolderCreateParams::KYCExemptionType::OrSymbol)
      end
      attr_accessor :kyc_exemption_type

      # The KYC Exempt user's last name
      sig { returns(String) }
      attr_accessor :last_name

      # The KYC Exempt user's phone number, entered in E.164 format.
      sig { returns(String) }
      attr_accessor :phone_number

      # Only applicable for customers using the KYC-Exempt workflow to enroll authorized
      # users of businesses. Pass the account_token of the enrolled business associated
      # with the AUTHORIZED_USER in this field.
      sig { returns(T.nilable(String)) }
      attr_reader :business_account_token

      sig { params(business_account_token: String).void }
      attr_writer :business_account_token

      sig do
        params(
          beneficial_owner_individuals:
            T::Array[
              Lithic::AccountHolderCreateParams::BeneficialOwnerIndividual::OrHash
            ],
          business_entity:
            Lithic::AccountHolderCreateParams::BusinessEntity::OrHash,
          control_person:
            Lithic::AccountHolderCreateParams::ControlPerson::OrHash,
          nature_of_business: String,
          tos_timestamp: String,
          workflow: Lithic::AccountHolderCreateParams::Workflow::OrSymbol,
          individual: Lithic::AccountHolderCreateParams::Individual::OrHash,
          address: Lithic::Address::OrHash,
          email: String,
          first_name: String,
          kyc_exemption_type:
            Lithic::AccountHolderCreateParams::KYCExemptionType::OrSymbol,
          last_name: String,
          phone_number: String,
          beneficial_owner_entities:
            T::Array[
              Lithic::AccountHolderCreateParams::BeneficialOwnerEntity::OrHash
            ],
          external_id: String,
          kyb_passed_timestamp: String,
          website_url: String,
          kyc_passed_timestamp: String,
          business_account_token: String,
          request_options: Lithic::RequestOptions::OrHash
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
        # Specifies the workflow type. This must be 'KYC_EXEMPT'
        workflow:,
        # Information on individual for whom the account is being opened and KYC is being
        # run.
        individual:,
        # KYC Exempt user's current address - PO boxes, UPS drops, and FedEx drops are not
        # acceptable; APO/FPO are acceptable.
        address:,
        # The KYC Exempt user's email
        email:,
        # The KYC Exempt user's first name
        first_name:,
        # Specifies the type of KYC Exempt user
        kyc_exemption_type:,
        # The KYC Exempt user's last name
        last_name:,
        # The KYC Exempt user's phone number, entered in E.164 format.
        phone_number:,
        # Deprecated.
        beneficial_owner_entities: nil,
        # A user provided id that can be used to link an account holder with an external
        # system
        external_id: nil,
        # An RFC 3339 timestamp indicating when precomputed KYB was completed on the
        # business with a pass result.
        #
        # This field is required only if workflow type is `KYB_BYO`.
        kyb_passed_timestamp: nil,
        # Company website URL.
        website_url: nil,
        # An RFC 3339 timestamp indicating when precomputed KYC was completed on the
        # individual with a pass result.
        #
        # This field is required only if workflow type is `KYC_BYO`.
        kyc_passed_timestamp: nil,
        # Only applicable for customers using the KYC-Exempt workflow to enroll authorized
        # users of businesses. Pass the account_token of the enrolled business associated
        # with the AUTHORIZED_USER in this field.
        business_account_token: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            beneficial_owner_individuals:
              T::Array[
                Lithic::AccountHolderCreateParams::BeneficialOwnerIndividual
              ],
            business_entity: Lithic::AccountHolderCreateParams::BusinessEntity,
            control_person: Lithic::AccountHolderCreateParams::ControlPerson,
            nature_of_business: String,
            tos_timestamp: String,
            workflow: Lithic::AccountHolderCreateParams::Workflow::OrSymbol,
            beneficial_owner_entities:
              T::Array[
                Lithic::AccountHolderCreateParams::BeneficialOwnerEntity
              ],
            external_id: String,
            kyb_passed_timestamp: String,
            website_url: String,
            individual: Lithic::AccountHolderCreateParams::Individual,
            kyc_passed_timestamp: String,
            address: Lithic::Address,
            email: String,
            first_name: String,
            kyc_exemption_type:
              Lithic::AccountHolderCreateParams::KYCExemptionType::OrSymbol,
            last_name: String,
            phone_number: String,
            business_account_token: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      class BeneficialOwnerIndividual < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AccountHolderCreateParams::BeneficialOwnerIndividual,
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
            T.any(
              Lithic::AccountHolderCreateParams::BusinessEntity,
              Lithic::Internal::AnyHash
            )
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
            T.any(
              Lithic::AccountHolderCreateParams::ControlPerson,
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

      # Specifies the workflow type. This must be 'KYC_EXEMPT'
      module Workflow
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::AccountHolderCreateParams::Workflow)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        KYC_EXEMPT =
          T.let(
            :KYC_EXEMPT,
            Lithic::AccountHolderCreateParams::Workflow::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::AccountHolderCreateParams::Workflow::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class BeneficialOwnerEntity < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AccountHolderCreateParams::BeneficialOwnerEntity,
              Lithic::Internal::AnyHash
            )
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

      class Individual < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AccountHolderCreateParams::Individual,
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
        sig { returns(String) }
        attr_accessor :phone_number

        # Information on individual for whom the account is being opened and KYC is being
        # run.
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
          phone_number:
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

      # Specifies the type of KYC Exempt user
      module KYCExemptionType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::AccountHolderCreateParams::KYCExemptionType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTHORIZED_USER =
          T.let(
            :AUTHORIZED_USER,
            Lithic::AccountHolderCreateParams::KYCExemptionType::TaggedSymbol
          )
        PREPAID_CARD_USER =
          T.let(
            :PREPAID_CARD_USER,
            Lithic::AccountHolderCreateParams::KYCExemptionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::AccountHolderCreateParams::KYCExemptionType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
