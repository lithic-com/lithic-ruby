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
      # @overload create(beneficial_owner_individuals:, business_entity:, control_person:, nature_of_business:, tos_timestamp:, workflow:, individual:, address:, email:, first_name:, kyc_exemption_type:, last_name:, phone_number:, beneficial_owner_entities: nil, external_id: nil, kyb_passed_timestamp: nil, website_url: nil, kyc_passed_timestamp: nil, business_account_token: nil, request_options: {})
      #
      # @param beneficial_owner_individuals [Array<Lithic::Models::AccountHolderCreateParams::BeneficialOwnerIndividual>]
      # @param business_entity [Lithic::Models::AccountHolderCreateParams::BusinessEntity]
      # @param control_person [Lithic::Models::AccountHolderCreateParams::ControlPerson]
      # @param nature_of_business [String]
      # @param tos_timestamp [String]
      # @param workflow [Symbol, Lithic::Models::AccountHolderCreateParams::Workflow]
      # @param individual [Lithic::Models::AccountHolderCreateParams::Individual]
      # @param address [Lithic::Models::Address]
      # @param email [String]
      # @param first_name [String]
      # @param kyc_exemption_type [Symbol, Lithic::Models::AccountHolderCreateParams::KYCExemptionType]
      # @param last_name [String]
      # @param phone_number [String]
      # @param beneficial_owner_entities [Array<Lithic::Models::AccountHolderCreateParams::BeneficialOwnerEntity>]
      # @param external_id [String]
      # @param kyb_passed_timestamp [String]
      # @param website_url [String]
      # @param kyc_passed_timestamp [String]
      # @param business_account_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::AccountHolderCreateResponse]
      #
      # @see Lithic::Models::AccountHolderCreateParams
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
      # @overload retrieve(account_holder_token, request_options: {})
      #
      # @param account_holder_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::AccountHolder]
      #
      # @see Lithic::Models::AccountHolderRetrieveParams
      def retrieve(account_holder_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/account_holders/%1$s", account_holder_token],
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
      # @overload update(account_holder_token, beneficial_owner_entities: nil, beneficial_owner_individuals: nil, business_entity: nil, control_person: nil, external_id: nil, nature_of_business: nil, website_url: nil, individual: nil, address: nil, business_account_token: nil, email: nil, first_name: nil, last_name: nil, legal_business_name: nil, phone_number: nil, request_options: {})
      #
      # @param account_holder_token [String]
      # @param beneficial_owner_entities [Array<Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerEntity>]
      # @param beneficial_owner_individuals [Array<Lithic::Models::AccountHolderUpdateParams::BeneficialOwnerIndividual>]
      # @param business_entity [Lithic::Models::AccountHolderUpdateParams::BusinessEntity]
      # @param control_person [Lithic::Models::AccountHolderUpdateParams::ControlPerson]
      # @param external_id [String]
      # @param nature_of_business [String]
      # @param website_url [String]
      # @param individual [Lithic::Models::AccountHolderUpdateParams::Individual]
      # @param address [Lithic::Models::AddressUpdate]
      # @param business_account_token [String]
      # @param email [String]
      # @param first_name [String]
      # @param last_name [String]
      # @param legal_business_name [String]
      # @param phone_number [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse, Lithic::Models::AccountHolderUpdateResponse::PatchResponse]
      #
      # @see Lithic::Models::AccountHolderUpdateParams
      def update(account_holder_token, params = {})
        parsed, options = Lithic::Models::AccountHolderUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/account_holders/%1$s", account_holder_token],
          body: parsed,
          model: Lithic::Models::AccountHolderUpdateResponse,
          options: options
        )
      end

      # Get a list of individual or business account holders and their KYC or KYB
      #   evaluation status.
      #
      # @overload list(begin_: nil, email: nil, end_: nil, ending_before: nil, external_id: nil, first_name: nil, last_name: nil, legal_business_name: nil, limit: nil, phone_number: nil, starting_after: nil, request_options: {})
      #
      # @param begin_ [Time]
      # @param email [String]
      # @param end_ [Time]
      # @param ending_before [String]
      # @param external_id [String]
      # @param first_name [String]
      # @param last_name [String]
      # @param legal_business_name [String]
      # @param limit [Integer]
      # @param phone_number [String]
      # @param starting_after [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::SinglePage<Lithic::Models::AccountHolder>]
      #
      # @see Lithic::Models::AccountHolderListParams
      def list(params = {})
        parsed, options = Lithic::Models::AccountHolderListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/account_holders",
          query: parsed.transform_keys(begin_: :begin, end_: :end),
          page: Lithic::Internal::SinglePage,
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
      # @overload list_documents(account_holder_token, request_options: {})
      #
      # @param account_holder_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::AccountHolderListDocumentsResponse]
      #
      # @see Lithic::Models::AccountHolderListDocumentsParams
      def list_documents(account_holder_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/account_holders/%1$s/documents", account_holder_token],
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
      # @overload retrieve_document(document_token, account_holder_token:, request_options: {})
      #
      # @param document_token [String]
      # @param account_holder_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::Document]
      #
      # @see Lithic::Models::AccountHolderRetrieveDocumentParams
      def retrieve_document(document_token, params)
        parsed, options = Lithic::Models::AccountHolderRetrieveDocumentParams.dump_request(params)
        account_holder_token =
          parsed.delete(:account_holder_token) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["v1/account_holders/%1$s/documents/%2$s", account_holder_token, document_token],
          model: Lithic::Models::Document,
          options: options
        )
      end

      # Simulates a review for an account holder document upload.
      #
      # @overload simulate_enrollment_document_review(document_upload_token:, status:, accepted_entity_status_reasons: nil, status_reason: nil, request_options: {})
      #
      # @param document_upload_token [String]
      # @param status [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::Status]
      # @param accepted_entity_status_reasons [Array<String>]
      # @param status_reason [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::Document]
      #
      # @see Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams
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
      # @overload simulate_enrollment_review(account_holder_token: nil, status: nil, status_reasons: nil, request_options: {})
      #
      # @param account_holder_token [String]
      # @param status [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewParams::Status]
      # @param status_reasons [Array<Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewParams::StatusReason>]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse]
      #
      # @see Lithic::Models::AccountHolderSimulateEnrollmentReviewParams
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
      # @overload upload_document(account_holder_token, document_type:, entity_token:, request_options: {})
      #
      # @param account_holder_token [String]
      # @param document_type [Symbol, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType]
      # @param entity_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::Document]
      #
      # @see Lithic::Models::AccountHolderUploadDocumentParams
      def upload_document(account_holder_token, params)
        parsed, options = Lithic::Models::AccountHolderUploadDocumentParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/account_holders/%1$s/documents", account_holder_token],
          body: parsed,
          model: Lithic::Models::Document,
          options: options
        )
      end

      # @api private
      #
      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
