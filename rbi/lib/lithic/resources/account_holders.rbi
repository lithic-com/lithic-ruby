# typed: strong

module Lithic
  module Resources
    class AccountHolders
      # Create an account holder and initiate the appropriate onboarding workflow.
      #   Account holders and accounts have a 1:1 relationship. When an account holder is
      #   successfully created an associated account is also created. All calls to this
      #   endpoint will return an immediate response - though in some cases, the response
      #   may indicate the enrollment is under review or further action will be needed to
      #   complete the account enrollment process. This endpoint can only be used on
      #   accounts that are part of the program that the calling API key manages.
      sig do
        params(
          beneficial_owner_entities: T::Array[Lithic::Models::AccountHolderCreateParams::BeneficialOwnerEntity],
          beneficial_owner_individuals: T::Array[Lithic::Models::AccountHolderCreateParams::BeneficialOwnerIndividual],
          business_entity: Lithic::Models::AccountHolderCreateParams::BusinessEntity,
          control_person: Lithic::Models::AccountHolderCreateParams::ControlPerson,
          nature_of_business: String,
          tos_timestamp: String,
          workflow: Lithic::Models::AccountHolderCreateParams::Workflow::OrSymbol,
          individual: Lithic::Models::AccountHolderCreateParams::Individual,
          address: Lithic::Models::Address,
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
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Lithic::Models::AccountHolderCreateResponse)
      end
      def create(
        # List of all entities with >25% ownership in the company. If no entity or
        #   individual owns >25% of the company, and the largest shareholder is an entity,
        #   please identify them in this field. See
        #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
        #   (Section I) for more background. If no business owner is an entity, pass in an
        #   empty list. However, either this parameter or `beneficial_owner_individuals`
        #   must be populated. on entities that should be included.
        beneficial_owner_entities:,
        # List of all direct and indirect individuals with >25% ownership in the company.
        #   If no entity or individual owns >25% of the company, and the largest shareholder
        #   is an individual, please identify them in this field. See
        #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
        #   (Section I) for more background on individuals that should be included. If no
        #   individual is an entity, pass in an empty list. However, either this parameter
        #   or `beneficial_owner_entities` must be populated.
        beneficial_owner_individuals:,
        # Information for business for which the account is being opened and KYB is being
        #   run.
        business_entity:,
        # An individual with significant responsibility for managing the legal entity
        #   (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
        #   Officer, Managing Member, General Partner, President, Vice President, or
        #   Treasurer). This can be an executive, or someone who will have program-wide
        #   access to the cards that Lithic will provide. In some cases, this individual
        #   could also be a beneficial owner listed above. See
        #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
        #   (Section II) for more background.
        control_person:,
        # Short description of the company's line of business (i.e., what does the company
        #   do?).
        nature_of_business:,
        # An RFC 3339 timestamp indicating when the account holder accepted the applicable
        #   legal agreements (e.g., cardholder terms) as agreed upon during API customer's
        #   implementation with Lithic.
        tos_timestamp:,
        # Specifies the workflow type. This must be 'KYC_EXEMPT'
        workflow:,
        # Information on individual for whom the account is being opened and KYC is being
        #   run.
        individual:,
        # KYC Exempt user's current address - PO boxes, UPS drops, and FedEx drops are not
        #   acceptable; APO/FPO are acceptable.
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
        # A user provided id that can be used to link an account holder with an external
        #   system
        external_id: nil,
        # An RFC 3339 timestamp indicating when precomputed KYC was completed on the
        #   business with a pass result.
        #
        #   This field is required only if workflow type is `KYB_BYO`.
        kyb_passed_timestamp: nil,
        # Company website URL.
        website_url: nil,
        # An RFC 3339 timestamp indicating when precomputed KYC was completed on the
        #   individual with a pass result.
        #
        #   This field is required only if workflow type is `KYC_BYO`.
        kyc_passed_timestamp: nil,
        # Only applicable for customers using the KYC-Exempt workflow to enroll authorized
        #   users of businesses. Pass the account_token of the enrolled business associated
        #   with the AUTHORIZED_USER in this field.
        business_account_token: nil,
        request_options: {}
      )
      end

      # Get an Individual or Business Account Holder and/or their KYC or KYB evaluation
      #   status.
      sig do
        params(
          account_holder_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Lithic::Models::AccountHolder)
      end
      def retrieve(
        # Globally unique identifier for the account holder.
        account_holder_token,
        request_options: {}
      )
      end

      # Update the information associated with a particular account holder (including
      #   business owners and control persons associated to a business account). If Lithic
      #   is performing KYB or KYC and additional verification is required we will run the
      #   individual's or business's updated information again and return whether the
      #   status is accepted or pending (i.e., further action required). All calls to this
      #   endpoint will return an immediate response - though in some cases, the response
      #   may indicate the workflow is under review or further action will be needed to
      #   complete the evaluation process. This endpoint can only be used on existing
      #   accounts that are part of the program that the calling API key manages.
      sig do
        params(
          account_holder_token: String,
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
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(
            T.any(
              Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse,
              Lithic::Models::AccountHolderUpdateResponse::PatchResponse
            )
          )
      end
      def update(
        # Globally unique identifier for the account holder.
        account_holder_token,
        # List of all entities with >25% ownership in the company. If no entity or
        #   individual owns >25% of the company, and the largest shareholder is an entity,
        #   please identify them in this field. See
        #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)(Section
        #   I) for more background. If no business owner is an entity, pass in an empty
        #   list. However, either this parameter or `beneficial_owner_individuals` must be
        #   populated. on entities that should be included.
        beneficial_owner_entities: nil,
        # List of all individuals with >25% ownership in the company. If no entity or
        #   individual owns >25% of the company, and the largest shareholder is an
        #   individual, please identify them in this field. See
        #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)(Section
        #   I) for more background on individuals that should be included. If no individual
        #   is an entity, pass in an empty list. However, either this parameter or
        #   `beneficial_owner_entities` must be populated.
        beneficial_owner_individuals: nil,
        # Information for business for which the account is being opened and KYB is being
        #   run.
        business_entity: nil,
        # An individual with significant responsibility for managing the legal entity
        #   (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
        #   Officer, Managing Member, General Partner, President, Vice President, or
        #   Treasurer). This can be an executive, or someone who will have program-wide
        #   access to the cards that Lithic will provide. In some cases, this individual
        #   could also be a beneficial owner listed above. See
        #   [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
        #   (Section II) for more background.
        control_person: nil,
        # A user provided id that can be used to link an account holder with an external
        #   system
        external_id: nil,
        # Short description of the company's line of business (i.e., what does the company
        #   do?).
        nature_of_business: nil,
        # Company website URL.
        website_url: nil,
        # Information on the individual for whom the account is being opened and KYC is
        #   being run.
        individual: nil,
        # Allowed for: KYC-Exempt, BYO-KYC, BYO-KYB.
        address: nil,
        # Allowed for: KYC-Exempt, BYO-KYC. The token of the business account to which the
        #   account holder is associated.
        business_account_token: nil,
        # Allowed for all Account Holders. Account holder's email address. The primary
        #   purpose of this field is for cardholder identification and verification during
        #   the digital wallet tokenization process.
        email: nil,
        # Allowed for KYC-Exempt, BYO-KYC. Account holder's first name.
        first_name: nil,
        # Allowed for KYC-Exempt, BYO-KYC. Account holder's last name.
        last_name: nil,
        # Allowed for BYO-KYB. Legal business name of the account holder.
        legal_business_name: nil,
        # Allowed for all Account Holders. Account holder's phone number, entered in E.164
        #   format. The primary purpose of this field is for cardholder identification and
        #   verification during the digital wallet tokenization process.
        phone_number: nil,
        request_options: {}
      )
      end

      # Get a list of individual or business account holders and their KYC or KYB
      #   evaluation status.
      sig do
        params(
          begin_: Time,
          email: String,
          end_: Time,
          ending_before: String,
          external_id: String,
          first_name: String,
          last_name: String,
          legal_business_name: String,
          limit: Integer,
          phone_number: String,
          starting_after: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Lithic::SinglePage[Lithic::Models::AccountHolder])
      end
      def list(
        # Date string in RFC 3339 format. Only entries created after the specified time
        #   will be included. UTC time zone.
        begin_: nil,
        # Email address of the account holder. The query must be an exact match, case
        #   insensitive.
        email: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        #   will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        #   Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # If applicable, represents the external_id associated with the account_holder.
        external_id: nil,
        # (Individual Account Holders only) The first name of the account holder. The
        #   query is case insensitive and supports partial matches.
        first_name: nil,
        # (Individual Account Holders only) The last name of the account holder. The query
        #   is case insensitive and supports partial matches.
        last_name: nil,
        # (Business Account Holders only) The legal business name of the account holder.
        #   The query is case insensitive and supports partial matches.
        legal_business_name: nil,
        # The number of account_holders to limit the response to.
        limit: nil,
        # Phone number of the account holder. The query must be an exact match.
        phone_number: nil,
        # A cursor representing an item's token after which a page of results should
        #   begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        request_options: {}
      )
      end

      # Retrieve the status of account holder document uploads, or retrieve the upload
      #   URLs to process your image uploads.
      #
      #   Note that this is not equivalent to checking the status of the KYC evaluation
      #   overall (a document may be successfully uploaded but not be sufficient for KYC
      #   to pass).
      #
      #   In the event your upload URLs have expired, calling this endpoint will refresh
      #   them. Similarly, in the event a previous account holder document upload has
      #   failed, you can use this endpoint to get a new upload URL for the failed image
      #   upload.
      #
      #   When a new document upload is generated for a failed attempt, the response will
      #   show an additional entry in the `required_document_uploads` list in a `PENDING`
      #   state for the corresponding `image_type`.
      sig do
        params(
          account_holder_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Lithic::Models::AccountHolderListDocumentsResponse)
      end
      def list_documents(
        # Globally unique identifier for the account holder.
        account_holder_token,
        request_options: {}
      )
      end

      # Check the status of an account holder document upload, or retrieve the upload
      #   URLs to process your image uploads.
      #
      #   Note that this is not equivalent to checking the status of the KYC evaluation
      #   overall (a document may be successfully uploaded but not be sufficient for KYC
      #   to pass).
      #
      #   In the event your upload URLs have expired, calling this endpoint will refresh
      #   them. Similarly, in the event a document upload has failed, you can use this
      #   endpoint to get a new upload URL for the failed image upload.
      #
      #   When a new account holder document upload is generated for a failed attempt, the
      #   response will show an additional entry in the `required_document_uploads` array
      #   in a `PENDING` state for the corresponding `image_type`.
      sig do
        params(
          document_token: String,
          account_holder_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Lithic::Models::Document)
      end
      def retrieve_document(
        # Globally unique identifier for the document.
        document_token,
        # Globally unique identifier for the account holder.
        account_holder_token:,
        request_options: {}
      )
      end

      # Simulates a review for an account holder document upload.
      sig do
        params(
          document_upload_token: String,
          status: Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::Status::OrSymbol,
          accepted_entity_status_reasons: T::Array[String],
          status_reason: Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::OrSymbol,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Lithic::Models::Document)
      end
      def simulate_enrollment_document_review(
        # The account holder document upload which to perform the simulation upon.
        document_upload_token:,
        # An account holder document's upload status for use within the simulation.
        status:,
        # A list of status reasons associated with a KYB account holder in PENDING_REVIEW
        accepted_entity_status_reasons: nil,
        # Status reason that will be associated with the simulated account holder status.
        #   Only required for a `REJECTED` status or `PARTIAL_APPROVAL` status.
        status_reason: nil,
        request_options: {}
      )
      end

      # Simulates an enrollment review for an account holder. This endpoint is only
      #   applicable for workflows that may required intervention such as `KYB_BASIC`.
      sig do
        params(
          account_holder_token: String,
          status: Lithic::Models::AccountHolderSimulateEnrollmentReviewParams::Status::OrSymbol,
          status_reasons: T::Array[Lithic::Models::AccountHolderSimulateEnrollmentReviewParams::StatusReason::OrSymbol],
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse)
      end
      def simulate_enrollment_review(
        # The account holder which to perform the simulation upon.
        account_holder_token: nil,
        # An account holder's status for use within the simulation.
        status: nil,
        # Status reason that will be associated with the simulated account holder status.
        #   Only required for a `REJECTED` status.
        status_reasons: nil,
        request_options: {}
      )
      end

      # Use this endpoint to identify which type of supported government-issued
      #   documentation you will upload for further verification. It will return two URLs
      #   to upload your document images to - one for the front image and one for the back
      #   image.
      #
      #   This endpoint is only valid for evaluations in a `PENDING_DOCUMENT` state.
      #
      #   Uploaded images must either be a `jpg` or `png` file, and each must be less than
      #   15 MiB. Once both required uploads have been successfully completed, your
      #   document will be run through KYC verification.
      #
      #   If you have registered a webhook, you will receive evaluation updates for any
      #   document submission evaluations, as well as for any failed document uploads.
      #
      #   Two document submission attempts are permitted via this endpoint before a
      #   `REJECTED` status is returned and the account creation process is ended.
      #   Currently only one type of account holder document is supported per KYC
      #   verification.
      sig do
        params(
          account_holder_token: String,
          document_type: Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol,
          entity_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Lithic::Models::Document)
      end
      def upload_document(
        # Globally unique identifier for the account holder.
        account_holder_token,
        # The type of document to upload
        document_type:,
        # Globally unique identifier for the entity.
        entity_token:,
        request_options: {}
      )
      end

      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
