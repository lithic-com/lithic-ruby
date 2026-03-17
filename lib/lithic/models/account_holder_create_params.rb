# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::AccountHolders#create
    class AccountHolderCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Lithic::Models::KYB, Lithic::Models::AccountHolderCreateParams::Body::KYBDelegated, Lithic::Models::KYC, Lithic::Models::KYCExempt]
      required :body, union: -> { Lithic::AccountHolderCreateParams::Body }

      # @!method initialize(body:, request_options: {})
      #   @param body [Lithic::Models::KYB, Lithic::Models::AccountHolderCreateParams::Body::KYBDelegated, Lithic::Models::KYC, Lithic::Models::KYCExempt]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      module Body
        extend Lithic::Internal::Type::Union

        variant -> { Lithic::KYB }

        variant -> { Lithic::AccountHolderCreateParams::Body::KYBDelegated }

        variant -> { Lithic::KYC }

        variant -> { Lithic::KYCExempt }

        class KYBDelegated < Lithic::Internal::Type::BaseModel
          # @!attribute business_entity
          #   Information for business for which the account is being opened.
          #
          #   @return [Lithic::Models::AccountHolderCreateParams::Body::KYBDelegated::BusinessEntity]
          required :business_entity, -> { Lithic::AccountHolderCreateParams::Body::KYBDelegated::BusinessEntity }

          # @!attribute beneficial_owner_individuals
          #   You can submit a list of all direct and indirect individuals with 25% or more
          #   ownership in the company. A maximum of 4 beneficial owners can be submitted. If
          #   no individual owns 25% of the company you do not need to send beneficial owner
          #   information. See
          #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
          #   (Section I) for more background on individuals that should be included.
          #
          #   @return [Array<Lithic::Models::AccountHolderCreateParams::Body::KYBDelegated::BeneficialOwnerIndividual>, nil]
          optional :beneficial_owner_individuals,
                   -> { Lithic::Internal::Type::ArrayOf[Lithic::AccountHolderCreateParams::Body::KYBDelegated::BeneficialOwnerIndividual] }

          # @!attribute control_person
          #   An individual with significant responsibility for managing the legal entity
          #   (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
          #   Officer, Managing Member, General Partner, President, Vice President, or
          #   Treasurer). This can be an executive, or someone who will have program-wide
          #   access to the cards that Lithic will provide. In some cases, this individual
          #   could also be a beneficial owner listed above. See
          #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
          #   (Section II) for more background.
          #
          #   @return [Lithic::Models::AccountHolderCreateParams::Body::KYBDelegated::ControlPerson, nil]
          optional :control_person, -> { Lithic::AccountHolderCreateParams::Body::KYBDelegated::ControlPerson }

          # @!attribute external_id
          #   A user provided id that can be used to link an account holder with an external
          #   system
          #
          #   @return [String, nil]
          optional :external_id, String

          # @!attribute naics_code
          #   6-digit North American Industry Classification System (NAICS) code for the
          #   business.
          #
          #   @return [String, nil]
          optional :naics_code, String

          # @!attribute nature_of_business
          #   Short description of the company's line of business (i.e., what does the company
          #   do?).
          #
          #   @return [String, nil]
          optional :nature_of_business, String

          # @!attribute tos_timestamp
          #   An RFC 3339 timestamp indicating when the account holder accepted the applicable
          #   legal agreements (e.g., cardholder terms) as agreed upon during API customer's
          #   implementation with Lithic.
          #
          #   @return [String, nil]
          optional :tos_timestamp, String

          # @!attribute website_url
          #   Company website URL.
          #
          #   @return [String, nil]
          optional :website_url, String

          # @!attribute workflow
          #   Specifies the type of KYB workflow to run.
          #
          #   @return [Symbol, Lithic::Models::AccountHolderCreateParams::Body::KYBDelegated::Workflow, nil]
          optional :workflow, enum: -> { Lithic::AccountHolderCreateParams::Body::KYBDelegated::Workflow }

          # @!method initialize(business_entity:, beneficial_owner_individuals: nil, control_person: nil, external_id: nil, naics_code: nil, nature_of_business: nil, tos_timestamp: nil, website_url: nil, workflow: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AccountHolderCreateParams::Body::KYBDelegated} for more
          #   details.
          #
          #   @param business_entity [Lithic::Models::AccountHolderCreateParams::Body::KYBDelegated::BusinessEntity] Information for business for which the account is being opened.
          #
          #   @param beneficial_owner_individuals [Array<Lithic::Models::AccountHolderCreateParams::Body::KYBDelegated::BeneficialOwnerIndividual>] You can submit a list of all direct and indirect individuals with 25% or more ow
          #
          #   @param control_person [Lithic::Models::AccountHolderCreateParams::Body::KYBDelegated::ControlPerson] An individual with significant responsibility for managing the legal entity (e.g
          #
          #   @param external_id [String] A user provided id that can be used to link an account holder with an external s
          #
          #   @param naics_code [String] 6-digit North American Industry Classification System (NAICS) code for the busin
          #
          #   @param nature_of_business [String] Short description of the company's line of business (i.e., what does the company
          #
          #   @param tos_timestamp [String] An RFC 3339 timestamp indicating when the account holder accepted the applicable
          #
          #   @param website_url [String] Company website URL.
          #
          #   @param workflow [Symbol, Lithic::Models::AccountHolderCreateParams::Body::KYBDelegated::Workflow] Specifies the type of KYB workflow to run.

          # @see Lithic::Models::AccountHolderCreateParams::Body::KYBDelegated#business_entity
          class BusinessEntity < Lithic::Internal::Type::BaseModel
            # @!attribute address
            #   Business's physical address - PO boxes, UPS drops, and FedEx drops are not
            #   acceptable; APO/FPO are acceptable.
            #
            #   @return [Lithic::Models::Address]
            required :address, -> { Lithic::Address }

            # @!attribute legal_business_name
            #   Legal (formal) business name.
            #
            #   @return [String]
            required :legal_business_name, String

            # @!attribute dba_business_name
            #   Any name that the business operates under that is not its legal business name
            #   (if applicable).
            #
            #   @return [String, nil]
            optional :dba_business_name, String

            # @!attribute government_id
            #   Government-issued identification number. US Federal Employer Identification
            #   Numbers (EIN) are currently supported, entered as full nine-digits, with or
            #   without hyphens.
            #
            #   @return [String, nil]
            optional :government_id, String

            # @!attribute parent_company
            #   Parent company name (if applicable).
            #
            #   @return [String, nil]
            optional :parent_company, String

            # @!attribute phone_numbers
            #   One or more of the business's phone number(s), entered as a list in E.164
            #   format.
            #
            #   @return [Array<String>, nil]
            optional :phone_numbers, Lithic::Internal::Type::ArrayOf[String]

            # @!method initialize(address:, legal_business_name:, dba_business_name: nil, government_id: nil, parent_company: nil, phone_numbers: nil)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AccountHolderCreateParams::Body::KYBDelegated::BusinessEntity}
            #   for more details.
            #
            #   Information for business for which the account is being opened.
            #
            #   @param address [Lithic::Models::Address] Business's physical address - PO boxes, UPS drops, and FedEx drops are not accep
            #
            #   @param legal_business_name [String] Legal (formal) business name.
            #
            #   @param dba_business_name [String] Any name that the business operates under that is not its legal business name (i
            #
            #   @param government_id [String] Government-issued identification number. US Federal Employer Identification Numb
            #
            #   @param parent_company [String] Parent company name (if applicable).
            #
            #   @param phone_numbers [Array<String>] One or more of the business's phone number(s), entered as a list in E.164 format
          end

          class BeneficialOwnerIndividual < Lithic::Internal::Type::BaseModel
            # @!attribute first_name
            #   Individual's first name, as it appears on government-issued identity documents.
            #
            #   @return [String]
            required :first_name, String

            # @!attribute last_name
            #   Individual's last name, as it appears on government-issued identity documents.
            #
            #   @return [String]
            required :last_name, String

            # @!attribute address
            #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
            #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
            #
            #   @return [Lithic::Models::Address, nil]
            optional :address, -> { Lithic::Address }

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

            # @!attribute government_id
            #   Government-issued identification number (required for identity verification and
            #   compliance with banking regulations). Social Security Numbers (SSN) and
            #   Individual Taxpayer Identification Numbers (ITIN) are currently supported,
            #   entered as full nine-digits, with or without hyphens
            #
            #   @return [String, nil]
            optional :government_id, String

            # @!attribute phone_number
            #   Individual's phone number, entered in E.164 format.
            #
            #   @return [String, nil]
            optional :phone_number, String

            # @!method initialize(first_name:, last_name:, address: nil, dob: nil, email: nil, government_id: nil, phone_number: nil)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AccountHolderCreateParams::Body::KYBDelegated::BeneficialOwnerIndividual}
            #   for more details.
            #
            #   Individuals associated with a KYB_DELEGATED application. Only first and last
            #   name are required.
            #
            #   @param first_name [String] Individual's first name, as it appears on government-issued identity documents.
            #
            #   @param last_name [String] Individual's last name, as it appears on government-issued identity documents.
            #
            #   @param address [Lithic::Models::Address] Individual's current address - PO boxes, UPS drops, and FedEx drops are not acce
            #
            #   @param dob [String] Individual's date of birth, as an RFC 3339 date.
            #
            #   @param email [String] Individual's email address.
            #
            #   @param government_id [String] Government-issued identification number (required for identity verification and
            #
            #   @param phone_number [String] Individual's phone number, entered in E.164 format.
          end

          # @see Lithic::Models::AccountHolderCreateParams::Body::KYBDelegated#control_person
          class ControlPerson < Lithic::Internal::Type::BaseModel
            # @!attribute first_name
            #   Individual's first name, as it appears on government-issued identity documents.
            #
            #   @return [String]
            required :first_name, String

            # @!attribute last_name
            #   Individual's last name, as it appears on government-issued identity documents.
            #
            #   @return [String]
            required :last_name, String

            # @!attribute address
            #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
            #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
            #
            #   @return [Lithic::Models::Address, nil]
            optional :address, -> { Lithic::Address }

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

            # @!attribute government_id
            #   Government-issued identification number (required for identity verification and
            #   compliance with banking regulations). Social Security Numbers (SSN) and
            #   Individual Taxpayer Identification Numbers (ITIN) are currently supported,
            #   entered as full nine-digits, with or without hyphens
            #
            #   @return [String, nil]
            optional :government_id, String

            # @!attribute phone_number
            #   Individual's phone number, entered in E.164 format.
            #
            #   @return [String, nil]
            optional :phone_number, String

            # @!method initialize(first_name:, last_name:, address: nil, dob: nil, email: nil, government_id: nil, phone_number: nil)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AccountHolderCreateParams::Body::KYBDelegated::ControlPerson}
            #   for more details.
            #
            #   An individual with significant responsibility for managing the legal entity
            #   (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
            #   Officer, Managing Member, General Partner, President, Vice President, or
            #   Treasurer). This can be an executive, or someone who will have program-wide
            #   access to the cards that Lithic will provide. In some cases, this individual
            #   could also be a beneficial owner listed above. See
            #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
            #   (Section II) for more background.
            #
            #   @param first_name [String] Individual's first name, as it appears on government-issued identity documents.
            #
            #   @param last_name [String] Individual's last name, as it appears on government-issued identity documents.
            #
            #   @param address [Lithic::Models::Address] Individual's current address - PO boxes, UPS drops, and FedEx drops are not acce
            #
            #   @param dob [String] Individual's date of birth, as an RFC 3339 date.
            #
            #   @param email [String] Individual's email address.
            #
            #   @param government_id [String] Government-issued identification number (required for identity verification and
            #
            #   @param phone_number [String] Individual's phone number, entered in E.164 format.
          end

          # Specifies the type of KYB workflow to run.
          #
          # @see Lithic::Models::AccountHolderCreateParams::Body::KYBDelegated#workflow
          module Workflow
            extend Lithic::Internal::Type::Enum

            KYB_DELEGATED = :KYB_DELEGATED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(Lithic::Models::KYB, Lithic::Models::AccountHolderCreateParams::Body::KYBDelegated, Lithic::Models::KYC, Lithic::Models::KYCExempt)]
      end
    end
  end
end
