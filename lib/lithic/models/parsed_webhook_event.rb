# frozen_string_literal: true

module Lithic
  module Models
    # KYB payload for an updated account holder.
    module ParsedWebhookEvent
      extend Lithic::Internal::Type::Union

      variant -> { Lithic::AccountHolderCreatedWebhookEvent }

      # KYB payload for an updated account holder.
      variant -> { Lithic::ParsedWebhookEvent::KYBPayload }

      # KYC payload for an updated account holder.
      variant -> { Lithic::ParsedWebhookEvent::KYCPayload }

      # Legacy payload for an updated account holder.
      variant -> { Lithic::ParsedWebhookEvent::LegacyPayload }

      variant -> { Lithic::AccountHolderVerificationWebhookEvent }

      variant -> { Lithic::AccountHolderDocumentUpdatedWebhookEvent }

      variant -> { Lithic::CardAuthorizationApprovalRequestWebhookEvent }

      # A webhook for tokenization decisioning sent to the customer's responder endpoint
      variant -> { Lithic::TokenizationDecisioningRequestWebhookEvent }

      variant -> { Lithic::AuthRulesBacktestReportCreatedWebhookEvent }

      variant -> { Lithic::BalanceUpdatedWebhookEvent }

      # Book transfer transaction
      variant -> { Lithic::BookTransferTransactionCreatedWebhookEvent }

      # Book transfer transaction
      variant -> { Lithic::BookTransferTransactionUpdatedWebhookEvent }

      variant -> { Lithic::CardCreatedWebhookEvent }

      variant -> { Lithic::CardConvertedWebhookEvent }

      variant -> { Lithic::CardRenewedWebhookEvent }

      variant -> { Lithic::CardReissuedWebhookEvent }

      variant -> { Lithic::CardShippedWebhookEvent }

      variant -> { Lithic::CardUpdatedWebhookEvent }

      variant -> { Lithic::CardTransactionUpdatedWebhookEvent }

      variant -> { Lithic::CardTransactionEnhancedDataCreatedWebhookEvent }

      variant -> { Lithic::CardTransactionEnhancedDataUpdatedWebhookEvent }

      variant -> { Lithic::DigitalWalletTokenizationApprovalRequestWebhookEvent }

      variant -> { Lithic::DigitalWalletTokenizationResultWebhookEvent }

      variant -> { Lithic::DigitalWalletTokenizationTwoFactorAuthenticationCodeWebhookEvent }

      variant -> { Lithic::DigitalWalletTokenizationTwoFactorAuthenticationCodeSentWebhookEvent }

      variant -> { Lithic::DigitalWalletTokenizationUpdatedWebhookEvent }

      # Dispute.
      variant -> { Lithic::DisputeUpdatedWebhookEvent }

      # Dispute evidence.
      variant -> { Lithic::DisputeEvidenceUploadFailedWebhookEvent }

      variant -> { Lithic::ExternalBankAccountCreatedWebhookEvent }

      variant -> { Lithic::ExternalBankAccountUpdatedWebhookEvent }

      variant -> { Lithic::ExternalPaymentCreatedWebhookEvent }

      variant -> { Lithic::ExternalPaymentUpdatedWebhookEvent }

      variant -> { Lithic::FinancialAccountCreatedWebhookEvent }

      variant -> { Lithic::FinancialAccountUpdatedWebhookEvent }

      variant -> { Lithic::FundingEventCreatedWebhookEvent }

      variant -> { Lithic::LoanTapeCreatedWebhookEvent }

      variant -> { Lithic::LoanTapeUpdatedWebhookEvent }

      variant -> { Lithic::ManagementOperationCreatedWebhookEvent }

      variant -> { Lithic::ManagementOperationUpdatedWebhookEvent }

      variant -> { Lithic::InternalTransactionCreatedWebhookEvent }

      variant -> { Lithic::InternalTransactionUpdatedWebhookEvent }

      variant -> { Lithic::NetworkTotalCreatedWebhookEvent }

      variant -> { Lithic::NetworkTotalUpdatedWebhookEvent }

      # Payment transaction
      variant -> { Lithic::PaymentTransactionCreatedWebhookEvent }

      # Payment transaction
      variant -> { Lithic::PaymentTransactionUpdatedWebhookEvent }

      variant -> { Lithic::SettlementReportUpdatedWebhookEvent }

      variant -> { Lithic::StatementsCreatedWebhookEvent }

      # Represents a 3DS authentication
      variant -> { Lithic::ThreeDSAuthenticationCreatedWebhookEvent }

      # Represents a 3DS authentication
      variant -> { Lithic::ThreeDSAuthenticationUpdatedWebhookEvent }

      variant -> { Lithic::ThreeDSAuthenticationChallengeWebhookEvent }

      variant -> { Lithic::TokenizationApprovalRequestWebhookEvent }

      variant -> { Lithic::TokenizationResultWebhookEvent }

      variant -> { Lithic::TokenizationTwoFactorAuthenticationCodeWebhookEvent }

      variant -> { Lithic::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent }

      variant -> { Lithic::TokenizationUpdatedWebhookEvent }

      # Represents a 3DS authentication
      variant -> { Lithic::ThreeDSAuthenticationApprovalRequestWebhookEvent }

      # The Dispute object tracks the progression of a dispute throughout its lifecycle.
      variant -> { Lithic::DisputeTransactionCreatedWebhookEvent }

      # The Dispute object tracks the progression of a dispute throughout its lifecycle.
      variant -> { Lithic::DisputeTransactionUpdatedWebhookEvent }

      class KYBPayload < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   The token of the account_holder that was created.
        #
        #   @return [String]
        required :token, String

        # @!attribute update_request
        #   Original request to update the account holder.
        #
        #   @return [Lithic::Models::ParsedWebhookEvent::KYBPayload::UpdateRequest]
        required :update_request, -> { Lithic::ParsedWebhookEvent::KYBPayload::UpdateRequest }

        # @!attribute event_type
        #   The type of event that occurred.
        #
        #   @return [Symbol, Lithic::Models::ParsedWebhookEvent::KYBPayload::EventType, nil]
        optional :event_type, enum: -> { Lithic::ParsedWebhookEvent::KYBPayload::EventType }

        # @!attribute external_id
        #   A user provided id that can be used to link an account holder with an external
        #   system
        #
        #   @return [String, nil]
        optional :external_id, String

        # @!attribute nature_of_business
        #   Short description of the company's line of business (i.e., what does the company
        #   do?).
        #
        #   @return [String, nil]
        optional :nature_of_business, String

        # @!attribute website_url
        #   Company website URL.
        #
        #   @return [String, nil]
        optional :website_url, String

        # @!method initialize(token:, update_request:, event_type: nil, external_id: nil, nature_of_business: nil, website_url: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::ParsedWebhookEvent::KYBPayload} for more details.
        #
        #   KYB payload for an updated account holder.
        #
        #   @param token [String] The token of the account_holder that was created.
        #
        #   @param update_request [Lithic::Models::ParsedWebhookEvent::KYBPayload::UpdateRequest] Original request to update the account holder.
        #
        #   @param event_type [Symbol, Lithic::Models::ParsedWebhookEvent::KYBPayload::EventType] The type of event that occurred.
        #
        #   @param external_id [String] A user provided id that can be used to link an account holder with an external s
        #
        #   @param nature_of_business [String] Short description of the company's line of business (i.e., what does the company
        #
        #   @param website_url [String] Company website URL.

        # @see Lithic::Models::ParsedWebhookEvent::KYBPayload#update_request
        class UpdateRequest < Lithic::Internal::Type::BaseModel
          # @!attribute beneficial_owner_entities
          #   @deprecated
          #
          #   Deprecated.
          #
          #   @return [Array<Lithic::Models::KYBBusinessEntity>, nil]
          optional :beneficial_owner_entities, -> { Lithic::Internal::Type::ArrayOf[Lithic::KYBBusinessEntity] }

          # @!attribute beneficial_owner_individuals
          #   You must submit a list of all direct and indirect individuals with 25% or more
          #   ownership in the company. A maximum of 4 beneficial owners can be submitted. If
          #   no individual owns 25% of the company you do not need to send beneficial owner
          #   information. See
          #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
          #   (Section I) for more background on individuals that should be included.
          #
          #   @return [Array<Lithic::Models::ParsedWebhookEvent::KYBPayload::UpdateRequest::BeneficialOwnerIndividual>, nil]
          optional :beneficial_owner_individuals,
                   -> { Lithic::Internal::Type::ArrayOf[Lithic::ParsedWebhookEvent::KYBPayload::UpdateRequest::BeneficialOwnerIndividual] }

          # @!attribute business_entity
          #   Information for business for which the account is being opened and KYB is being
          #   run.
          #
          #   @return [Lithic::Models::KYBBusinessEntity, nil]
          optional :business_entity, -> { Lithic::KYBBusinessEntity }

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
          #   @return [Lithic::Models::ParsedWebhookEvent::KYBPayload::UpdateRequest::ControlPerson, nil]
          optional :control_person, -> { Lithic::ParsedWebhookEvent::KYBPayload::UpdateRequest::ControlPerson }

          # @!method initialize(beneficial_owner_entities: nil, beneficial_owner_individuals: nil, business_entity: nil, control_person: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::ParsedWebhookEvent::KYBPayload::UpdateRequest} for more
          #   details.
          #
          #   Original request to update the account holder.
          #
          #   @param beneficial_owner_entities [Array<Lithic::Models::KYBBusinessEntity>] Deprecated.
          #
          #   @param beneficial_owner_individuals [Array<Lithic::Models::ParsedWebhookEvent::KYBPayload::UpdateRequest::BeneficialOwnerIndividual>] You must submit a list of all direct and indirect individuals with 25% or more o
          #
          #   @param business_entity [Lithic::Models::KYBBusinessEntity] Information for business for which the account is being opened and KYB is being
          #
          #   @param control_person [Lithic::Models::ParsedWebhookEvent::KYBPayload::UpdateRequest::ControlPerson] An individual with significant responsibility for managing the legal entity (e.g

          class BeneficialOwnerIndividual < Lithic::Internal::Type::BaseModel
            # @!attribute address
            #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
            #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
            #
            #   @return [Lithic::Models::ParsedWebhookEvent::KYBPayload::UpdateRequest::BeneficialOwnerIndividual::Address, nil]
            optional :address,
                     -> { Lithic::ParsedWebhookEvent::KYBPayload::UpdateRequest::BeneficialOwnerIndividual::Address }

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

            # @!attribute first_name
            #   Individual's first name, as it appears on government-issued identity documents.
            #
            #   @return [String, nil]
            optional :first_name, String

            # @!attribute last_name
            #   Individual's last name, as it appears on government-issued identity documents.
            #
            #   @return [String, nil]
            optional :last_name, String

            # @!attribute phone_number
            #   Individual's phone number, entered in E.164 format.
            #
            #   @return [String, nil]
            optional :phone_number, String

            # @!method initialize(address: nil, dob: nil, email: nil, first_name: nil, last_name: nil, phone_number: nil)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::ParsedWebhookEvent::KYBPayload::UpdateRequest::BeneficialOwnerIndividual}
            #   for more details.
            #
            #   @param address [Lithic::Models::ParsedWebhookEvent::KYBPayload::UpdateRequest::BeneficialOwnerIndividual::Address] Individual's current address - PO boxes, UPS drops, and FedEx drops are not acce
            #
            #   @param dob [String] Individual's date of birth, as an RFC 3339 date.
            #
            #   @param email [String] Individual's email address. If utilizing Lithic for chargeback processing, this
            #
            #   @param first_name [String] Individual's first name, as it appears on government-issued identity documents.
            #
            #   @param last_name [String] Individual's last name, as it appears on government-issued identity documents.
            #
            #   @param phone_number [String] Individual's phone number, entered in E.164 format.

            # @see Lithic::Models::ParsedWebhookEvent::KYBPayload::UpdateRequest::BeneficialOwnerIndividual#address
            class Address < Lithic::Internal::Type::BaseModel
              # @!attribute address1
              #   Valid deliverable address (no PO boxes).
              #
              #   @return [String]
              required :address1, String

              # @!attribute city
              #   Name of city.
              #
              #   @return [String]
              required :city, String

              # @!attribute country
              #   Valid country code. Only USA is currently supported, entered in uppercase ISO
              #   3166-1 alpha-3 three-character format.
              #
              #   @return [String]
              required :country, String

              # @!attribute postal_code
              #   Valid postal code. Only USA ZIP codes are currently supported, entered as a
              #   five-digit ZIP or nine-digit ZIP+4.
              #
              #   @return [String]
              required :postal_code, String

              # @!attribute state
              #   Valid state code. Only USA state codes are currently supported, entered in
              #   uppercase ISO 3166-2 two-character format.
              #
              #   @return [String]
              required :state, String

              # @!attribute address2
              #   Unit or apartment number (if applicable).
              #
              #   @return [String, nil]
              optional :address2, String

              # @!method initialize(address1:, city:, country:, postal_code:, state:, address2: nil)
              #   Some parameter documentations has been truncated, see
              #   {Lithic::Models::ParsedWebhookEvent::KYBPayload::UpdateRequest::BeneficialOwnerIndividual::Address}
              #   for more details.
              #
              #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
              #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
              #
              #   @param address1 [String] Valid deliverable address (no PO boxes).
              #
              #   @param city [String] Name of city.
              #
              #   @param country [String] Valid country code. Only USA is currently supported, entered in uppercase ISO 31
              #
              #   @param postal_code [String] Valid postal code. Only USA ZIP codes are currently supported, entered as a five
              #
              #   @param state [String] Valid state code. Only USA state codes are currently supported, entered in upper
              #
              #   @param address2 [String] Unit or apartment number (if applicable).
            end
          end

          # @see Lithic::Models::ParsedWebhookEvent::KYBPayload::UpdateRequest#control_person
          class ControlPerson < Lithic::Internal::Type::BaseModel
            # @!attribute address
            #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
            #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
            #
            #   @return [Lithic::Models::ParsedWebhookEvent::KYBPayload::UpdateRequest::ControlPerson::Address, nil]
            optional :address, -> { Lithic::ParsedWebhookEvent::KYBPayload::UpdateRequest::ControlPerson::Address }

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

            # @!attribute first_name
            #   Individual's first name, as it appears on government-issued identity documents.
            #
            #   @return [String, nil]
            optional :first_name, String

            # @!attribute last_name
            #   Individual's last name, as it appears on government-issued identity documents.
            #
            #   @return [String, nil]
            optional :last_name, String

            # @!attribute phone_number
            #   Individual's phone number, entered in E.164 format.
            #
            #   @return [String, nil]
            optional :phone_number, String

            # @!method initialize(address: nil, dob: nil, email: nil, first_name: nil, last_name: nil, phone_number: nil)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::ParsedWebhookEvent::KYBPayload::UpdateRequest::ControlPerson}
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
            #   @param address [Lithic::Models::ParsedWebhookEvent::KYBPayload::UpdateRequest::ControlPerson::Address] Individual's current address - PO boxes, UPS drops, and FedEx drops are not acce
            #
            #   @param dob [String] Individual's date of birth, as an RFC 3339 date.
            #
            #   @param email [String] Individual's email address. If utilizing Lithic for chargeback processing, this
            #
            #   @param first_name [String] Individual's first name, as it appears on government-issued identity documents.
            #
            #   @param last_name [String] Individual's last name, as it appears on government-issued identity documents.
            #
            #   @param phone_number [String] Individual's phone number, entered in E.164 format.

            # @see Lithic::Models::ParsedWebhookEvent::KYBPayload::UpdateRequest::ControlPerson#address
            class Address < Lithic::Internal::Type::BaseModel
              # @!attribute address1
              #   Valid deliverable address (no PO boxes).
              #
              #   @return [String]
              required :address1, String

              # @!attribute city
              #   Name of city.
              #
              #   @return [String]
              required :city, String

              # @!attribute country
              #   Valid country code. Only USA is currently supported, entered in uppercase ISO
              #   3166-1 alpha-3 three-character format.
              #
              #   @return [String]
              required :country, String

              # @!attribute postal_code
              #   Valid postal code. Only USA ZIP codes are currently supported, entered as a
              #   five-digit ZIP or nine-digit ZIP+4.
              #
              #   @return [String]
              required :postal_code, String

              # @!attribute state
              #   Valid state code. Only USA state codes are currently supported, entered in
              #   uppercase ISO 3166-2 two-character format.
              #
              #   @return [String]
              required :state, String

              # @!attribute address2
              #   Unit or apartment number (if applicable).
              #
              #   @return [String, nil]
              optional :address2, String

              # @!method initialize(address1:, city:, country:, postal_code:, state:, address2: nil)
              #   Some parameter documentations has been truncated, see
              #   {Lithic::Models::ParsedWebhookEvent::KYBPayload::UpdateRequest::ControlPerson::Address}
              #   for more details.
              #
              #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
              #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
              #
              #   @param address1 [String] Valid deliverable address (no PO boxes).
              #
              #   @param city [String] Name of city.
              #
              #   @param country [String] Valid country code. Only USA is currently supported, entered in uppercase ISO 31
              #
              #   @param postal_code [String] Valid postal code. Only USA ZIP codes are currently supported, entered as a five
              #
              #   @param state [String] Valid state code. Only USA state codes are currently supported, entered in upper
              #
              #   @param address2 [String] Unit or apartment number (if applicable).
            end
          end
        end

        # The type of event that occurred.
        #
        # @see Lithic::Models::ParsedWebhookEvent::KYBPayload#event_type
        module EventType
          extend Lithic::Internal::Type::Enum

          ACCOUNT_HOLDER_UPDATED = :"account_holder.updated"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class KYCPayload < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   The token of the account_holder that was created.
        #
        #   @return [String]
        required :token, String

        # @!attribute update_request
        #   Original request to update the account holder.
        #
        #   @return [Lithic::Models::ParsedWebhookEvent::KYCPayload::UpdateRequest]
        required :update_request, -> { Lithic::ParsedWebhookEvent::KYCPayload::UpdateRequest }

        # @!attribute event_type
        #   The type of event that occurred.
        #
        #   @return [Symbol, Lithic::Models::ParsedWebhookEvent::KYCPayload::EventType, nil]
        optional :event_type, enum: -> { Lithic::ParsedWebhookEvent::KYCPayload::EventType }

        # @!attribute external_id
        #   A user provided id that can be used to link an account holder with an external
        #   system
        #
        #   @return [String, nil]
        optional :external_id, String

        # @!method initialize(token:, update_request:, event_type: nil, external_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::ParsedWebhookEvent::KYCPayload} for more details.
        #
        #   KYC payload for an updated account holder.
        #
        #   @param token [String] The token of the account_holder that was created.
        #
        #   @param update_request [Lithic::Models::ParsedWebhookEvent::KYCPayload::UpdateRequest] Original request to update the account holder.
        #
        #   @param event_type [Symbol, Lithic::Models::ParsedWebhookEvent::KYCPayload::EventType] The type of event that occurred.
        #
        #   @param external_id [String] A user provided id that can be used to link an account holder with an external s

        # @see Lithic::Models::ParsedWebhookEvent::KYCPayload#update_request
        class UpdateRequest < Lithic::Internal::Type::BaseModel
          # @!attribute individual
          #   Information on the individual for whom the account is being opened and KYC is
          #   being run.
          #
          #   @return [Lithic::Models::ParsedWebhookEvent::KYCPayload::UpdateRequest::Individual, nil]
          optional :individual, -> { Lithic::ParsedWebhookEvent::KYCPayload::UpdateRequest::Individual }

          # @!method initialize(individual: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::ParsedWebhookEvent::KYCPayload::UpdateRequest} for more
          #   details.
          #
          #   Original request to update the account holder.
          #
          #   @param individual [Lithic::Models::ParsedWebhookEvent::KYCPayload::UpdateRequest::Individual] Information on the individual for whom the account is being opened and KYC is be

          # @see Lithic::Models::ParsedWebhookEvent::KYCPayload::UpdateRequest#individual
          class Individual < Lithic::Internal::Type::BaseModel
            # @!attribute address
            #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
            #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
            #
            #   @return [Lithic::Models::ParsedWebhookEvent::KYCPayload::UpdateRequest::Individual::Address, nil]
            optional :address, -> { Lithic::ParsedWebhookEvent::KYCPayload::UpdateRequest::Individual::Address }

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

            # @!attribute first_name
            #   Individual's first name, as it appears on government-issued identity documents.
            #
            #   @return [String, nil]
            optional :first_name, String

            # @!attribute last_name
            #   Individual's last name, as it appears on government-issued identity documents.
            #
            #   @return [String, nil]
            optional :last_name, String

            # @!attribute phone_number
            #   Individual's phone number, entered in E.164 format.
            #
            #   @return [String, nil]
            optional :phone_number, String

            # @!method initialize(address: nil, dob: nil, email: nil, first_name: nil, last_name: nil, phone_number: nil)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::ParsedWebhookEvent::KYCPayload::UpdateRequest::Individual} for
            #   more details.
            #
            #   Information on the individual for whom the account is being opened and KYC is
            #   being run.
            #
            #   @param address [Lithic::Models::ParsedWebhookEvent::KYCPayload::UpdateRequest::Individual::Address] Individual's current address - PO boxes, UPS drops, and FedEx drops are not acce
            #
            #   @param dob [String] Individual's date of birth, as an RFC 3339 date.
            #
            #   @param email [String] Individual's email address. If utilizing Lithic for chargeback processing, this
            #
            #   @param first_name [String] Individual's first name, as it appears on government-issued identity documents.
            #
            #   @param last_name [String] Individual's last name, as it appears on government-issued identity documents.
            #
            #   @param phone_number [String] Individual's phone number, entered in E.164 format.

            # @see Lithic::Models::ParsedWebhookEvent::KYCPayload::UpdateRequest::Individual#address
            class Address < Lithic::Internal::Type::BaseModel
              # @!attribute address1
              #   Valid deliverable address (no PO boxes).
              #
              #   @return [String]
              required :address1, String

              # @!attribute city
              #   Name of city.
              #
              #   @return [String]
              required :city, String

              # @!attribute country
              #   Valid country code. Only USA is currently supported, entered in uppercase ISO
              #   3166-1 alpha-3 three-character format.
              #
              #   @return [String]
              required :country, String

              # @!attribute postal_code
              #   Valid postal code. Only USA ZIP codes are currently supported, entered as a
              #   five-digit ZIP or nine-digit ZIP+4.
              #
              #   @return [String]
              required :postal_code, String

              # @!attribute state
              #   Valid state code. Only USA state codes are currently supported, entered in
              #   uppercase ISO 3166-2 two-character format.
              #
              #   @return [String]
              required :state, String

              # @!attribute address2
              #   Unit or apartment number (if applicable).
              #
              #   @return [String, nil]
              optional :address2, String

              # @!method initialize(address1:, city:, country:, postal_code:, state:, address2: nil)
              #   Some parameter documentations has been truncated, see
              #   {Lithic::Models::ParsedWebhookEvent::KYCPayload::UpdateRequest::Individual::Address}
              #   for more details.
              #
              #   Individual's current address - PO boxes, UPS drops, and FedEx drops are not
              #   acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
              #
              #   @param address1 [String] Valid deliverable address (no PO boxes).
              #
              #   @param city [String] Name of city.
              #
              #   @param country [String] Valid country code. Only USA is currently supported, entered in uppercase ISO 31
              #
              #   @param postal_code [String] Valid postal code. Only USA ZIP codes are currently supported, entered as a five
              #
              #   @param state [String] Valid state code. Only USA state codes are currently supported, entered in upper
              #
              #   @param address2 [String] Unit or apartment number (if applicable).
            end
          end
        end

        # The type of event that occurred.
        #
        # @see Lithic::Models::ParsedWebhookEvent::KYCPayload#event_type
        module EventType
          extend Lithic::Internal::Type::Enum

          ACCOUNT_HOLDER_UPDATED = :"account_holder.updated"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class LegacyPayload < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   The token of the account_holder that was created.
        #
        #   @return [String]
        required :token, String

        # @!attribute business_account_token
        #   If applicable, represents the business account token associated with the
        #   account_holder.
        #
        #   @return [String, nil]
        optional :business_account_token, String, nil?: true

        # @!attribute created
        #   When the account_holder updated event was created
        #
        #   @return [Time, nil]
        optional :created, Time

        # @!attribute email
        #   If updated, the newly updated email associated with the account_holder otherwise
        #   the existing email is provided.
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute event_type
        #   The type of event that occurred.
        #
        #   @return [Symbol, Lithic::Models::ParsedWebhookEvent::LegacyPayload::EventType, nil]
        optional :event_type, enum: -> { Lithic::ParsedWebhookEvent::LegacyPayload::EventType }

        # @!attribute external_id
        #   If applicable, represents the external_id associated with the account_holder.
        #
        #   @return [String, nil]
        optional :external_id, String, nil?: true

        # @!attribute first_name
        #   If applicable, represents the account_holder's first name.
        #
        #   @return [String, nil]
        optional :first_name, String

        # @!attribute last_name
        #   If applicable, represents the account_holder's last name.
        #
        #   @return [String, nil]
        optional :last_name, String

        # @!attribute legal_business_name
        #   If applicable, represents the account_holder's business name.
        #
        #   @return [String, nil]
        optional :legal_business_name, String

        # @!attribute phone_number
        #   If updated, the newly updated phone_number associated with the account_holder
        #   otherwise the existing phone_number is provided.
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!method initialize(token:, business_account_token: nil, created: nil, email: nil, event_type: nil, external_id: nil, first_name: nil, last_name: nil, legal_business_name: nil, phone_number: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::ParsedWebhookEvent::LegacyPayload} for more details.
        #
        #   Legacy payload for an updated account holder.
        #
        #   @param token [String] The token of the account_holder that was created.
        #
        #   @param business_account_token [String, nil] If applicable, represents the business account token associated with the account
        #
        #   @param created [Time] When the account_holder updated event was created
        #
        #   @param email [String] If updated, the newly updated email associated with the account_holder otherwise
        #
        #   @param event_type [Symbol, Lithic::Models::ParsedWebhookEvent::LegacyPayload::EventType] The type of event that occurred.
        #
        #   @param external_id [String, nil] If applicable, represents the external_id associated with the account_holder.
        #
        #   @param first_name [String] If applicable, represents the account_holder's first name.
        #
        #   @param last_name [String] If applicable, represents the account_holder's last name.
        #
        #   @param legal_business_name [String] If applicable, represents the account_holder's business name.
        #
        #   @param phone_number [String] If updated, the newly updated phone_number associated with the account_holder ot

        # The type of event that occurred.
        #
        # @see Lithic::Models::ParsedWebhookEvent::LegacyPayload#event_type
        module EventType
          extend Lithic::Internal::Type::Enum

          ACCOUNT_HOLDER_UPDATED = :"account_holder.updated"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(Lithic::Models::AccountHolderCreatedWebhookEvent, Lithic::Models::ParsedWebhookEvent::KYBPayload, Lithic::Models::ParsedWebhookEvent::KYCPayload, Lithic::Models::ParsedWebhookEvent::LegacyPayload, Lithic::Models::AccountHolderVerificationWebhookEvent, Lithic::Models::AccountHolderDocumentUpdatedWebhookEvent, Lithic::Models::CardAuthorizationApprovalRequestWebhookEvent, Lithic::Models::TokenizationDecisioningRequestWebhookEvent, Lithic::Models::AuthRulesBacktestReportCreatedWebhookEvent, Lithic::Models::BalanceUpdatedWebhookEvent, Lithic::Models::BookTransferTransactionCreatedWebhookEvent, Lithic::Models::BookTransferTransactionUpdatedWebhookEvent, Lithic::Models::CardCreatedWebhookEvent, Lithic::Models::CardConvertedWebhookEvent, Lithic::Models::CardRenewedWebhookEvent, Lithic::Models::CardReissuedWebhookEvent, Lithic::Models::CardShippedWebhookEvent, Lithic::Models::CardUpdatedWebhookEvent, Lithic::Models::CardTransactionUpdatedWebhookEvent, Lithic::Models::CardTransactionEnhancedDataCreatedWebhookEvent, Lithic::Models::CardTransactionEnhancedDataUpdatedWebhookEvent, Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent, Lithic::Models::DigitalWalletTokenizationResultWebhookEvent, Lithic::Models::DigitalWalletTokenizationTwoFactorAuthenticationCodeWebhookEvent, Lithic::Models::DigitalWalletTokenizationTwoFactorAuthenticationCodeSentWebhookEvent, Lithic::Models::DigitalWalletTokenizationUpdatedWebhookEvent, Lithic::Models::DisputeUpdatedWebhookEvent, Lithic::Models::DisputeEvidenceUploadFailedWebhookEvent, Lithic::Models::ExternalBankAccountCreatedWebhookEvent, Lithic::Models::ExternalBankAccountUpdatedWebhookEvent, Lithic::Models::ExternalPaymentCreatedWebhookEvent, Lithic::Models::ExternalPaymentUpdatedWebhookEvent, Lithic::Models::FinancialAccountCreatedWebhookEvent, Lithic::Models::FinancialAccountUpdatedWebhookEvent, Lithic::Models::FundingEventCreatedWebhookEvent, Lithic::Models::LoanTapeCreatedWebhookEvent, Lithic::Models::LoanTapeUpdatedWebhookEvent, Lithic::Models::ManagementOperationCreatedWebhookEvent, Lithic::Models::ManagementOperationUpdatedWebhookEvent, Lithic::Models::InternalTransactionCreatedWebhookEvent, Lithic::Models::InternalTransactionUpdatedWebhookEvent, Lithic::Models::NetworkTotalCreatedWebhookEvent, Lithic::Models::NetworkTotalUpdatedWebhookEvent, Lithic::Models::PaymentTransactionCreatedWebhookEvent, Lithic::Models::PaymentTransactionUpdatedWebhookEvent, Lithic::Models::SettlementReportUpdatedWebhookEvent, Lithic::Models::StatementsCreatedWebhookEvent, Lithic::Models::ThreeDSAuthenticationCreatedWebhookEvent, Lithic::Models::ThreeDSAuthenticationUpdatedWebhookEvent, Lithic::Models::ThreeDSAuthenticationChallengeWebhookEvent, Lithic::Models::TokenizationApprovalRequestWebhookEvent, Lithic::Models::TokenizationResultWebhookEvent, Lithic::Models::TokenizationTwoFactorAuthenticationCodeWebhookEvent, Lithic::Models::TokenizationTwoFactorAuthenticationCodeSentWebhookEvent, Lithic::Models::TokenizationUpdatedWebhookEvent, Lithic::Models::ThreeDSAuthenticationApprovalRequestWebhookEvent, Lithic::Models::DisputeTransactionCreatedWebhookEvent, Lithic::Models::DisputeTransactionUpdatedWebhookEvent)]
    end
  end
end
