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
      sig { returns(Lithic::Models::Document::DocumentType::TaggedSymbol) }
      def document_type
      end

      sig do
        params(_: Lithic::Models::Document::DocumentType::TaggedSymbol)
          .returns(Lithic::Models::Document::DocumentType::TaggedSymbol)
      end
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
          document_type: Lithic::Models::Document::DocumentType::TaggedSymbol,
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
              document_type: Lithic::Models::Document::DocumentType::TaggedSymbol,
              entity_token: String,
              required_document_uploads: T::Array[Lithic::Models::Document::RequiredDocumentUpload]
            }
          )
      end
      def to_hash
      end

      # Type of documentation to be submitted for verification of an account holder
      module DocumentType
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Document::DocumentType) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Document::DocumentType::TaggedSymbol) }

        DRIVERS_LICENSE = T.let(:DRIVERS_LICENSE, Lithic::Models::Document::DocumentType::TaggedSymbol)
        PASSPORT = T.let(:PASSPORT, Lithic::Models::Document::DocumentType::TaggedSymbol)
        PASSPORT_CARD = T.let(:PASSPORT_CARD, Lithic::Models::Document::DocumentType::TaggedSymbol)
        EIN_LETTER = T.let(:EIN_LETTER, Lithic::Models::Document::DocumentType::TaggedSymbol)
        TAX_RETURN = T.let(:TAX_RETURN, Lithic::Models::Document::DocumentType::TaggedSymbol)
        OPERATING_AGREEMENT = T.let(:OPERATING_AGREEMENT, Lithic::Models::Document::DocumentType::TaggedSymbol)
        CERTIFICATE_OF_FORMATION =
          T.let(:CERTIFICATE_OF_FORMATION, Lithic::Models::Document::DocumentType::TaggedSymbol)
        CERTIFICATE_OF_GOOD_STANDING =
          T.let(:CERTIFICATE_OF_GOOD_STANDING, Lithic::Models::Document::DocumentType::TaggedSymbol)
        ARTICLES_OF_INCORPORATION =
          T.let(:ARTICLES_OF_INCORPORATION, Lithic::Models::Document::DocumentType::TaggedSymbol)
        ARTICLES_OF_ORGANIZATION =
          T.let(:ARTICLES_OF_ORGANIZATION, Lithic::Models::Document::DocumentType::TaggedSymbol)
        BYLAWS = T.let(:BYLAWS, Lithic::Models::Document::DocumentType::TaggedSymbol)
        GOVERNMENT_BUSINESS_LICENSE =
          T.let(:GOVERNMENT_BUSINESS_LICENSE, Lithic::Models::Document::DocumentType::TaggedSymbol)
        PARTNERSHIP_AGREEMENT =
          T.let(:PARTNERSHIP_AGREEMENT, Lithic::Models::Document::DocumentType::TaggedSymbol)
        SS4_FORM = T.let(:SS4_FORM, Lithic::Models::Document::DocumentType::TaggedSymbol)
        BANK_STATEMENT = T.let(:BANK_STATEMENT, Lithic::Models::Document::DocumentType::TaggedSymbol)
        UTILITY_BILL_STATEMENT =
          T.let(:UTILITY_BILL_STATEMENT, Lithic::Models::Document::DocumentType::TaggedSymbol)
        SSN_CARD = T.let(:SSN_CARD, Lithic::Models::Document::DocumentType::TaggedSymbol)
        ITIN_LETTER = T.let(:ITIN_LETTER, Lithic::Models::Document::DocumentType::TaggedSymbol)
        FINCEN_BOI_REPORT = T.let(:FINCEN_BOI_REPORT, Lithic::Models::Document::DocumentType::TaggedSymbol)
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
        sig { returns(Lithic::Models::Document::RequiredDocumentUpload::ImageType::TaggedSymbol) }
        def image_type
        end

        sig do
          params(_: Lithic::Models::Document::RequiredDocumentUpload::ImageType::TaggedSymbol)
            .returns(Lithic::Models::Document::RequiredDocumentUpload::ImageType::TaggedSymbol)
        end
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
        sig { returns(Lithic::Models::Document::RequiredDocumentUpload::Status::TaggedSymbol) }
        def status
        end

        sig do
          params(_: Lithic::Models::Document::RequiredDocumentUpload::Status::TaggedSymbol)
            .returns(Lithic::Models::Document::RequiredDocumentUpload::Status::TaggedSymbol)
        end
        def status=(_)
        end

        # Reasons for document image upload status.
        sig { returns(T::Array[Lithic::Models::Document::RequiredDocumentUpload::StatusReason::TaggedSymbol]) }
        def status_reasons
        end

        sig do
          params(_: T::Array[Lithic::Models::Document::RequiredDocumentUpload::StatusReason::TaggedSymbol])
            .returns(T::Array[Lithic::Models::Document::RequiredDocumentUpload::StatusReason::TaggedSymbol])
        end
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
            image_type: Lithic::Models::Document::RequiredDocumentUpload::ImageType::TaggedSymbol,
            rejected_entity_status_reasons: T::Array[String],
            status: Lithic::Models::Document::RequiredDocumentUpload::Status::TaggedSymbol,
            status_reasons: T::Array[Lithic::Models::Document::RequiredDocumentUpload::StatusReason::TaggedSymbol],
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
                image_type: Lithic::Models::Document::RequiredDocumentUpload::ImageType::TaggedSymbol,
                rejected_entity_status_reasons: T::Array[String],
                status: Lithic::Models::Document::RequiredDocumentUpload::Status::TaggedSymbol,
                status_reasons: T::Array[Lithic::Models::Document::RequiredDocumentUpload::StatusReason::TaggedSymbol],
                updated: Time,
                upload_url: String
              }
            )
        end
        def to_hash
        end

        # Type of image to upload.
        module ImageType
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::Document::RequiredDocumentUpload::ImageType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::Document::RequiredDocumentUpload::ImageType::TaggedSymbol) }

          FRONT = T.let(:FRONT, Lithic::Models::Document::RequiredDocumentUpload::ImageType::TaggedSymbol)
          BACK = T.let(:BACK, Lithic::Models::Document::RequiredDocumentUpload::ImageType::TaggedSymbol)
        end

        # Status of an account holder's document upload.
        module Status
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Document::RequiredDocumentUpload::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::Document::RequiredDocumentUpload::Status::TaggedSymbol) }

          ACCEPTED = T.let(:ACCEPTED, Lithic::Models::Document::RequiredDocumentUpload::Status::TaggedSymbol)
          REJECTED = T.let(:REJECTED, Lithic::Models::Document::RequiredDocumentUpload::Status::TaggedSymbol)
          PENDING_UPLOAD =
            T.let(:PENDING_UPLOAD, Lithic::Models::Document::RequiredDocumentUpload::Status::TaggedSymbol)
          UPLOADED = T.let(:UPLOADED, Lithic::Models::Document::RequiredDocumentUpload::Status::TaggedSymbol)
          PARTIAL_APPROVAL =
            T.let(:PARTIAL_APPROVAL, Lithic::Models::Document::RequiredDocumentUpload::Status::TaggedSymbol)
        end

        # The status reasons for an account holder document upload that is not ACCEPTED
        module StatusReason
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::Document::RequiredDocumentUpload::StatusReason) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::Document::RequiredDocumentUpload::StatusReason::TaggedSymbol) }

          DOCUMENT_MISSING_REQUIRED_DATA =
            T.let(
              :DOCUMENT_MISSING_REQUIRED_DATA,
              Lithic::Models::Document::RequiredDocumentUpload::StatusReason::TaggedSymbol
            )
          DOCUMENT_UPLOAD_TOO_BLURRY =
            T.let(
              :DOCUMENT_UPLOAD_TOO_BLURRY,
              Lithic::Models::Document::RequiredDocumentUpload::StatusReason::TaggedSymbol
            )
          FILE_SIZE_TOO_LARGE =
            T.let(:FILE_SIZE_TOO_LARGE, Lithic::Models::Document::RequiredDocumentUpload::StatusReason::TaggedSymbol)
          INVALID_DOCUMENT_TYPE =
            T.let(
              :INVALID_DOCUMENT_TYPE,
              Lithic::Models::Document::RequiredDocumentUpload::StatusReason::TaggedSymbol
            )
          INVALID_DOCUMENT_UPLOAD =
            T.let(
              :INVALID_DOCUMENT_UPLOAD,
              Lithic::Models::Document::RequiredDocumentUpload::StatusReason::TaggedSymbol
            )
          INVALID_ENTITY =
            T.let(:INVALID_ENTITY, Lithic::Models::Document::RequiredDocumentUpload::StatusReason::TaggedSymbol)
          DOCUMENT_EXPIRED =
            T.let(:DOCUMENT_EXPIRED, Lithic::Models::Document::RequiredDocumentUpload::StatusReason::TaggedSymbol)
          DOCUMENT_ISSUED_GREATER_THAN_30_DAYS =
            T.let(
              :DOCUMENT_ISSUED_GREATER_THAN_30_DAYS,
              Lithic::Models::Document::RequiredDocumentUpload::StatusReason::TaggedSymbol
            )
          DOCUMENT_TYPE_NOT_SUPPORTED =
            T.let(
              :DOCUMENT_TYPE_NOT_SUPPORTED,
              Lithic::Models::Document::RequiredDocumentUpload::StatusReason::TaggedSymbol
            )
          UNKNOWN_FAILURE_REASON =
            T.let(
              :UNKNOWN_FAILURE_REASON,
              Lithic::Models::Document::RequiredDocumentUpload::StatusReason::TaggedSymbol
            )
          UNKNOWN_ERROR =
            T.let(:UNKNOWN_ERROR, Lithic::Models::Document::RequiredDocumentUpload::StatusReason::TaggedSymbol)
        end
      end
    end
  end
end
