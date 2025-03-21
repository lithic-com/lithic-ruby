# typed: strong

module Lithic
  module Models
    class AccountHolderSimulateEnrollmentReviewResponse < Lithic::BaseModel
      # Globally unique identifier for the account holder.
      sig { returns(T.nilable(String)) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # Globally unique identifier for the account.
      sig { returns(T.nilable(String)) }
      def account_token
      end

      sig { params(_: String).returns(String) }
      def account_token=(_)
      end

      # Only present when user_type == "BUSINESS". List of all entities with >25%
      #   ownership in the company.
      sig { returns(T.nilable(T::Array[Lithic::Models::KYBBusinessEntity])) }
      def beneficial_owner_entities
      end

      sig do
        params(_: T::Array[T.any(Lithic::Models::KYBBusinessEntity, Lithic::Util::AnyHash)])
          .returns(T::Array[T.any(Lithic::Models::KYBBusinessEntity, Lithic::Util::AnyHash)])
      end
      def beneficial_owner_entities=(_)
      end

      # Only present when user_type == "BUSINESS". List of all individuals with >25%
      #   ownership in the company.
      sig do
        returns(
          T.nilable(
            T::Array[Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::BeneficialOwnerIndividual]
          )
        )
      end
      def beneficial_owner_individuals
      end

      sig do
        params(
          _: T::Array[
          T.any(
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::BeneficialOwnerIndividual,
            Lithic::Util::AnyHash
          )
          ]
        )
          .returns(
            T::Array[
            T.any(
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::BeneficialOwnerIndividual,
              Lithic::Util::AnyHash
            )
            ]
          )
      end
      def beneficial_owner_individuals=(_)
      end

      # Only applicable for customers using the KYC-Exempt workflow to enroll authorized
      #   users of businesses. Pass the account_token of the enrolled business associated
      #   with the AUTHORIZED_USER in this field.
      sig { returns(T.nilable(String)) }
      def business_account_token
      end

      sig { params(_: String).returns(String) }
      def business_account_token=(_)
      end

      # Only present when user_type == "BUSINESS". Information about the business for
      #   which the account is being opened and KYB is being run.
      sig { returns(T.nilable(Lithic::Models::KYBBusinessEntity)) }
      def business_entity
      end

      sig do
        params(_: T.any(Lithic::Models::KYBBusinessEntity, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::KYBBusinessEntity, Lithic::Util::AnyHash))
      end
      def business_entity=(_)
      end

      # Only present when user_type == "BUSINESS".
      #
      #   An individual with significant responsibility for managing the legal entity
      #   (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
      #   Officer,
      #
      #   Managing Member, General Partner, President, Vice President, or Treasurer). This
      #   can be an executive, or someone who will have program-wide access
      #
      #   to the cards that Lithic will provide. In some cases, this individual could also
      #   be a beneficial owner listed above.
      sig { returns(T.nilable(Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ControlPerson)) }
      def control_person
      end

      sig do
        params(
          _: T.any(Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ControlPerson, Lithic::Util::AnyHash)
        )
          .returns(
            T.any(Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ControlPerson, Lithic::Util::AnyHash)
          )
      end
      def control_person=(_)
      end

      # Timestamp of when the account holder was created.
      sig { returns(T.nilable(Time)) }
      def created
      end

      sig { params(_: Time).returns(Time) }
      def created=(_)
      end

      # < Deprecated. Use control_person.email when user_type == "BUSINESS". Use
      #   individual.phone_number when user_type == "INDIVIDUAL".
      #
      #   > Primary email of Account Holder.
      sig { returns(T.nilable(String)) }
      def email
      end

      sig { params(_: String).returns(String) }
      def email=(_)
      end

      # The type of KYC exemption for a KYC-Exempt Account Holder. "None" if the account
      #   holder is not KYC-Exempt.
      sig do
        returns(
          T.nilable(Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ExemptionType::TaggedSymbol)
        )
      end
      def exemption_type
      end

      sig do
        params(_: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ExemptionType::OrSymbol)
          .returns(Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ExemptionType::OrSymbol)
      end
      def exemption_type=(_)
      end

      # Customer-provided token that indicates a relationship with an object outside of
      #   the Lithic ecosystem.
      sig { returns(T.nilable(String)) }
      def external_id
      end

      sig { params(_: String).returns(String) }
      def external_id=(_)
      end

      # Only present when user_type == "INDIVIDUAL". Information about the individual
      #   for which the account is being opened and KYC is being run.
      sig { returns(T.nilable(Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Individual)) }
      def individual
      end

      sig do
        params(
          _: T.any(Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Individual, Lithic::Util::AnyHash)
        )
          .returns(
            T.any(Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Individual, Lithic::Util::AnyHash)
          )
      end
      def individual=(_)
      end

      # Only present when user_type == "BUSINESS". User-submitted description of the
      #   business.
      sig { returns(T.nilable(String)) }
      def nature_of_business
      end

      sig { params(_: String).returns(String) }
      def nature_of_business=(_)
      end

      # < Deprecated. Use control_person.phone_number when user_type == "BUSINESS". Use
      #   individual.phone_number when user_type == "INDIVIDUAL".
      #
      #   > Primary phone of Account Holder, entered in E.164 format.
      sig { returns(T.nilable(String)) }
      def phone_number
      end

      sig { params(_: String).returns(String) }
      def phone_number=(_)
      end

      # Only present for "KYB_BASIC" and "KYC_ADVANCED" workflows. A list of documents
      #   required for the account holder to be approved.
      sig { returns(T.nilable(T::Array[Lithic::Models::RequiredDocument])) }
      def required_documents
      end

      sig do
        params(_: T::Array[T.any(Lithic::Models::RequiredDocument, Lithic::Util::AnyHash)])
          .returns(T::Array[T.any(Lithic::Models::RequiredDocument, Lithic::Util::AnyHash)])
      end
      def required_documents=(_)
      end

      # <Deprecated. Use verification_application.status instead>
      #
      #   KYC and KYB evaluation states.
      #
      #   Note: `PENDING_RESUBMIT` and `PENDING_DOCUMENT` are only applicable for the
      #   `ADVANCED` workflow.
      sig { returns(T.nilable(Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Status::TaggedSymbol)) }
      def status
      end

      sig do
        params(_: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Status::OrSymbol)
          .returns(Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Status::OrSymbol)
      end
      def status=(_)
      end

      # <Deprecated. Use verification_application.status_reasons> Reason for the
      #   evaluation status.
      sig do
        returns(
          T.nilable(
            T::Array[Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol]
          )
        )
      end
      def status_reasons
      end

      sig do
        params(_: T::Array[Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::OrSymbol])
          .returns(T::Array[Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::OrSymbol])
      end
      def status_reasons=(_)
      end

      # The type of Account Holder. If the type is "INDIVIDUAL", the "individual"
      #   attribute will be present.
      #
      #   If the type is "BUSINESS" then the "business_entity", "control_person",
      #   "beneficial_owner_individuals", "beneficial_owner_entities",
      #
      #   "nature_of_business", and "website_url" attributes will be present.
      sig { returns(T.nilable(Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::UserType::TaggedSymbol)) }
      def user_type
      end

      sig do
        params(_: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::UserType::OrSymbol)
          .returns(Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::UserType::OrSymbol)
      end
      def user_type=(_)
      end

      # Information about the most recent identity verification attempt
      sig { returns(T.nilable(Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication)) }
      def verification_application
      end

      sig do
        params(
          _: T.any(
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication,
            Lithic::Util::AnyHash
          )
        )
          .returns(
            T.any(
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication,
              Lithic::Util::AnyHash
            )
          )
      end
      def verification_application=(_)
      end

      # Only present when user_type == "BUSINESS". Business's primary website.
      sig { returns(T.nilable(String)) }
      def website_url
      end

      sig { params(_: String).returns(String) }
      def website_url=(_)
      end

      sig do
        params(
          token: String,
          account_token: String,
          beneficial_owner_entities: T::Array[T.any(Lithic::Models::KYBBusinessEntity, Lithic::Util::AnyHash)],
          beneficial_owner_individuals: T::Array[
          T.any(
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::BeneficialOwnerIndividual,
            Lithic::Util::AnyHash
          )
          ],
          business_account_token: String,
          business_entity: T.any(Lithic::Models::KYBBusinessEntity, Lithic::Util::AnyHash),
          control_person: T.any(Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ControlPerson, Lithic::Util::AnyHash),
          created: Time,
          email: String,
          exemption_type: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ExemptionType::OrSymbol,
          external_id: String,
          individual: T.any(Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Individual, Lithic::Util::AnyHash),
          nature_of_business: String,
          phone_number: String,
          required_documents: T::Array[T.any(Lithic::Models::RequiredDocument, Lithic::Util::AnyHash)],
          status: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Status::OrSymbol,
          status_reasons: T::Array[Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::OrSymbol],
          user_type: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::UserType::OrSymbol,
          verification_application: T.any(
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication,
            Lithic::Util::AnyHash
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
      )
      end

      sig do
        override
          .returns(
            {
              token: String,
              account_token: String,
              beneficial_owner_entities: T::Array[Lithic::Models::KYBBusinessEntity],
              beneficial_owner_individuals: T::Array[Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::BeneficialOwnerIndividual],
              business_account_token: String,
              business_entity: Lithic::Models::KYBBusinessEntity,
              control_person: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ControlPerson,
              created: Time,
              email: String,
              exemption_type: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ExemptionType::TaggedSymbol,
              external_id: String,
              individual: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Individual,
              nature_of_business: String,
              phone_number: String,
              required_documents: T::Array[Lithic::Models::RequiredDocument],
              status: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Status::TaggedSymbol,
              status_reasons: T::Array[Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol],
              user_type: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::UserType::TaggedSymbol,
              verification_application: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication,
              website_url: String
            }
          )
      end
      def to_hash
      end

      class BeneficialOwnerIndividual < Lithic::BaseModel
        # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        sig do
          returns(
            T.nilable(
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::BeneficialOwnerIndividual::Address
            )
          )
        end
        def address
        end

        sig do
          params(
            _: T.any(
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::BeneficialOwnerIndividual::Address,
              Lithic::Util::AnyHash
            )
          )
            .returns(
              T.any(
                Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::BeneficialOwnerIndividual::Address,
                Lithic::Util::AnyHash
              )
            )
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

        sig do
          params(
            address: T.any(
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::BeneficialOwnerIndividual::Address,
              Lithic::Util::AnyHash
            ),
            dob: String,
            email: String,
            first_name: String,
            last_name: String,
            phone_number: String
          )
            .returns(T.attached_class)
        end
        def self.new(address: nil, dob: nil, email: nil, first_name: nil, last_name: nil, phone_number: nil)
        end

        sig do
          override
            .returns(
              {
                address: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::BeneficialOwnerIndividual::Address,
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

        class Address < Lithic::BaseModel
          # Valid deliverable address (no PO boxes).
          sig { returns(String) }
          def address1
          end

          sig { params(_: String).returns(String) }
          def address1=(_)
          end

          # Name of city.
          sig { returns(String) }
          def city
          end

          sig { params(_: String).returns(String) }
          def city=(_)
          end

          # Valid country code. Only USA is currently supported, entered in uppercase ISO
          #   3166-1 alpha-3 three-character format.
          sig { returns(String) }
          def country
          end

          sig { params(_: String).returns(String) }
          def country=(_)
          end

          # Valid postal code. Only USA ZIP codes are currently supported, entered as a
          #   five-digit ZIP or nine-digit ZIP+4.
          sig { returns(String) }
          def postal_code
          end

          sig { params(_: String).returns(String) }
          def postal_code=(_)
          end

          # Valid state code. Only USA state codes are currently supported, entered in
          #   uppercase ISO 3166-2 two-character format.
          sig { returns(String) }
          def state
          end

          sig { params(_: String).returns(String) }
          def state=(_)
          end

          # Unit or apartment number (if applicable).
          sig { returns(T.nilable(String)) }
          def address2
          end

          sig { params(_: String).returns(String) }
          def address2=(_)
          end

          # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
          #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
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
          def self.new(address1:, city:, country:, postal_code:, state:, address2: nil)
          end

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
          def to_hash
          end
        end
      end

      class ControlPerson < Lithic::BaseModel
        # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        sig { returns(T.nilable(Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ControlPerson::Address)) }
        def address
        end

        sig do
          params(
            _: T.any(
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ControlPerson::Address,
              Lithic::Util::AnyHash
            )
          )
            .returns(
              T.any(
                Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ControlPerson::Address,
                Lithic::Util::AnyHash
              )
            )
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

        # Only present when user_type == "BUSINESS".
        #
        #   An individual with significant responsibility for managing the legal entity
        #   (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
        #   Officer,
        #
        #   Managing Member, General Partner, President, Vice President, or Treasurer). This
        #   can be an executive, or someone who will have program-wide access
        #
        #   to the cards that Lithic will provide. In some cases, this individual could also
        #   be a beneficial owner listed above.
        sig do
          params(
            address: T.any(
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ControlPerson::Address,
              Lithic::Util::AnyHash
            ),
            dob: String,
            email: String,
            first_name: String,
            last_name: String,
            phone_number: String
          )
            .returns(T.attached_class)
        end
        def self.new(address: nil, dob: nil, email: nil, first_name: nil, last_name: nil, phone_number: nil)
        end

        sig do
          override
            .returns(
              {
                address: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ControlPerson::Address,
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

        class Address < Lithic::BaseModel
          # Valid deliverable address (no PO boxes).
          sig { returns(String) }
          def address1
          end

          sig { params(_: String).returns(String) }
          def address1=(_)
          end

          # Name of city.
          sig { returns(String) }
          def city
          end

          sig { params(_: String).returns(String) }
          def city=(_)
          end

          # Valid country code. Only USA is currently supported, entered in uppercase ISO
          #   3166-1 alpha-3 three-character format.
          sig { returns(String) }
          def country
          end

          sig { params(_: String).returns(String) }
          def country=(_)
          end

          # Valid postal code. Only USA ZIP codes are currently supported, entered as a
          #   five-digit ZIP or nine-digit ZIP+4.
          sig { returns(String) }
          def postal_code
          end

          sig { params(_: String).returns(String) }
          def postal_code=(_)
          end

          # Valid state code. Only USA state codes are currently supported, entered in
          #   uppercase ISO 3166-2 two-character format.
          sig { returns(String) }
          def state
          end

          sig { params(_: String).returns(String) }
          def state=(_)
          end

          # Unit or apartment number (if applicable).
          sig { returns(T.nilable(String)) }
          def address2
          end

          sig { params(_: String).returns(String) }
          def address2=(_)
          end

          # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
          #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
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
          def self.new(address1:, city:, country:, postal_code:, state:, address2: nil)
          end

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
          def to_hash
          end
        end
      end

      # The type of KYC exemption for a KYC-Exempt Account Holder. "None" if the account
      #   holder is not KYC-Exempt.
      module ExemptionType
        extend Lithic::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ExemptionType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ExemptionType::TaggedSymbol) }

        AUTHORIZED_USER =
          T.let(
            :AUTHORIZED_USER,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ExemptionType::TaggedSymbol
          )
        PREPAID_CARD_USER =
          T.let(
            :PREPAID_CARD_USER,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ExemptionType::TaggedSymbol
          )

        class << self
          sig do
            override
              .returns(
                T::Array[Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ExemptionType::TaggedSymbol]
              )
          end
          def values
          end
        end
      end

      class Individual < Lithic::BaseModel
        # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
        sig { returns(T.nilable(Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Individual::Address)) }
        def address
        end

        sig do
          params(
            _: T.any(
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Individual::Address,
              Lithic::Util::AnyHash
            )
          )
            .returns(
              T.any(
                Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Individual::Address,
                Lithic::Util::AnyHash
              )
            )
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

        # Only present when user_type == "INDIVIDUAL". Information about the individual
        #   for which the account is being opened and KYC is being run.
        sig do
          params(
            address: T.any(
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Individual::Address,
              Lithic::Util::AnyHash
            ),
            dob: String,
            email: String,
            first_name: String,
            last_name: String,
            phone_number: String
          )
            .returns(T.attached_class)
        end
        def self.new(address: nil, dob: nil, email: nil, first_name: nil, last_name: nil, phone_number: nil)
        end

        sig do
          override
            .returns(
              {
                address: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Individual::Address,
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

        class Address < Lithic::BaseModel
          # Valid deliverable address (no PO boxes).
          sig { returns(String) }
          def address1
          end

          sig { params(_: String).returns(String) }
          def address1=(_)
          end

          # Name of city.
          sig { returns(String) }
          def city
          end

          sig { params(_: String).returns(String) }
          def city=(_)
          end

          # Valid country code. Only USA is currently supported, entered in uppercase ISO
          #   3166-1 alpha-3 three-character format.
          sig { returns(String) }
          def country
          end

          sig { params(_: String).returns(String) }
          def country=(_)
          end

          # Valid postal code. Only USA ZIP codes are currently supported, entered as a
          #   five-digit ZIP or nine-digit ZIP+4.
          sig { returns(String) }
          def postal_code
          end

          sig { params(_: String).returns(String) }
          def postal_code=(_)
          end

          # Valid state code. Only USA state codes are currently supported, entered in
          #   uppercase ISO 3166-2 two-character format.
          sig { returns(String) }
          def state
          end

          sig { params(_: String).returns(String) }
          def state=(_)
          end

          # Unit or apartment number (if applicable).
          sig { returns(T.nilable(String)) }
          def address2
          end

          sig { params(_: String).returns(String) }
          def address2=(_)
          end

          # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
          #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
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
          def self.new(address1:, city:, country:, postal_code:, state:, address2: nil)
          end

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
          def to_hash
          end
        end
      end

      # <Deprecated. Use verification_application.status instead>
      #
      #   KYC and KYB evaluation states.
      #
      #   Note: `PENDING_RESUBMIT` and `PENDING_DOCUMENT` are only applicable for the
      #   `ADVANCED` workflow.
      module Status
        extend Lithic::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Status::TaggedSymbol) }

        ACCEPTED =
          T.let(:ACCEPTED, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Status::TaggedSymbol)
        PENDING_DOCUMENT =
          T.let(
            :PENDING_DOCUMENT,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Status::TaggedSymbol
          )
        PENDING_RESUBMIT =
          T.let(
            :PENDING_RESUBMIT,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Status::TaggedSymbol
          )
        REJECTED =
          T.let(:REJECTED, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Status::TaggedSymbol)

        class << self
          sig do
            override
              .returns(T::Array[Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Status::TaggedSymbol])
          end
          def values
          end
        end
      end

      # Status Reasons for KYC/KYB enrollment states
      module StatusReason
        extend Lithic::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol) }

        ADDRESS_VERIFICATION_FAILURE =
          T.let(
            :ADDRESS_VERIFICATION_FAILURE,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )
        AGE_THRESHOLD_FAILURE =
          T.let(
            :AGE_THRESHOLD_FAILURE,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )
        COMPLETE_VERIFICATION_FAILURE =
          T.let(
            :COMPLETE_VERIFICATION_FAILURE,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )
        DOB_VERIFICATION_FAILURE =
          T.let(
            :DOB_VERIFICATION_FAILURE,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )
        ID_VERIFICATION_FAILURE =
          T.let(
            :ID_VERIFICATION_FAILURE,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )
        MAX_DOCUMENT_ATTEMPTS =
          T.let(
            :MAX_DOCUMENT_ATTEMPTS,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )
        MAX_RESUBMISSION_ATTEMPTS =
          T.let(
            :MAX_RESUBMISSION_ATTEMPTS,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )
        NAME_VERIFICATION_FAILURE =
          T.let(
            :NAME_VERIFICATION_FAILURE,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )
        OTHER_VERIFICATION_FAILURE =
          T.let(
            :OTHER_VERIFICATION_FAILURE,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )
        RISK_THRESHOLD_FAILURE =
          T.let(
            :RISK_THRESHOLD_FAILURE,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )
        WATCHLIST_ALERT_FAILURE =
          T.let(
            :WATCHLIST_ALERT_FAILURE,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_ID_VERIFICATION_FAILURE =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_ID_VERIFICATION_FAILURE,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_ADDRESS_VERIFICATION_FAILURE =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_ADDRESS_VERIFICATION_FAILURE,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_NAME_VERIFICATION_FAILURE =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_NAME_VERIFICATION_FAILURE,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_BUSINESS_OFFICERS_NOT_MATCHED =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_BUSINESS_OFFICERS_NOT_MATCHED,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_SOS_FILING_INACTIVE =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_SOS_FILING_INACTIVE,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_SOS_NOT_MATCHED =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_SOS_NOT_MATCHED,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_CMRA_FAILURE =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_CMRA_FAILURE,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_WATCHLIST_FAILURE =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_WATCHLIST_FAILURE,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_REGISTERED_AGENT_FAILURE =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_REGISTERED_AGENT_FAILURE,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )
        CONTROL_PERSON_BLOCKLIST_ALERT_FAILURE =
          T.let(
            :CONTROL_PERSON_BLOCKLIST_ALERT_FAILURE,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )
        CONTROL_PERSON_ID_VERIFICATION_FAILURE =
          T.let(
            :CONTROL_PERSON_ID_VERIFICATION_FAILURE,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )
        CONTROL_PERSON_DOB_VERIFICATION_FAILURE =
          T.let(
            :CONTROL_PERSON_DOB_VERIFICATION_FAILURE,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )
        CONTROL_PERSON_NAME_VERIFICATION_FAILURE =
          T.let(
            :CONTROL_PERSON_NAME_VERIFICATION_FAILURE,
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol
          )

        class << self
          sig do
            override
              .returns(
                T::Array[Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason::TaggedSymbol]
              )
          end
          def values
          end
        end
      end

      # The type of Account Holder. If the type is "INDIVIDUAL", the "individual"
      #   attribute will be present.
      #
      #   If the type is "BUSINESS" then the "business_entity", "control_person",
      #   "beneficial_owner_individuals", "beneficial_owner_entities",
      #
      #   "nature_of_business", and "website_url" attributes will be present.
      module UserType
        extend Lithic::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::UserType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::UserType::TaggedSymbol) }

        BUSINESS =
          T.let(:BUSINESS, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::UserType::TaggedSymbol)
        INDIVIDUAL =
          T.let(:INDIVIDUAL, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::UserType::TaggedSymbol)

        class << self
          sig do
            override
              .returns(T::Array[Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::UserType::TaggedSymbol])
          end
          def values
          end
        end
      end

      class VerificationApplication < Lithic::BaseModel
        # Timestamp of when the application was created.
        sig { returns(Time) }
        def created
        end

        sig { params(_: Time).returns(Time) }
        def created=(_)
        end

        # KYC and KYB evaluation states.
        #
        #   Note: `PENDING_RESUBMIT` and `PENDING_DOCUMENT` are only applicable for the
        #   `ADVANCED` workflow.
        sig do
          returns(
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::Status::TaggedSymbol
          )
        end
        def status
        end

        sig do
          params(
            _: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::Status::TaggedSymbol
          )
            .returns(
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::Status::TaggedSymbol
            )
        end
        def status=(_)
        end

        # Reason for the evaluation status.
        sig do
          returns(
            T::Array[
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            ]
          )
        end
        def status_reasons
        end

        sig do
          params(
            _: T::Array[
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            ]
          )
            .returns(
              T::Array[
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
              ]
            )
        end
        def status_reasons=(_)
        end

        # Timestamp of when the application was last updated.
        sig { returns(Time) }
        def updated
        end

        sig { params(_: Time).returns(Time) }
        def updated=(_)
        end

        # Information about the most recent identity verification attempt
        sig do
          params(
            created: Time,
            status: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::Status::OrSymbol,
            status_reasons: T::Array[
            Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::OrSymbol
            ],
            updated: Time
          )
            .returns(T.attached_class)
        end
        def self.new(created:, status:, status_reasons:, updated:)
        end

        sig do
          override
            .returns(
              {
                created: Time,
                status: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::Status::TaggedSymbol,
                status_reasons: T::Array[
                Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
                ],
                updated: Time
              }
            )
        end
        def to_hash
        end

        # KYC and KYB evaluation states.
        #
        #   Note: `PENDING_RESUBMIT` and `PENDING_DOCUMENT` are only applicable for the
        #   `ADVANCED` workflow.
        module Status
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::Status)
            end
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::Status::TaggedSymbol
              )
            end

          ACCEPTED =
            T.let(
              :ACCEPTED,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::Status::TaggedSymbol
            )
          PENDING_DOCUMENT =
            T.let(
              :PENDING_DOCUMENT,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::Status::TaggedSymbol
            )
          PENDING_RESUBMIT =
            T.let(
              :PENDING_RESUBMIT,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :REJECTED,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::Status::TaggedSymbol
            )

          class << self
            sig do
              override
                .returns(
                  T::Array[
                  Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::Status::TaggedSymbol
                  ]
                )
            end
            def values
            end
          end
        end

        # Status Reasons for KYC/KYB enrollment states
        module StatusReason
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason)
            end
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
              )
            end

          ADDRESS_VERIFICATION_FAILURE =
            T.let(
              :ADDRESS_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )
          AGE_THRESHOLD_FAILURE =
            T.let(
              :AGE_THRESHOLD_FAILURE,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )
          COMPLETE_VERIFICATION_FAILURE =
            T.let(
              :COMPLETE_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )
          DOB_VERIFICATION_FAILURE =
            T.let(
              :DOB_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )
          ID_VERIFICATION_FAILURE =
            T.let(
              :ID_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )
          MAX_DOCUMENT_ATTEMPTS =
            T.let(
              :MAX_DOCUMENT_ATTEMPTS,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )
          MAX_RESUBMISSION_ATTEMPTS =
            T.let(
              :MAX_RESUBMISSION_ATTEMPTS,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )
          NAME_VERIFICATION_FAILURE =
            T.let(
              :NAME_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )
          OTHER_VERIFICATION_FAILURE =
            T.let(
              :OTHER_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )
          RISK_THRESHOLD_FAILURE =
            T.let(
              :RISK_THRESHOLD_FAILURE,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )
          WATCHLIST_ALERT_FAILURE =
            T.let(
              :WATCHLIST_ALERT_FAILURE,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_ID_VERIFICATION_FAILURE =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_ID_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_ADDRESS_VERIFICATION_FAILURE =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_ADDRESS_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_NAME_VERIFICATION_FAILURE =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_NAME_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_BUSINESS_OFFICERS_NOT_MATCHED =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_BUSINESS_OFFICERS_NOT_MATCHED,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_SOS_FILING_INACTIVE =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_SOS_FILING_INACTIVE,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_SOS_NOT_MATCHED =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_SOS_NOT_MATCHED,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_CMRA_FAILURE =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_CMRA_FAILURE,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_WATCHLIST_FAILURE =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_WATCHLIST_FAILURE,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_REGISTERED_AGENT_FAILURE =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_REGISTERED_AGENT_FAILURE,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )
          CONTROL_PERSON_BLOCKLIST_ALERT_FAILURE =
            T.let(
              :CONTROL_PERSON_BLOCKLIST_ALERT_FAILURE,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )
          CONTROL_PERSON_ID_VERIFICATION_FAILURE =
            T.let(
              :CONTROL_PERSON_ID_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )
          CONTROL_PERSON_DOB_VERIFICATION_FAILURE =
            T.let(
              :CONTROL_PERSON_DOB_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )
          CONTROL_PERSON_NAME_VERIFICATION_FAILURE =
            T.let(
              :CONTROL_PERSON_NAME_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
            )

          class << self
            sig do
              override
                .returns(
                  T::Array[
                  Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication::StatusReason::TaggedSymbol
                  ]
                )
            end
            def values
            end
          end
        end
      end
    end
  end
end
