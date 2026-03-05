# typed: strong

module Lithic
  module Resources
    class AccountHolders
      sig { returns(Lithic::Resources::AccountHolders::Entities) }
      attr_reader :entities

      # Create an account holder and initiate the appropriate onboarding workflow.
      # Account holders and accounts have a 1:1 relationship. When an account holder is
      # successfully created an associated account is also created. All calls to this
      # endpoint will return a synchronous response. The response time will depend on
      # the workflow. In some cases, the response may indicate the workflow is under
      # review or further action will be needed to complete the account creation
      # process. This endpoint can only be used on accounts that are part of the program
      # that the calling API key manages.
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
        ).returns(Lithic::Models::AccountHolderCreateResponse)
      end
      def create(body:, request_options: {})
      end

      # Get an Individual or Business Account Holder and/or their KYC or KYB evaluation
      # status.
      sig do
        params(
          account_holder_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::AccountHolder)
      end
      def retrieve(
        # Globally unique identifier for the account holder.
        account_holder_token,
        request_options: {}
      )
      end

      # Update the information associated with a particular account holder (including
      # business owners and control persons associated to a business account). If Lithic
      # is performing KYB or KYC and additional verification is required we will run the
      # individual's or business's updated information again and return whether the
      # status is accepted or pending (i.e., further action required). All calls to this
      # endpoint will return a synchronous response. The response time will depend on
      # the workflow. In some cases, the response may indicate the workflow is under
      # review or further action will be needed to complete the account creation
      # process. This endpoint can only be used on existing accounts that are part of
      # the program that the calling API key manages.
      sig do
        params(
          account_holder_token: String,
          body:
            T.any(
              Lithic::AccountHolderUpdateParams::Body::KYBPatchRequest::OrHash,
              Lithic::AccountHolderUpdateParams::Body::KYCPatchRequest::OrHash,
              Lithic::AccountHolderUpdateParams::Body::PatchRequest::OrHash
            ),
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Models::AccountHolderUpdateResponse::Variants)
      end
      def update(
        # Globally unique identifier for the account holder.
        account_holder_token,
        # The KYB request payload for updating a business.
        body:,
        request_options: {}
      )
      end

      # Get a list of individual or business account holders and their KYC or KYB
      # evaluation status.
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
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Internal::SinglePage[Lithic::AccountHolder])
      end
      def list(
        # Date string in RFC 3339 format. Only entries created after the specified time
        # will be included. UTC time zone.
        begin_: nil,
        # Email address of the account holder. The query must be an exact match, case
        # insensitive.
        email: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        # will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # If applicable, represents the external_id associated with the account_holder.
        external_id: nil,
        # (Individual Account Holders only) The first name of the account holder. The
        # query is case insensitive and supports partial matches.
        first_name: nil,
        # (Individual Account Holders only) The last name of the account holder. The query
        # is case insensitive and supports partial matches.
        last_name: nil,
        # (Business Account Holders only) The legal business name of the account holder.
        # The query is case insensitive and supports partial matches.
        legal_business_name: nil,
        # The number of account_holders to limit the response to.
        limit: nil,
        # Phone number of the account holder. The query must be an exact match.
        phone_number: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        request_options: {}
      )
      end

      # Retrieve the status of account holder document uploads, or retrieve the upload
      # URLs to process your image uploads.
      #
      # Note that this is not equivalent to checking the status of the KYC evaluation
      # overall (a document may be successfully uploaded but not be sufficient for KYC
      # to pass).
      #
      # In the event your upload URLs have expired, calling this endpoint will refresh
      # them. Similarly, in the event a previous account holder document upload has
      # failed, you can use this endpoint to get a new upload URL for the failed image
      # upload.
      #
      # When a new document upload is generated for a failed attempt, the response will
      # show an additional entry in the `required_document_uploads` list in a `PENDING`
      # state for the corresponding `image_type`.
      sig do
        params(
          account_holder_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Models::AccountHolderListDocumentsResponse)
      end
      def list_documents(
        # Globally unique identifier for the account holder.
        account_holder_token,
        request_options: {}
      )
      end

      # Check the status of an account holder document upload, or retrieve the upload
      # URLs to process your image uploads.
      #
      # Note that this is not equivalent to checking the status of the KYC evaluation
      # overall (a document may be successfully uploaded but not be sufficient for KYC
      # to pass).
      #
      # In the event your upload URLs have expired, calling this endpoint will refresh
      # them. Similarly, in the event a document upload has failed, you can use this
      # endpoint to get a new upload URL for the failed image upload.
      #
      # When a new account holder document upload is generated for a failed attempt, the
      # response will show an additional entry in the `required_document_uploads` array
      # in a `PENDING` state for the corresponding `image_type`.
      sig do
        params(
          document_token: String,
          account_holder_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Document)
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
          status:
            Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::Status::OrSymbol,
          accepted_entity_status_reasons: T::Array[String],
          status_reason:
            Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Document)
      end
      def simulate_enrollment_document_review(
        # The account holder document upload which to perform the simulation upon.
        document_upload_token:,
        # An account holder document's upload status for use within the simulation.
        status:,
        # A list of status reasons associated with a KYB account holder in PENDING_REVIEW
        accepted_entity_status_reasons: nil,
        # Status reason that will be associated with the simulated account holder status.
        # Only required for a `REJECTED` status or `PARTIAL_APPROVAL` status.
        status_reason: nil,
        request_options: {}
      )
      end

      # Simulates an enrollment review for an account holder. This endpoint is only
      # applicable for workflows that may required intervention such as `KYB_BASIC`.
      sig do
        params(
          account_holder_token: String,
          status:
            Lithic::AccountHolderSimulateEnrollmentReviewParams::Status::OrSymbol,
          status_reasons:
            T::Array[
              Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason::OrSymbol
            ],
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse)
      end
      def simulate_enrollment_review(
        # The account holder which to perform the simulation upon.
        account_holder_token: nil,
        # An account holder's status for use within the simulation.
        status: nil,
        # Status reason that will be associated with the simulated account holder status.
        # Only required for a `REJECTED` status.
        status_reasons: nil,
        request_options: {}
      )
      end

      # Use this endpoint to identify which type of supported government-issued
      # documentation you will upload for further verification. It will return two URLs
      # to upload your document images to - one for the front image and one for the back
      # image.
      #
      # This endpoint is only valid for evaluations in a `PENDING_DOCUMENT` state.
      #
      # Uploaded images must either be a `jpg` or `png` file, and each must be less than
      # 15 MiB. Once both required uploads have been successfully completed, your
      # document will be run through KYC verification.
      #
      # If you have registered a webhook, you will receive evaluation updates for any
      # document submission evaluations, as well as for any failed document uploads.
      #
      # Two document submission attempts are permitted via this endpoint before a
      # `REJECTED` status is returned and the account creation process is ended.
      # Currently only one type of account holder document is supported per KYC
      # verification.
      sig do
        params(
          account_holder_token: String,
          document_type:
            Lithic::AccountHolderUploadDocumentParams::DocumentType::OrSymbol,
          entity_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Document)
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

      # @api private
      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
