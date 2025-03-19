# typed: strong

module Lithic
  module Models
    class Document < Lithic::BaseModel
      # Globally unique identifier for the document.
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # Globally unique identifier for the account holder.
      sig { returns(String) }
      def account_holder_token
      end

      sig { params(_: String).returns(String) }
      def account_holder_token=(_)
      end

      # Type of documentation to be submitted for verification of an account holder
      sig { returns(Symbol) }
      def document_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def document_type=(_)
      end

      # Globally unique identifier for an entity.
      sig { returns(String) }
      def entity_token
      end

      sig { params(_: String).returns(String) }
      def entity_token=(_)
      end

      # Represents a single image of the document to upload.
      sig { returns(T::Array[Lithic::Models::Document::RequiredDocumentUpload]) }
      def required_document_uploads
      end

      sig do
        params(_: T::Array[Lithic::Models::Document::RequiredDocumentUpload])
          .returns(T::Array[Lithic::Models::Document::RequiredDocumentUpload])
      end
      def required_document_uploads=(_)
      end

      # Describes the document and the required document image uploads required to
      #   re-run KYC
      sig do
        params(
          token: String,
          account_holder_token: String,
          document_type: Symbol,
          entity_token: String,
          required_document_uploads: T::Array[Lithic::Models::Document::RequiredDocumentUpload]
        )
          .returns(T.attached_class)
      end
      def self.new(token:, account_holder_token:, document_type:, entity_token:, required_document_uploads:)
      end

      sig do
        override
          .returns(
            {
              token: String,
              account_holder_token: String,
              document_type: Symbol,
              entity_token: String,
              required_document_uploads: T::Array[Lithic::Models::Document::RequiredDocumentUpload]
            }
          )
      end
      def to_hash
      end

      # Type of documentation to be submitted for verification of an account holder
      class DocumentType < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

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
      end

      class RequiredDocumentUpload < Lithic::BaseModel
        # Globally unique identifier for the document upload.
        sig { returns(String) }
        def token
        end

        sig { params(_: String).returns(String) }
        def token=(_)
        end

        # A list of status reasons associated with a KYB account holder that have been
        #   satisfied by the document upload
        sig { returns(T::Array[String]) }
        def accepted_entity_status_reasons
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def accepted_entity_status_reasons=(_)
        end

        # When the document upload was created
        sig { returns(Time) }
        def created
        end

        sig { params(_: Time).returns(Time) }
        def created=(_)
        end

        # Type of image to upload.
        sig { returns(Symbol) }
        def image_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def image_type=(_)
        end

        # A list of status reasons associated with a KYB account holder that have not been
        #   satisfied by the document upload
        sig { returns(T::Array[String]) }
        def rejected_entity_status_reasons
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def rejected_entity_status_reasons=(_)
        end

        # Status of an account holder's document upload.
        sig { returns(Symbol) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        # Reasons for document image upload status.
        sig { returns(T::Array[Symbol]) }
        def status_reasons
        end

        sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
        def status_reasons=(_)
        end

        # When the document upload was last updated
        sig { returns(Time) }
        def updated
        end

        sig { params(_: Time).returns(Time) }
        def updated=(_)
        end

        # URL to upload document image to.
        #
        #   Note that the upload URLs expire after 7 days. If an upload URL expires, you can
        #   refresh the URLs by retrieving the document upload from
        #   `GET /account_holders/{account_holder_token}/documents`.
        sig { returns(String) }
        def upload_url
        end

        sig { params(_: String).returns(String) }
        def upload_url=(_)
        end

        # Represents a single image of the document to upload.
        sig do
          params(
            token: String,
            accepted_entity_status_reasons: T::Array[String],
            created: Time,
            image_type: Symbol,
            rejected_entity_status_reasons: T::Array[String],
            status: Symbol,
            status_reasons: T::Array[Symbol],
            updated: Time,
            upload_url: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          token:,
          accepted_entity_status_reasons:,
          created:,
          image_type:,
          rejected_entity_status_reasons:,
          status:,
          status_reasons:,
          updated:,
          upload_url:
        )
        end

        sig do
          override
            .returns(
              {
                token: String,
                accepted_entity_status_reasons: T::Array[String],
                created: Time,
                image_type: Symbol,
                rejected_entity_status_reasons: T::Array[String],
                status: Symbol,
                status_reasons: T::Array[Symbol],
                updated: Time,
                upload_url: String
              }
            )
        end
        def to_hash
        end

        # Type of image to upload.
        class ImageType < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          FRONT = :FRONT
          BACK = :BACK
        end

        # Status of an account holder's document upload.
        class Status < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          ACCEPTED = :ACCEPTED
          REJECTED = :REJECTED
          PENDING_UPLOAD = :PENDING_UPLOAD
          UPLOADED = :UPLOADED
          PARTIAL_APPROVAL = :PARTIAL_APPROVAL
        end

        # The status reasons for an account holder document upload that is not ACCEPTED
        class StatusReason < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

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
        end
      end
    end
  end
end
