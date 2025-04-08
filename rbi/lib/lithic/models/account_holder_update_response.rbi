# typed: strong

module Lithic
  module Models
    module AccountHolderUpdateResponse
      extend Lithic::Internal::Type::Union

      class KYBKYCPatchResponse < Lithic::Internal::Type::BaseModel
        # Globally unique identifier for the account holder.
        sig { returns(T.nilable(String)) }
        attr_reader :token

        sig { params(token: String).void }
        attr_writer :token

        # Globally unique identifier for the account.
        sig { returns(T.nilable(String)) }
        attr_reader :account_token

        sig { params(account_token: String).void }
        attr_writer :account_token

        # Deprecated.
        sig { returns(T.nilable(T::Array[Lithic::Models::KYBBusinessEntity])) }
        attr_reader :beneficial_owner_entities

        sig do
          params(
            beneficial_owner_entities: T::Array[T.any(Lithic::Models::KYBBusinessEntity, Lithic::Internal::AnyHash)]
          )
            .void
        end
        attr_writer :beneficial_owner_entities

        # Only present when user_type == "BUSINESS". List of all direct and indirect
        # individuals with 25% or more ownership in the company. If no individual owns 25%
        # of the company, please identify the largest shareholder in this field. See
        # [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
        # (Section I) for more background on individuals that should be included.
        sig do
          returns(
            T.nilable(
              T::Array[Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::BeneficialOwnerIndividual]
            )
          )
        end
        attr_reader :beneficial_owner_individuals

        sig do
          params(
            beneficial_owner_individuals: T::Array[
              T.any(
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::BeneficialOwnerIndividual,
                Lithic::Internal::AnyHash
              )
            ]
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
        sig { returns(T.nilable(Lithic::Models::KYBBusinessEntity)) }
        attr_reader :business_entity

        sig { params(business_entity: T.any(Lithic::Models::KYBBusinessEntity, Lithic::Internal::AnyHash)).void }
        attr_writer :business_entity

        # Only present when user_type == "BUSINESS".
        #
        # An individual with significant responsibility for managing the legal entity
        # (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
        # Officer,
        #
        # Managing Member, General Partner, President, Vice President, or Treasurer). This
        # can be an executive, or someone who will have program-wide access
        #
        # to the cards that Lithic will provide. In some cases, this individual could also
        # be a beneficial owner listed above.
        sig { returns(T.nilable(Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ControlPerson)) }
        attr_reader :control_person

        sig do
          params(
            control_person: T.any(
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ControlPerson,
              Lithic::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :control_person

        # Timestamp of when the account holder was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created

        sig { params(created: Time).void }
        attr_writer :created

        # < Deprecated. Use control_person.email when user_type == "BUSINESS". Use
        # individual.phone_number when user_type == "INDIVIDUAL".
        #
        # > Primary email of Account Holder.
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # The type of KYC exemption for a KYC-Exempt Account Holder. "None" if the account
        # holder is not KYC-Exempt.
        sig do
          returns(
            T.nilable(Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ExemptionType::TaggedSymbol)
          )
        end
        attr_reader :exemption_type

        sig do
          params(
            exemption_type: Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ExemptionType::OrSymbol
          )
            .void
        end
        attr_writer :exemption_type

        # Customer-provided token that indicates a relationship with an object outside of
        # the Lithic ecosystem.
        sig { returns(T.nilable(String)) }
        attr_reader :external_id

        sig { params(external_id: String).void }
        attr_writer :external_id

        # Only present when user_type == "INDIVIDUAL". Information about the individual
        # for which the account is being opened and KYC is being run.
        sig { returns(T.nilable(Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Individual)) }
        attr_reader :individual

        sig do
          params(
            individual: T.any(
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Individual,
              Lithic::Internal::AnyHash
            )
          )
            .void
        end
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

        # Only present for "KYB_BASIC" and "KYC_ADVANCED" workflows. A list of documents
        # required for the account holder to be approved.
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
        # Note: `PENDING_RESUBMIT` and `PENDING_DOCUMENT` are only applicable for the
        # `ADVANCED` workflow.
        sig { returns(T.nilable(Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Status::TaggedSymbol)) }
        attr_reader :status

        sig { params(status: Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Status::OrSymbol).void }
        attr_writer :status

        # <Deprecated. Use verification_application.status_reasons> Reason for the
        # evaluation status.
        sig do
          returns(
            T.nilable(
              T::Array[Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol]
            )
          )
        end
        attr_reader :status_reasons

        sig do
          params(
            status_reasons: T::Array[Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::OrSymbol]
          )
            .void
        end
        attr_writer :status_reasons

        # The type of Account Holder. If the type is "INDIVIDUAL", the "individual"
        # attribute will be present.
        #
        # If the type is "BUSINESS" then the "business_entity", "control_person",
        # "beneficial_owner_individuals", "nature_of_business", and "website_url"
        # attributes will be present.
        sig do
          returns(
            T.nilable(Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::UserType::TaggedSymbol)
          )
        end
        attr_reader :user_type

        sig do
          params(user_type: Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::UserType::OrSymbol)
            .void
        end
        attr_writer :user_type

        # Information about the most recent identity verification attempt
        sig do
          returns(
            T.nilable(Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication)
          )
        end
        attr_reader :verification_application

        sig do
          params(
            verification_application: T.any(
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication,
              Lithic::Internal::AnyHash
            )
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
            account_token: String,
            beneficial_owner_entities: T::Array[T.any(Lithic::Models::KYBBusinessEntity, Lithic::Internal::AnyHash)],
            beneficial_owner_individuals: T::Array[
              T.any(
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::BeneficialOwnerIndividual,
                Lithic::Internal::AnyHash
              )
            ],
            business_account_token: String,
            business_entity: T.any(Lithic::Models::KYBBusinessEntity, Lithic::Internal::AnyHash),
            control_person: T.any(
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ControlPerson,
              Lithic::Internal::AnyHash
            ),
            created: Time,
            email: String,
            exemption_type: Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ExemptionType::OrSymbol,
            external_id: String,
            individual: T.any(
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Individual,
              Lithic::Internal::AnyHash
            ),
            nature_of_business: String,
            phone_number: String,
            required_documents: T::Array[T.any(Lithic::Models::RequiredDocument, Lithic::Internal::AnyHash)],
            status: Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Status::OrSymbol,
            status_reasons: T::Array[Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::OrSymbol],
            user_type: Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::UserType::OrSymbol,
            verification_application: T.any(
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication,
              Lithic::Internal::AnyHash
            ),
            website_url: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          token: nil,
          account_token: nil,
          beneficial_owner_entities: nil,
          beneficial_owner_individuals: nil,
          business_account_token: nil,
          business_entity: nil,
          control_person: nil,
          created: nil,
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
                account_token: String,
                beneficial_owner_entities: T::Array[Lithic::Models::KYBBusinessEntity],
                beneficial_owner_individuals: T::Array[Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::BeneficialOwnerIndividual],
                business_account_token: String,
                business_entity: Lithic::Models::KYBBusinessEntity,
                control_person: Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ControlPerson,
                created: Time,
                email: String,
                exemption_type: Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ExemptionType::TaggedSymbol,
                external_id: String,
                individual: Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Individual,
                nature_of_business: String,
                phone_number: String,
                required_documents: T::Array[Lithic::Models::RequiredDocument],
                status: Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Status::TaggedSymbol,
                status_reasons: T::Array[Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol],
                user_type: Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::UserType::TaggedSymbol,
                verification_application: Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication,
                website_url: String
              }
            )
        end
        def to_hash; end

        class BeneficialOwnerIndividual < Lithic::Internal::Type::BaseModel
          # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
          # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
          sig do
            returns(
              T.nilable(
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::BeneficialOwnerIndividual::Address
              )
            )
          end
          attr_reader :address

          sig do
            params(
              address: T.any(
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::BeneficialOwnerIndividual::Address,
                Lithic::Internal::AnyHash
              )
            )
              .void
          end
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

          sig do
            params(
              address: T.any(
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::BeneficialOwnerIndividual::Address,
                Lithic::Internal::AnyHash
              ),
              dob: String,
              email: String,
              first_name: String,
              last_name: String,
              phone_number: String
            )
              .returns(T.attached_class)
          end
          def self.new(
            address: nil,
            dob: nil,
            email: nil,
            first_name: nil,
            last_name: nil,
            phone_number: nil
          )
          end

          sig do
            override
              .returns(
                {
                  address: Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::BeneficialOwnerIndividual::Address,
                  dob: String,
                  email: String,
                  first_name: String,
                  government_id: String,
                  last_name: String,
                  phone_number: String
                }
              )
          end
          def to_hash; end

          class Address < Lithic::Internal::Type::BaseModel
            # Valid deliverable address (no PO boxes).
            sig { returns(String) }
            attr_accessor :address1

            # Name of city.
            sig { returns(String) }
            attr_accessor :city

            # Valid country code. Only USA is currently supported, entered in uppercase ISO
            # 3166-1 alpha-3 three-character format.
            sig { returns(String) }
            attr_accessor :country

            # Valid postal code. Only USA ZIP codes are currently supported, entered as a
            # five-digit ZIP or nine-digit ZIP+4.
            sig { returns(String) }
            attr_accessor :postal_code

            # Valid state code. Only USA state codes are currently supported, entered in
            # uppercase ISO 3166-2 two-character format.
            sig { returns(String) }
            attr_accessor :state

            # Unit or apartment number (if applicable).
            sig { returns(T.nilable(String)) }
            attr_reader :address2

            sig { params(address2: String).void }
            attr_writer :address2

            # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
            # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
            sig do
              params(
                address1: String,
                city: String,
                country: String,
                postal_code: String,
                state: String,
                address2: String
              )
                .returns(T.attached_class)
            end
            def self.new(address1:, city:, country:, postal_code:, state:, address2: nil); end

            sig do
              override
                .returns(
                  {
                    address1: String,
                    city: String,
                    country: String,
                    postal_code: String,
                    state: String,
                    address2: String
                  }
                )
            end
            def to_hash; end
          end
        end

        class ControlPerson < Lithic::Internal::Type::BaseModel
          # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
          # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
          sig do
            returns(
              T.nilable(Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ControlPerson::Address)
            )
          end
          attr_reader :address

          sig do
            params(
              address: T.any(
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ControlPerson::Address,
                Lithic::Internal::AnyHash
              )
            )
              .void
          end
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

          # Only present when user_type == "BUSINESS".
          #
          # An individual with significant responsibility for managing the legal entity
          # (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
          # Officer,
          #
          # Managing Member, General Partner, President, Vice President, or Treasurer). This
          # can be an executive, or someone who will have program-wide access
          #
          # to the cards that Lithic will provide. In some cases, this individual could also
          # be a beneficial owner listed above.
          sig do
            params(
              address: T.any(
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ControlPerson::Address,
                Lithic::Internal::AnyHash
              ),
              dob: String,
              email: String,
              first_name: String,
              last_name: String,
              phone_number: String
            )
              .returns(T.attached_class)
          end
          def self.new(
            address: nil,
            dob: nil,
            email: nil,
            first_name: nil,
            last_name: nil,
            phone_number: nil
          )
          end

          sig do
            override
              .returns(
                {
                  address: Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ControlPerson::Address,
                  dob: String,
                  email: String,
                  first_name: String,
                  government_id: String,
                  last_name: String,
                  phone_number: String
                }
              )
          end
          def to_hash; end

          class Address < Lithic::Internal::Type::BaseModel
            # Valid deliverable address (no PO boxes).
            sig { returns(String) }
            attr_accessor :address1

            # Name of city.
            sig { returns(String) }
            attr_accessor :city

            # Valid country code. Only USA is currently supported, entered in uppercase ISO
            # 3166-1 alpha-3 three-character format.
            sig { returns(String) }
            attr_accessor :country

            # Valid postal code. Only USA ZIP codes are currently supported, entered as a
            # five-digit ZIP or nine-digit ZIP+4.
            sig { returns(String) }
            attr_accessor :postal_code

            # Valid state code. Only USA state codes are currently supported, entered in
            # uppercase ISO 3166-2 two-character format.
            sig { returns(String) }
            attr_accessor :state

            # Unit or apartment number (if applicable).
            sig { returns(T.nilable(String)) }
            attr_reader :address2

            sig { params(address2: String).void }
            attr_writer :address2

            # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
            # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
            sig do
              params(
                address1: String,
                city: String,
                country: String,
                postal_code: String,
                state: String,
                address2: String
              )
                .returns(T.attached_class)
            end
            def self.new(address1:, city:, country:, postal_code:, state:, address2: nil); end

            sig do
              override
                .returns(
                  {
                    address1: String,
                    city: String,
                    country: String,
                    postal_code: String,
                    state: String,
                    address2: String
                  }
                )
            end
            def to_hash; end
          end
        end

        # The type of KYC exemption for a KYC-Exempt Account Holder. "None" if the account
        # holder is not KYC-Exempt.
        module ExemptionType
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ExemptionType) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ExemptionType::TaggedSymbol
              )
            end

          AUTHORIZED_USER =
            T.let(
              :AUTHORIZED_USER,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ExemptionType::TaggedSymbol
            )
          PREPAID_CARD_USER =
            T.let(
              :PREPAID_CARD_USER,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ExemptionType::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::ExemptionType::TaggedSymbol]
              )
          end
          def self.values; end
        end

        class Individual < Lithic::Internal::Type::BaseModel
          # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
          # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
          sig { returns(T.nilable(Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Individual::Address)) }
          attr_reader :address

          sig do
            params(
              address: T.any(
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Individual::Address,
                Lithic::Internal::AnyHash
              )
            )
              .void
          end
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

          # Only present when user_type == "INDIVIDUAL". Information about the individual
          # for which the account is being opened and KYC is being run.
          sig do
            params(
              address: T.any(
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Individual::Address,
                Lithic::Internal::AnyHash
              ),
              dob: String,
              email: String,
              first_name: String,
              last_name: String,
              phone_number: String
            )
              .returns(T.attached_class)
          end
          def self.new(
            address: nil,
            dob: nil,
            email: nil,
            first_name: nil,
            last_name: nil,
            phone_number: nil
          )
          end

          sig do
            override
              .returns(
                {
                  address: Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Individual::Address,
                  dob: String,
                  email: String,
                  first_name: String,
                  government_id: String,
                  last_name: String,
                  phone_number: String
                }
              )
          end
          def to_hash; end

          class Address < Lithic::Internal::Type::BaseModel
            # Valid deliverable address (no PO boxes).
            sig { returns(String) }
            attr_accessor :address1

            # Name of city.
            sig { returns(String) }
            attr_accessor :city

            # Valid country code. Only USA is currently supported, entered in uppercase ISO
            # 3166-1 alpha-3 three-character format.
            sig { returns(String) }
            attr_accessor :country

            # Valid postal code. Only USA ZIP codes are currently supported, entered as a
            # five-digit ZIP or nine-digit ZIP+4.
            sig { returns(String) }
            attr_accessor :postal_code

            # Valid state code. Only USA state codes are currently supported, entered in
            # uppercase ISO 3166-2 two-character format.
            sig { returns(String) }
            attr_accessor :state

            # Unit or apartment number (if applicable).
            sig { returns(T.nilable(String)) }
            attr_reader :address2

            sig { params(address2: String).void }
            attr_writer :address2

            # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
            # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
            sig do
              params(
                address1: String,
                city: String,
                country: String,
                postal_code: String,
                state: String,
                address2: String
              )
                .returns(T.attached_class)
            end
            def self.new(address1:, city:, country:, postal_code:, state:, address2: nil); end

            sig do
              override
                .returns(
                  {
                    address1: String,
                    city: String,
                    country: String,
                    postal_code: String,
                    state: String,
                    address2: String
                  }
                )
            end
            def to_hash; end
          end
        end

        # <Deprecated. Use verification_application.status instead>
        #
        # KYC and KYB evaluation states.
        #
        # Note: `PENDING_RESUBMIT` and `PENDING_DOCUMENT` are only applicable for the
        # `ADVANCED` workflow.
        module Status
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Status) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Status::TaggedSymbol
              )
            end

          ACCEPTED =
            T.let(:ACCEPTED, Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Status::TaggedSymbol)
          PENDING_DOCUMENT =
            T.let(
              :PENDING_DOCUMENT,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Status::TaggedSymbol
            )
          PENDING_RESUBMIT =
            T.let(
              :PENDING_RESUBMIT,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Status::TaggedSymbol
            )
          REJECTED =
            T.let(:REJECTED, Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Status::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::Status::TaggedSymbol])
          end
          def self.values; end
        end

        # Status Reasons for KYC/KYB enrollment states
        module StatusReason
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
              )
            end

          ADDRESS_VERIFICATION_FAILURE =
            T.let(
              :ADDRESS_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )
          AGE_THRESHOLD_FAILURE =
            T.let(
              :AGE_THRESHOLD_FAILURE,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )
          COMPLETE_VERIFICATION_FAILURE =
            T.let(
              :COMPLETE_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )
          DOB_VERIFICATION_FAILURE =
            T.let(
              :DOB_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )
          ID_VERIFICATION_FAILURE =
            T.let(
              :ID_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )
          MAX_DOCUMENT_ATTEMPTS =
            T.let(
              :MAX_DOCUMENT_ATTEMPTS,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )
          MAX_RESUBMISSION_ATTEMPTS =
            T.let(
              :MAX_RESUBMISSION_ATTEMPTS,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )
          NAME_VERIFICATION_FAILURE =
            T.let(
              :NAME_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )
          OTHER_VERIFICATION_FAILURE =
            T.let(
              :OTHER_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )
          RISK_THRESHOLD_FAILURE =
            T.let(
              :RISK_THRESHOLD_FAILURE,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )
          WATCHLIST_ALERT_FAILURE =
            T.let(
              :WATCHLIST_ALERT_FAILURE,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_ID_VERIFICATION_FAILURE =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_ID_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_ADDRESS_VERIFICATION_FAILURE =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_ADDRESS_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_NAME_VERIFICATION_FAILURE =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_NAME_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_BUSINESS_OFFICERS_NOT_MATCHED =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_BUSINESS_OFFICERS_NOT_MATCHED,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_SOS_FILING_INACTIVE =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_SOS_FILING_INACTIVE,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_SOS_NOT_MATCHED =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_SOS_NOT_MATCHED,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_CMRA_FAILURE =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_CMRA_FAILURE,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_WATCHLIST_FAILURE =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_WATCHLIST_FAILURE,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_REGISTERED_AGENT_FAILURE =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_REGISTERED_AGENT_FAILURE,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )
          CONTROL_PERSON_BLOCKLIST_ALERT_FAILURE =
            T.let(
              :CONTROL_PERSON_BLOCKLIST_ALERT_FAILURE,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )
          CONTROL_PERSON_ID_VERIFICATION_FAILURE =
            T.let(
              :CONTROL_PERSON_ID_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )
          CONTROL_PERSON_DOB_VERIFICATION_FAILURE =
            T.let(
              :CONTROL_PERSON_DOB_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )
          CONTROL_PERSON_NAME_VERIFICATION_FAILURE =
            T.let(
              :CONTROL_PERSON_NAME_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::StatusReason::TaggedSymbol]
              )
          end
          def self.values; end
        end

        # The type of Account Holder. If the type is "INDIVIDUAL", the "individual"
        # attribute will be present.
        #
        # If the type is "BUSINESS" then the "business_entity", "control_person",
        # "beneficial_owner_individuals", "nature_of_business", and "website_url"
        # attributes will be present.
        module UserType
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::UserType) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::UserType::TaggedSymbol
              )
            end

          BUSINESS =
            T.let(:BUSINESS, Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::UserType::TaggedSymbol)
          INDIVIDUAL =
            T.let(
              :INDIVIDUAL,
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::UserType::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::UserType::TaggedSymbol]
              )
          end
          def self.values; end
        end

        class VerificationApplication < Lithic::Internal::Type::BaseModel
          # Timestamp of when the application was created.
          sig { returns(Time) }
          attr_accessor :created

          # KYC and KYB evaluation states.
          #
          # Note: `PENDING_RESUBMIT` and `PENDING_DOCUMENT` are only applicable for the
          # `ADVANCED` workflow.
          sig do
            returns(
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # Reason for the evaluation status.
          sig do
            returns(
              T::Array[
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              ]
            )
          end
          attr_accessor :status_reasons

          # Timestamp of when the application was last updated.
          sig { returns(Time) }
          attr_accessor :updated

          # Information about the most recent identity verification attempt
          sig do
            params(
              created: Time,
              status: Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::Status::OrSymbol,
              status_reasons: T::Array[
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::OrSymbol
              ],
              updated: Time
            )
              .returns(T.attached_class)
          end
          def self.new(created:, status:, status_reasons:, updated:); end

          sig do
            override
              .returns(
                {
                  created: Time,
                  status: Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::Status::TaggedSymbol,
                  status_reasons: T::Array[
                    Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
                  ],
                  updated: Time
                }
              )
          end
          def to_hash; end

          # KYC and KYB evaluation states.
          #
          # Note: `PENDING_RESUBMIT` and `PENDING_DOCUMENT` are only applicable for the
          # `ADVANCED` workflow.
          module Status
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::Status)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::Status::TaggedSymbol
                )
              end

            ACCEPTED =
              T.let(
                :ACCEPTED,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::Status::TaggedSymbol
              )
            PENDING_DOCUMENT =
              T.let(
                :PENDING_DOCUMENT,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::Status::TaggedSymbol
              )
            PENDING_RESUBMIT =
              T.let(
                :PENDING_RESUBMIT,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::Status::TaggedSymbol
              )
            REJECTED =
              T.let(
                :REJECTED,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::Status::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[
                    Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::Status::TaggedSymbol
                  ]
                )
            end
            def self.values; end
          end

          # Status Reasons for KYC/KYB enrollment states
          module StatusReason
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
                )
              end

            ADDRESS_VERIFICATION_FAILURE =
              T.let(
                :ADDRESS_VERIFICATION_FAILURE,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            AGE_THRESHOLD_FAILURE =
              T.let(
                :AGE_THRESHOLD_FAILURE,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            COMPLETE_VERIFICATION_FAILURE =
              T.let(
                :COMPLETE_VERIFICATION_FAILURE,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            DOB_VERIFICATION_FAILURE =
              T.let(
                :DOB_VERIFICATION_FAILURE,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            ID_VERIFICATION_FAILURE =
              T.let(
                :ID_VERIFICATION_FAILURE,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            MAX_DOCUMENT_ATTEMPTS =
              T.let(
                :MAX_DOCUMENT_ATTEMPTS,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            MAX_RESUBMISSION_ATTEMPTS =
              T.let(
                :MAX_RESUBMISSION_ATTEMPTS,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            NAME_VERIFICATION_FAILURE =
              T.let(
                :NAME_VERIFICATION_FAILURE,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            OTHER_VERIFICATION_FAILURE =
              T.let(
                :OTHER_VERIFICATION_FAILURE,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            RISK_THRESHOLD_FAILURE =
              T.let(
                :RISK_THRESHOLD_FAILURE,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            WATCHLIST_ALERT_FAILURE =
              T.let(
                :WATCHLIST_ALERT_FAILURE,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            PRIMARY_BUSINESS_ENTITY_ID_VERIFICATION_FAILURE =
              T.let(
                :PRIMARY_BUSINESS_ENTITY_ID_VERIFICATION_FAILURE,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            PRIMARY_BUSINESS_ENTITY_ADDRESS_VERIFICATION_FAILURE =
              T.let(
                :PRIMARY_BUSINESS_ENTITY_ADDRESS_VERIFICATION_FAILURE,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            PRIMARY_BUSINESS_ENTITY_NAME_VERIFICATION_FAILURE =
              T.let(
                :PRIMARY_BUSINESS_ENTITY_NAME_VERIFICATION_FAILURE,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            PRIMARY_BUSINESS_ENTITY_BUSINESS_OFFICERS_NOT_MATCHED =
              T.let(
                :PRIMARY_BUSINESS_ENTITY_BUSINESS_OFFICERS_NOT_MATCHED,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            PRIMARY_BUSINESS_ENTITY_SOS_FILING_INACTIVE =
              T.let(
                :PRIMARY_BUSINESS_ENTITY_SOS_FILING_INACTIVE,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            PRIMARY_BUSINESS_ENTITY_SOS_NOT_MATCHED =
              T.let(
                :PRIMARY_BUSINESS_ENTITY_SOS_NOT_MATCHED,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            PRIMARY_BUSINESS_ENTITY_CMRA_FAILURE =
              T.let(
                :PRIMARY_BUSINESS_ENTITY_CMRA_FAILURE,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            PRIMARY_BUSINESS_ENTITY_WATCHLIST_FAILURE =
              T.let(
                :PRIMARY_BUSINESS_ENTITY_WATCHLIST_FAILURE,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            PRIMARY_BUSINESS_ENTITY_REGISTERED_AGENT_FAILURE =
              T.let(
                :PRIMARY_BUSINESS_ENTITY_REGISTERED_AGENT_FAILURE,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            CONTROL_PERSON_BLOCKLIST_ALERT_FAILURE =
              T.let(
                :CONTROL_PERSON_BLOCKLIST_ALERT_FAILURE,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            CONTROL_PERSON_ID_VERIFICATION_FAILURE =
              T.let(
                :CONTROL_PERSON_ID_VERIFICATION_FAILURE,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            CONTROL_PERSON_DOB_VERIFICATION_FAILURE =
              T.let(
                :CONTROL_PERSON_DOB_VERIFICATION_FAILURE,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            CONTROL_PERSON_NAME_VERIFICATION_FAILURE =
              T.let(
                :CONTROL_PERSON_NAME_VERIFICATION_FAILURE,
                Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[
                    Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse::VerificationApplication::StatusReason::TaggedSymbol
                  ]
                )
            end
            def self.values; end
          end
        end
      end

      class PatchResponse < Lithic::Internal::Type::BaseModel
        # The token for the account holder that was updated
        sig { returns(T.nilable(String)) }
        attr_reader :token

        sig { params(token: String).void }
        attr_writer :token

        # The address for the account holder
        sig { returns(T.nilable(Lithic::Models::AccountHolderUpdateResponse::PatchResponse::Address)) }
        attr_reader :address

        sig do
          params(
            address: T.any(Lithic::Models::AccountHolderUpdateResponse::PatchResponse::Address, Lithic::Internal::AnyHash)
          )
            .void
        end
        attr_writer :address

        # The token for the business account that the account holder is associated with
        sig { returns(T.nilable(String)) }
        attr_reader :business_account_token

        sig { params(business_account_token: String).void }
        attr_writer :business_account_token

        # The email for the account holder
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # The first name for the account holder
        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { params(first_name: String).void }
        attr_writer :first_name

        # The last name for the account holder
        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { params(last_name: String).void }
        attr_writer :last_name

        # The legal business name for the account holder
        sig { returns(T.nilable(String)) }
        attr_reader :legal_business_name

        sig { params(legal_business_name: String).void }
        attr_writer :legal_business_name

        # The phone_number for the account holder
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        sig do
          params(
            token: String,
            address: T.any(Lithic::Models::AccountHolderUpdateResponse::PatchResponse::Address, Lithic::Internal::AnyHash),
            business_account_token: String,
            email: String,
            first_name: String,
            last_name: String,
            legal_business_name: String,
            phone_number: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          token: nil,
          address: nil,
          business_account_token: nil,
          email: nil,
          first_name: nil,
          last_name: nil,
          legal_business_name: nil,
          phone_number: nil
        ); end
        sig do
          override
            .returns(
              {
                token: String,
                address: Lithic::Models::AccountHolderUpdateResponse::PatchResponse::Address,
                business_account_token: String,
                email: String,
                first_name: String,
                last_name: String,
                legal_business_name: String,
                phone_number: String
              }
            )
        end
        def to_hash; end

        class Address < Lithic::Internal::Type::BaseModel
          # Valid deliverable address (no PO boxes).
          sig { returns(String) }
          attr_accessor :address1

          # Name of city.
          sig { returns(String) }
          attr_accessor :city

          # Valid country code. Only USA is currently supported, entered in uppercase ISO
          # 3166-1 alpha-3 three-character format.
          sig { returns(String) }
          attr_accessor :country

          # Valid postal code. Only USA ZIP codes are currently supported, entered as a
          # five-digit ZIP or nine-digit ZIP+4.
          sig { returns(String) }
          attr_accessor :postal_code

          # Valid state code. Only USA state codes are currently supported, entered in
          # uppercase ISO 3166-2 two-character format.
          sig { returns(String) }
          attr_accessor :state

          # Unit or apartment number (if applicable).
          sig { returns(T.nilable(String)) }
          attr_reader :address2

          sig { params(address2: String).void }
          attr_writer :address2

          # The address for the account holder
          sig do
            params(
              address1: String,
              city: String,
              country: String,
              postal_code: String,
              state: String,
              address2: String
            )
              .returns(T.attached_class)
          end
          def self.new(address1:, city:, country:, postal_code:, state:, address2: nil); end

          sig do
            override
              .returns(
                {
                  address1: String,
                  city: String,
                  country: String,
                  postal_code: String,
                  state: String,
                  address2: String
                }
              )
          end
          def to_hash; end
        end
      end

      sig do
        override
          .returns(
            [Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse, Lithic::Models::AccountHolderUpdateResponse::PatchResponse]
          )
      end
      def self.variants; end
    end
  end
end
