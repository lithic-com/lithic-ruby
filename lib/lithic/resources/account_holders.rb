# frozen_string_literal: true

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
      #
      # @param params [Lithic::Models::AccountHolderCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<Lithic::Models::AccountHolderCreateParams::BeneficialOwnerEntity>] :beneficial_owner_entities List of all entities with >25% ownership in the company. If no entity or
      #     individual owns >25% of the company, and the largest shareholder is an entity,
      #     please identify them in this field. See
      #     [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
      #     (Section I) for more background. If no business owner is an entity, pass in an
      #     empty list. However, either this parameter or `beneficial_owner_individuals`
      #     must be populated. on entities that should be included.
      #
      #   @option params [Array<Lithic::Models::AccountHolderCreateParams::BeneficialOwnerIndividual>] :beneficial_owner_individuals List of all direct and indirect individuals with >25% ownership in the company.
      #     If no entity or individual owns >25% of the company, and the largest shareholder
      #     is an individual, please identify them in this field. See
      #     [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
      #     (Section I) for more background on individuals that should be included. If no
      #     individual is an entity, pass in an empty list. However, either this parameter
      #     or `beneficial_owner_entities` must be populated.
      #
      #   @option params [Lithic::Models::AccountHolderCreateParams::BusinessEntity] :business_entity Information for business for which the account is being opened and KYB is being
      #     run.
      #
      #   @option params [Lithic::Models::AccountHolderCreateParams::ControlPerson] :control_person An individual with significant responsibility for managing the legal entity
      #     (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
      #     Officer, Managing Member, General Partner, President, Vice President, or
      #     Treasurer). This can be an executive, or someone who will have program-wide
      #     access to the cards that Lithic will provide. In some cases, this individual
      #     could also be a beneficial owner listed above. See
      #     [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
      #     (Section II) for more background.
      #
      #   @option params [String] :nature_of_business Short description of the company's line of business (i.e., what does the company
      #     do?).
      #
      #   @option params [String] :tos_timestamp An RFC 3339 timestamp indicating when the account holder accepted the applicable
      #     legal agreements (e.g., cardholder terms) as agreed upon during API customer's
      #     implementation with Lithic.
      #
      #   @option params [Symbol, Lithic::Models::AccountHolderCreateParams::Workflow] :workflow Specifies the workflow type. This must be 'KYC_EXEMPT'
      #
      #   @option params [Lithic::Models::AccountHolderCreateParams::Individual] :individual Information on individual for whom the account is being opened and KYC is being
      #     run.
      #
      #   @option params [Lithic::Models::Address] :address KYC Exempt user's current address - PO boxes, UPS drops, and FedEx drops are not
      #     acceptable; APO/FPO are acceptable.
      #
      #   @option params [String] :email The KYC Exempt user's email
      #
      #   @option params [String] :first_name The KYC Exempt user's first name
      #
      #   @option params [Symbol, Lithic::Models::AccountHolderCreateParams::KYCExemptionType] :kyc_exemption_type Specifies the type of KYC Exempt user
      #
      #   @option params [String] :last_name The KYC Exempt user's last name
      #
      #   @option params [String] :phone_number The KYC Exempt user's phone number, entered in E.164 format.
      #
      #   @option params [String] :external_id A user provided id that can be used to link an account holder with an external
      #     system
      #
      #   @option params [String] :kyb_passed_timestamp An RFC 3339 timestamp indicating when precomputed KYC was completed on the
      #     business with a pass result.
      #
      #     This field is required only if workflow type is `KYB_BYO`.
      #
      #   @option params [String] :website_url Company website URL.
      #
      #   @option params [String] :kyc_passed_timestamp An RFC 3339 timestamp indicating when precomputed KYC was completed on the
      #     individual with a pass result.
      #
      #     This field is required only if workflow type is `KYC_BYO`.
      #
      #   @option params [String] :business_account_token Only applicable for customers using the KYC-Exempt workflow to enroll authorized
      #     users of businesses. Pass the account_token of the enrolled business associated
      #     with the AUTHORIZED_USER in this field.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::AccountHolderCreateResponse]
      def create(params)
        parsed, options = Lithic::Models::AccountHolderCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/account_holders",
          body: parsed,
          model: Lithic::Models::AccountHolderCreateResponse,
          options: options
        )
      end

      # Get an Individual or Business Account Holder and/or their KYC or KYB evaluation
      #   status.
      #
      # @param account_holder_token [String] Globally unique identifier for the account holder.
      #
      # @param params [Lithic::Models::AccountHolderRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::AccountHolder]
      def retrieve(account_holder_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/account_holders/%0s", account_holder_token],
          model: Lithic::Models::AccountHolder,
          options: params[:request_options]
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
      #
      # @param account_holder_token [String] Globally unique identifier for the account holder.
      #
      # @param params [Lithic::Models::AccountHolderUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerEntity>] :beneficial_owner_entities List of all entities with >25% ownership in the company. If no entity or
      #     individual owns >25% of the company, and the largest shareholder is an entity,
      #     please identify them in this field. See
      #     [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)(Section
      #     I) for more background. If no business owner is an entity, pass in an empty
      #     list. However, either this parameter or `beneficial_owner_individuals` must be
      #     populated. on entities that should be included.
      #
      #   @option params [Array<Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerIndividual>] :beneficial_owner_individuals List of all individuals with >25% ownership in the company. If no entity or
      #     individual owns >25% of the company, and the largest shareholder is an
      #     individual, please identify them in this field. See
      #     [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)(Section
      #     I) for more background on individuals that should be included. If no individual
      #     is an entity, pass in an empty list. However, either this parameter or
      #     `beneficial_owner_entities` must be populated.
      #
      #   @option params [Lithic::Models::AccountHolderUpdateParams::BusinessEntity] :business_entity Information for business for which the account is being opened and KYB is being
      #     run.
      #
      #   @option params [Lithic::Models::AccountHolderUpdateParams::ControlPerson] :control_person An individual with significant responsibility for managing the legal entity
      #     (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
      #     Officer, Managing Member, General Partner, President, Vice President, or
      #     Treasurer). This can be an executive, or someone who will have program-wide
      #     access to the cards that Lithic will provide. In some cases, this individual
      #     could also be a beneficial owner listed above. See
      #     [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
      #     (Section II) for more background.
      #
      #   @option params [String] :external_id A user provided id that can be used to link an account holder with an external
      #     system
      #
      #   @option params [String] :nature_of_business Short description of the company's line of business (i.e., what does the company
      #     do?).
      #
      #   @option params [String] :website_url Company website URL.
      #
      #   @option params [Lithic::Models::AccountHolderUpdateParams::Individual] :individual Information on the individual for whom the account is being opened and KYC is
      #     being run.
      #
      #   @option params [Lithic::Models::AddressUpdate] :address Allowed for: KYC-Exempt, BYO-KYC, BYO-KYB.
      #
      #   @option params [String] :business_account_token Allowed for: KYC-Exempt, BYO-KYC. The token of the business account to which the
      #     account holder is associated.
      #
      #   @option params [String] :email Allowed for all Account Holders. Account holder's email address. The primary
      #     purpose of this field is for cardholder identification and verification during
      #     the digital wallet tokenization process.
      #
      #   @option params [String] :first_name Allowed for KYC-Exempt, BYO-KYC. Account holder's first name.
      #
      #   @option params [String] :last_name Allowed for KYC-Exempt, BYO-KYC. Account holder's last name.
      #
      #   @option params [String] :legal_business_name Allowed for BYO-KYB. Legal business name of the account holder.
      #
      #   @option params [String] :phone_number Allowed for all Account Holders. Account holder's phone number, entered in E.164
      #     format. The primary purpose of this field is for cardholder identification and
      #     verification during the digital wallet tokenization process.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse, Lithic::Models::AccountHolderUpdateResponse::PatchResponse]
      def update(account_holder_token, params = {})
        parsed, options = Lithic::Models::AccountHolderUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/account_holders/%0s", account_holder_token],
          body: parsed,
          model: Lithic::Models::AccountHolderUpdateResponse,
          options: options
        )
      end

      # Get a list of individual or business account holders and their KYC or KYB
      #   evaluation status.
      #
      # @param params [Lithic::Models::AccountHolderListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Time] :begin_ Date string in RFC 3339 format. Only entries created after the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [String] :email Email address of the account holder. The query must be an exact match, case
      #     insensitive.
      #
      #   @option params [Time] :end_ Date string in RFC 3339 format. Only entries created before the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [String] :ending_before A cursor representing an item's token before which a page of results should end.
      #     Used to retrieve the previous page of results before this item.
      #
      #   @option params [String] :external_id If applicable, represents the external_id associated with the account_holder.
      #
      #   @option params [String] :first_name (Individual Account Holders only) The first name of the account holder. The
      #     query is case insensitive and supports partial matches.
      #
      #   @option params [String] :last_name (Individual Account Holders only) The last name of the account holder. The query
      #     is case insensitive and supports partial matches.
      #
      #   @option params [String] :legal_business_name (Business Account Holders only) The legal business name of the account holder.
      #     The query is case insensitive and supports partial matches.
      #
      #   @option params [Integer] :limit The number of account_holders to limit the response to.
      #
      #   @option params [String] :phone_number Phone number of the account holder. The query must be an exact match.
      #
      #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
      #     begin. Used to retrieve the next page of results after this item.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::SinglePage<Lithic::Models::AccountHolder>]
      def list(params = {})
        parsed, options = Lithic::Models::AccountHolderListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/account_holders",
          query: parsed,
          page: Lithic::SinglePage,
          model: Lithic::Models::AccountHolder,
          options: options
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
      #
      # @param account_holder_token [String] Globally unique identifier for the account holder.
      #
      # @param params [Lithic::Models::AccountHolderListDocumentsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::AccountHolderListDocumentsResponse]
      def list_documents(account_holder_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/account_holders/%0s/documents", account_holder_token],
          model: Lithic::Models::AccountHolderListDocumentsResponse,
          options: params[:request_options]
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
      #
      # @param document_token [String] Globally unique identifier for the document.
      #
      # @param params [Lithic::Models::AccountHolderRetrieveDocumentParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_holder_token Globally unique identifier for the account holder.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::Document]
      def retrieve_document(document_token, params)
        parsed, options = Lithic::Models::AccountHolderRetrieveDocumentParams.dump_request(params)
        account_holder_token =
          parsed.delete(:account_holder_token) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["v1/account_holders/%0s/documents/%1s", account_holder_token, document_token],
          model: Lithic::Models::Document,
          options: options
        )
      end

      # Simulates a review for an account holder document upload.
      #
      # @param params [Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :document_upload_token The account holder document upload which to perform the simulation upon.
      #
      #   @option params [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::Status] :status An account holder document's upload status for use within the simulation.
      #
      #   @option params [Array<String>] :accepted_entity_status_reasons A list of status reasons associated with a KYB account holder in PENDING_REVIEW
      #
      #   @option params [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason] :status_reason Status reason that will be associated with the simulated account holder status.
      #     Only required for a `REJECTED` status or `PARTIAL_APPROVAL` status.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::Document]
      def simulate_enrollment_document_review(params)
        parsed, options =
          Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/simulate/account_holders/enrollment_document_review",
          body: parsed,
          model: Lithic::Models::Document,
          options: options
        )
      end

      # Simulates an enrollment review for an account holder. This endpoint is only
      #   applicable for workflows that may required intervention such as `KYB_BASIC`.
      #
      # @param params [Lithic::Models::AccountHolderSimulateEnrollmentReviewParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_holder_token The account holder which to perform the simulation upon.
      #
      #   @option params [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewParams::Status] :status An account holder's status for use within the simulation.
      #
      #   @option params [Array<Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewParams::StatusReason>] :status_reasons Status reason that will be associated with the simulated account holder status.
      #     Only required for a `REJECTED` status.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse]
      def simulate_enrollment_review(params = {})
        parsed, options = Lithic::Models::AccountHolderSimulateEnrollmentReviewParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/simulate/account_holders/enrollment_review",
          body: parsed,
          model: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse,
          options: options
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
      #
      # @param account_holder_token [String] Globally unique identifier for the account holder.
      #
      # @param params [Lithic::Models::AccountHolderUploadDocumentParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType] :document_type The type of document to upload
      #
      #   @option params [String] :entity_token Globally unique identifier for the entity.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::Document]
      def upload_document(account_holder_token, params)
        parsed, options = Lithic::Models::AccountHolderUploadDocumentParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/account_holders/%0s/documents", account_holder_token],
          body: parsed,
          model: Lithic::Models::Document,
          options: options
        )
      end

      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
