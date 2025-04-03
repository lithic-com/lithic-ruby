# frozen_string_literal: true

module Lithic
  module Models
    class Document < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Globally unique identifier for the document.
      #
      #   @return [String]
      required :token, String

      # @!attribute account_holder_token
      #   Globally unique identifier for the account holder.
      #
      #   @return [String]
      required :account_holder_token, String

      # @!attribute document_type
      #   Type of documentation to be submitted for verification of an account holder
      #
      #   @return [Symbol, Lithic::Models::Document::DocumentType]
      required :document_type, enum: -> { Lithic::Models::Document::DocumentType }

      # @!attribute entity_token
      #   Globally unique identifier for an entity.
      #
      #   @return [String]
      required :entity_token, String

      # @!attribute required_document_uploads
      #   Represents a single image of the document to upload.
      #
      #   @return [Array<Lithic::Models::Document::RequiredDocumentUpload>]
      required :required_document_uploads,
               -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::Document::RequiredDocumentUpload] }

      # @!parse
      #   # Describes the document and the required document image uploads required to
      #   #   re-run KYC
      #   #
      #   # @param token [String]
      #   # @param account_holder_token [String]
      #   # @param document_type [Symbol, Lithic::Models::Document::DocumentType]
      #   # @param entity_token [String]
      #   # @param required_document_uploads [Array<Lithic::Models::Document::RequiredDocumentUpload>]
      #   #
      #   def initialize(token:, account_holder_token:, document_type:, entity_token:, required_document_uploads:, **) = super

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

      # Type of documentation to be submitted for verification of an account holder
      #
      # @see Lithic::Models::Document#document_type
      module DocumentType
        extend Lithic::Internal::Type::Enum

        DRIVERS_LICENSE = :DRIVERS_LICENSE
        PASSPORT = :PASSPORT
        PASSPORT_CARD = :PASSPORT_CARD
        EIN_LETTER = :EIN_LETTER
        TAX_RETURN = :TAX_RETURN
        OPERATING_AGREEMENT = :OPERATING_AGREEMENT
        CERTIFICATE_OF_FORMATION = :CERTIFICATE_OF_FORMATION
        CERTIFICATE_OF_GOOD_STANDING = :CERTIFICATE_OF_GOOD_STANDING
        ARTICLES_OF_INCORPORATION = :ARTICLES_OF_INCORPORATION
        ARTICLES_OF_ORGANIZATION = :ARTICLES_OF_ORGANIZATION
        BYLAWS = :BYLAWS
        GOVERNMENT_BUSINESS_LICENSE = :GOVERNMENT_BUSINESS_LICENSE
        PARTNERSHIP_AGREEMENT = :PARTNERSHIP_AGREEMENT
        SS4_FORM = :SS4_FORM
        BANK_STATEMENT = :BANK_STATEMENT
        UTILITY_BILL_STATEMENT = :UTILITY_BILL_STATEMENT
        SSN_CARD = :SSN_CARD
        ITIN_LETTER = :ITIN_LETTER
        FINCEN_BOI_REPORT = :FINCEN_BOI_REPORT

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      class RequiredDocumentUpload < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Globally unique identifier for the document upload.
        #
        #   @return [String]
        required :token, String

        # @!attribute accepted_entity_status_reasons
        #   A list of status reasons associated with a KYB account holder that have been
        #     satisfied by the document upload
        #
        #   @return [Array<String>]
        required :accepted_entity_status_reasons, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute created
        #   When the document upload was created
        #
        #   @return [Time]
        required :created, Time

        # @!attribute image_type
        #   Type of image to upload.
        #
        #   @return [Symbol, Lithic::Models::Document::RequiredDocumentUpload::ImageType]
        required :image_type, enum: -> { Lithic::Models::Document::RequiredDocumentUpload::ImageType }

        # @!attribute rejected_entity_status_reasons
        #   A list of status reasons associated with a KYB account holder that have not been
        #     satisfied by the document upload
        #
        #   @return [Array<String>]
        required :rejected_entity_status_reasons, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute status
        #   Status of an account holder's document upload.
        #
        #   @return [Symbol, Lithic::Models::Document::RequiredDocumentUpload::Status]
        required :status, enum: -> { Lithic::Models::Document::RequiredDocumentUpload::Status }

        # @!attribute status_reasons
        #   Reasons for document image upload status.
        #
        #   @return [Array<Symbol, Lithic::Models::Document::RequiredDocumentUpload::StatusReason>]
        required :status_reasons,
                 -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::Models::Document::RequiredDocumentUpload::StatusReason] }

        # @!attribute updated
        #   When the document upload was last updated
        #
        #   @return [Time]
        required :updated, Time

        # @!attribute upload_url
        #   URL to upload document image to.
        #
        #     Note that the upload URLs expire after 7 days. If an upload URL expires, you can
        #     refresh the URLs by retrieving the document upload from
        #     `GET /account_holders/{account_holder_token}/documents`.
        #
        #   @return [String]
        required :upload_url, String

        # @!parse
        #   # Represents a single image of the document to upload.
        #   #
        #   # @param token [String]
        #   # @param accepted_entity_status_reasons [Array<String>]
        #   # @param created [Time]
        #   # @param image_type [Symbol, Lithic::Models::Document::RequiredDocumentUpload::ImageType]
        #   # @param rejected_entity_status_reasons [Array<String>]
        #   # @param status [Symbol, Lithic::Models::Document::RequiredDocumentUpload::Status]
        #   # @param status_reasons [Array<Symbol, Lithic::Models::Document::RequiredDocumentUpload::StatusReason>]
        #   # @param updated [Time]
        #   # @param upload_url [String]
        #   #
        #   def initialize(
        #     token:,
        #     accepted_entity_status_reasons:,
        #     created:,
        #     image_type:,
        #     rejected_entity_status_reasons:,
        #     status:,
        #     status_reasons:,
        #     updated:,
        #     upload_url:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

        # Type of image to upload.
        #
        # @see Lithic::Models::Document::RequiredDocumentUpload#image_type
        module ImageType
          extend Lithic::Internal::Type::Enum

          FRONT = :FRONT
          BACK = :BACK

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # Status of an account holder's document upload.
        #
        # @see Lithic::Models::Document::RequiredDocumentUpload#status
        module Status
          extend Lithic::Internal::Type::Enum

          ACCEPTED = :ACCEPTED
          REJECTED = :REJECTED
          PENDING_UPLOAD = :PENDING_UPLOAD
          UPLOADED = :UPLOADED
          PARTIAL_APPROVAL = :PARTIAL_APPROVAL

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # The status reasons for an account holder document upload that is not ACCEPTED
        module StatusReason
          extend Lithic::Internal::Type::Enum

          DOCUMENT_MISSING_REQUIRED_DATA = :DOCUMENT_MISSING_REQUIRED_DATA
          DOCUMENT_UPLOAD_TOO_BLURRY = :DOCUMENT_UPLOAD_TOO_BLURRY
          FILE_SIZE_TOO_LARGE = :FILE_SIZE_TOO_LARGE
          INVALID_DOCUMENT_TYPE = :INVALID_DOCUMENT_TYPE
          INVALID_DOCUMENT_UPLOAD = :INVALID_DOCUMENT_UPLOAD
          INVALID_ENTITY = :INVALID_ENTITY
          DOCUMENT_EXPIRED = :DOCUMENT_EXPIRED
          DOCUMENT_ISSUED_GREATER_THAN_30_DAYS = :DOCUMENT_ISSUED_GREATER_THAN_30_DAYS
          DOCUMENT_TYPE_NOT_SUPPORTED = :DOCUMENT_TYPE_NOT_SUPPORTED
          UNKNOWN_FAILURE_REASON = :UNKNOWN_FAILURE_REASON
          UNKNOWN_ERROR = :UNKNOWN_ERROR

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
