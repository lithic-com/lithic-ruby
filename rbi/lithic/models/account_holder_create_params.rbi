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

      sig do
        returns(
          T.any(
            Lithic::KYB,
            Lithic::AccountHolderCreateParams::Body::KYBDelegated,
            Lithic::KYC,
            Lithic::KYCExempt
          )
        )
      end
      attr_accessor :body

      sig do
        params(
          body:
            T.any(
              Lithic::KYB::OrHash,
              Lithic::AccountHolderCreateParams::Body::KYBDelegated::OrHash,
              Lithic::KYC::OrHash,
              Lithic::KYCExempt::OrHash
            ),
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body:
              T.any(
                Lithic::KYB,
                Lithic::AccountHolderCreateParams::Body::KYBDelegated,
                Lithic::KYC,
                Lithic::KYCExempt
              ),
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Body
        extend Lithic::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Lithic::KYB,
              Lithic::AccountHolderCreateParams::Body::KYBDelegated,
              Lithic::KYC,
              Lithic::KYCExempt
            )
          end

        class KYBDelegated < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AccountHolderCreateParams::Body::KYBDelegated,
                Lithic::Internal::AnyHash
              )
            end

          # Information for business for which the account is being opened.
          sig do
            returns(
              Lithic::AccountHolderCreateParams::Body::KYBDelegated::BusinessEntity
            )
          end
          attr_reader :business_entity

          sig do
            params(
              business_entity:
                Lithic::AccountHolderCreateParams::Body::KYBDelegated::BusinessEntity::OrHash
            ).void
          end
          attr_writer :business_entity

          # You can submit a list of all direct and indirect individuals with 25% or more
          # ownership in the company. A maximum of 4 beneficial owners can be submitted. If
          # no individual owns 25% of the company you do not need to send beneficial owner
          # information. See
          # [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
          # (Section I) for more background on individuals that should be included.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Lithic::AccountHolderCreateParams::Body::KYBDelegated::BeneficialOwnerIndividual
                ]
              )
            )
          end
          attr_reader :beneficial_owner_individuals

          sig do
            params(
              beneficial_owner_individuals:
                T::Array[
                  Lithic::AccountHolderCreateParams::Body::KYBDelegated::BeneficialOwnerIndividual::OrHash
                ]
            ).void
          end
          attr_writer :beneficial_owner_individuals

          # An individual with significant responsibility for managing the legal entity
          # (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
          # Officer, Managing Member, General Partner, President, Vice President, or
          # Treasurer). This can be an executive, or someone who will have program-wide
          # access to the cards that Lithic will provide. In some cases, this individual
          # could also be a beneficial owner listed above. See
          # [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
          # (Section II) for more background.
          sig do
            returns(
              T.nilable(
                Lithic::AccountHolderCreateParams::Body::KYBDelegated::ControlPerson
              )
            )
          end
          attr_reader :control_person

          sig do
            params(
              control_person:
                Lithic::AccountHolderCreateParams::Body::KYBDelegated::ControlPerson::OrHash
            ).void
          end
          attr_writer :control_person

          # A user provided id that can be used to link an account holder with an external
          # system
          sig { returns(T.nilable(String)) }
          attr_reader :external_id

          sig { params(external_id: String).void }
          attr_writer :external_id

          # 6-digit North American Industry Classification System (NAICS) code for the
          # business.
          sig { returns(T.nilable(String)) }
          attr_reader :naics_code

          sig { params(naics_code: String).void }
          attr_writer :naics_code

          # Short description of the company's line of business (i.e., what does the company
          # do?).
          sig { returns(T.nilable(String)) }
          attr_reader :nature_of_business

          sig { params(nature_of_business: String).void }
          attr_writer :nature_of_business

          # An RFC 3339 timestamp indicating when the account holder accepted the applicable
          # legal agreements (e.g., cardholder terms) as agreed upon during API customer's
          # implementation with Lithic.
          sig { returns(T.nilable(String)) }
          attr_reader :tos_timestamp

          sig { params(tos_timestamp: String).void }
          attr_writer :tos_timestamp

          # Company website URL.
          sig { returns(T.nilable(String)) }
          attr_reader :website_url

          sig { params(website_url: String).void }
          attr_writer :website_url

          # Specifies the type of KYB workflow to run.
          sig do
            returns(
              T.nilable(
                Lithic::AccountHolderCreateParams::Body::KYBDelegated::Workflow::OrSymbol
              )
            )
          end
          attr_reader :workflow

          sig do
            params(
              workflow:
                Lithic::AccountHolderCreateParams::Body::KYBDelegated::Workflow::OrSymbol
            ).void
          end
          attr_writer :workflow

          sig do
            params(
              business_entity:
                Lithic::AccountHolderCreateParams::Body::KYBDelegated::BusinessEntity::OrHash,
              beneficial_owner_individuals:
                T::Array[
                  Lithic::AccountHolderCreateParams::Body::KYBDelegated::BeneficialOwnerIndividual::OrHash
                ],
              control_person:
                Lithic::AccountHolderCreateParams::Body::KYBDelegated::ControlPerson::OrHash,
              external_id: String,
              naics_code: String,
              nature_of_business: String,
              tos_timestamp: String,
              website_url: String,
              workflow:
                Lithic::AccountHolderCreateParams::Body::KYBDelegated::Workflow::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Information for business for which the account is being opened.
            business_entity:,
            # You can submit a list of all direct and indirect individuals with 25% or more
            # ownership in the company. A maximum of 4 beneficial owners can be submitted. If
            # no individual owns 25% of the company you do not need to send beneficial owner
            # information. See
            # [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
            # (Section I) for more background on individuals that should be included.
            beneficial_owner_individuals: nil,
            # An individual with significant responsibility for managing the legal entity
            # (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
            # Officer, Managing Member, General Partner, President, Vice President, or
            # Treasurer). This can be an executive, or someone who will have program-wide
            # access to the cards that Lithic will provide. In some cases, this individual
            # could also be a beneficial owner listed above. See
            # [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
            # (Section II) for more background.
            control_person: nil,
            # A user provided id that can be used to link an account holder with an external
            # system
            external_id: nil,
            # 6-digit North American Industry Classification System (NAICS) code for the
            # business.
            naics_code: nil,
            # Short description of the company's line of business (i.e., what does the company
            # do?).
            nature_of_business: nil,
            # An RFC 3339 timestamp indicating when the account holder accepted the applicable
            # legal agreements (e.g., cardholder terms) as agreed upon during API customer's
            # implementation with Lithic.
            tos_timestamp: nil,
            # Company website URL.
            website_url: nil,
            # Specifies the type of KYB workflow to run.
            workflow: nil
          )
          end

          sig do
            override.returns(
              {
                business_entity:
                  Lithic::AccountHolderCreateParams::Body::KYBDelegated::BusinessEntity,
                beneficial_owner_individuals:
                  T::Array[
                    Lithic::AccountHolderCreateParams::Body::KYBDelegated::BeneficialOwnerIndividual
                  ],
                control_person:
                  Lithic::AccountHolderCreateParams::Body::KYBDelegated::ControlPerson,
                external_id: String,
                naics_code: String,
                nature_of_business: String,
                tos_timestamp: String,
                website_url: String,
                workflow:
                  Lithic::AccountHolderCreateParams::Body::KYBDelegated::Workflow::OrSymbol
              }
            )
          end
          def to_hash
          end

          class BusinessEntity < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::AccountHolderCreateParams::Body::KYBDelegated::BusinessEntity,
                  Lithic::Internal::AnyHash
                )
              end

            # Business's physical address - PO boxes, UPS drops, and FedEx drops are not
            # acceptable; APO/FPO are acceptable.
            sig { returns(Lithic::Address) }
            attr_reader :address

            sig { params(address: Lithic::Address::OrHash).void }
            attr_writer :address

            # Legal (formal) business name.
            sig { returns(String) }
            attr_accessor :legal_business_name

            # Any name that the business operates under that is not its legal business name
            # (if applicable).
            sig { returns(T.nilable(String)) }
            attr_reader :dba_business_name

            sig { params(dba_business_name: String).void }
            attr_writer :dba_business_name

            # Government-issued identification number. US Federal Employer Identification
            # Numbers (EIN) are currently supported, entered as full nine-digits, with or
            # without hyphens.
            sig { returns(T.nilable(String)) }
            attr_reader :government_id

            sig { params(government_id: String).void }
            attr_writer :government_id

            # Parent company name (if applicable).
            sig { returns(T.nilable(String)) }
            attr_reader :parent_company

            sig { params(parent_company: String).void }
            attr_writer :parent_company

            # One or more of the business's phone number(s), entered as a list in E.164
            # format.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :phone_numbers

            sig { params(phone_numbers: T::Array[String]).void }
            attr_writer :phone_numbers

            # Information for business for which the account is being opened.
            sig do
              params(
                address: Lithic::Address::OrHash,
                legal_business_name: String,
                dba_business_name: String,
                government_id: String,
                parent_company: String,
                phone_numbers: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              # Business's physical address - PO boxes, UPS drops, and FedEx drops are not
              # acceptable; APO/FPO are acceptable.
              address:,
              # Legal (formal) business name.
              legal_business_name:,
              # Any name that the business operates under that is not its legal business name
              # (if applicable).
              dba_business_name: nil,
              # Government-issued identification number. US Federal Employer Identification
              # Numbers (EIN) are currently supported, entered as full nine-digits, with or
              # without hyphens.
              government_id: nil,
              # Parent company name (if applicable).
              parent_company: nil,
              # One or more of the business's phone number(s), entered as a list in E.164
              # format.
              phone_numbers: nil
            )
            end

            sig do
              override.returns(
                {
                  address: Lithic::Address,
                  legal_business_name: String,
                  dba_business_name: String,
                  government_id: String,
                  parent_company: String,
                  phone_numbers: T::Array[String]
                }
              )
            end
            def to_hash
            end
          end

          class BeneficialOwnerIndividual < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::AccountHolderCreateParams::Body::KYBDelegated::BeneficialOwnerIndividual,
                  Lithic::Internal::AnyHash
                )
              end

            # Individual's first name, as it appears on government-issued identity documents.
            sig { returns(String) }
            attr_accessor :first_name

            # Individual's last name, as it appears on government-issued identity documents.
            sig { returns(String) }
            attr_accessor :last_name

            # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
            # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
            sig { returns(T.nilable(Lithic::Address)) }
            attr_reader :address

            sig { params(address: Lithic::Address::OrHash).void }
            attr_writer :address

            # Individual's date of birth, as an RFC 3339 date.
            sig { returns(T.nilable(String)) }
            attr_reader :dob

            sig { params(dob: String).void }
            attr_writer :dob

            # Individual's email address. If utilizing Lithic for chargeback processing, this
            # customer email address may be used to communicate dispute status and resolution.
            sig { returns(T.nilable(String)) }
            attr_reader :email

            sig { params(email: String).void }
            attr_writer :email

            # Government-issued identification number (required for identity verification and
            # compliance with banking regulations). Social Security Numbers (SSN) and
            # Individual Taxpayer Identification Numbers (ITIN) are currently supported,
            # entered as full nine-digits, with or without hyphens
            sig { returns(T.nilable(String)) }
            attr_reader :government_id

            sig { params(government_id: String).void }
            attr_writer :government_id

            # Individual's phone number, entered in E.164 format.
            sig { returns(T.nilable(String)) }
            attr_reader :phone_number

            sig { params(phone_number: String).void }
            attr_writer :phone_number

            # Individuals associated with a KYB_DELEGATED application. Only first and last
            # name are required.
            sig do
              params(
                first_name: String,
                last_name: String,
                address: Lithic::Address::OrHash,
                dob: String,
                email: String,
                government_id: String,
                phone_number: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Individual's first name, as it appears on government-issued identity documents.
              first_name:,
              # Individual's last name, as it appears on government-issued identity documents.
              last_name:,
              # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
              # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
              address: nil,
              # Individual's date of birth, as an RFC 3339 date.
              dob: nil,
              # Individual's email address. If utilizing Lithic for chargeback processing, this
              # customer email address may be used to communicate dispute status and resolution.
              email: nil,
              # Government-issued identification number (required for identity verification and
              # compliance with banking regulations). Social Security Numbers (SSN) and
              # Individual Taxpayer Identification Numbers (ITIN) are currently supported,
              # entered as full nine-digits, with or without hyphens
              government_id: nil,
              # Individual's phone number, entered in E.164 format.
              phone_number: nil
            )
            end

            sig do
              override.returns(
                {
                  first_name: String,
                  last_name: String,
                  address: Lithic::Address,
                  dob: String,
                  email: String,
                  government_id: String,
                  phone_number: String
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
                  Lithic::AccountHolderCreateParams::Body::KYBDelegated::ControlPerson,
                  Lithic::Internal::AnyHash
                )
              end

            # Individual's first name, as it appears on government-issued identity documents.
            sig { returns(String) }
            attr_accessor :first_name

            # Individual's last name, as it appears on government-issued identity documents.
            sig { returns(String) }
            attr_accessor :last_name

            # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
            # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
            sig { returns(T.nilable(Lithic::Address)) }
            attr_reader :address

            sig { params(address: Lithic::Address::OrHash).void }
            attr_writer :address

            # Individual's date of birth, as an RFC 3339 date.
            sig { returns(T.nilable(String)) }
            attr_reader :dob

            sig { params(dob: String).void }
            attr_writer :dob

            # Individual's email address. If utilizing Lithic for chargeback processing, this
            # customer email address may be used to communicate dispute status and resolution.
            sig { returns(T.nilable(String)) }
            attr_reader :email

            sig { params(email: String).void }
            attr_writer :email

            # Government-issued identification number (required for identity verification and
            # compliance with banking regulations). Social Security Numbers (SSN) and
            # Individual Taxpayer Identification Numbers (ITIN) are currently supported,
            # entered as full nine-digits, with or without hyphens
            sig { returns(T.nilable(String)) }
            attr_reader :government_id

            sig { params(government_id: String).void }
            attr_writer :government_id

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
                first_name: String,
                last_name: String,
                address: Lithic::Address::OrHash,
                dob: String,
                email: String,
                government_id: String,
                phone_number: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Individual's first name, as it appears on government-issued identity documents.
              first_name:,
              # Individual's last name, as it appears on government-issued identity documents.
              last_name:,
              # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
              # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
              address: nil,
              # Individual's date of birth, as an RFC 3339 date.
              dob: nil,
              # Individual's email address. If utilizing Lithic for chargeback processing, this
              # customer email address may be used to communicate dispute status and resolution.
              email: nil,
              # Government-issued identification number (required for identity verification and
              # compliance with banking regulations). Social Security Numbers (SSN) and
              # Individual Taxpayer Identification Numbers (ITIN) are currently supported,
              # entered as full nine-digits, with or without hyphens
              government_id: nil,
              # Individual's phone number, entered in E.164 format.
              phone_number: nil
            )
            end

            sig do
              override.returns(
                {
                  first_name: String,
                  last_name: String,
                  address: Lithic::Address,
                  dob: String,
                  email: String,
                  government_id: String,
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

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AccountHolderCreateParams::Body::KYBDelegated::Workflow
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            KYB_DELEGATED =
              T.let(
                :KYB_DELEGATED,
                Lithic::AccountHolderCreateParams::Body::KYBDelegated::Workflow::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AccountHolderCreateParams::Body::KYBDelegated::Workflow::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[Lithic::AccountHolderCreateParams::Body::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
