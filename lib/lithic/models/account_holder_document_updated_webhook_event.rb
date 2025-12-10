# frozen_string_literal: true

module Lithic
  module Models
    class AccountHolderDocumentUpdatedWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"account_holder_document.updated"]
      required :event_type, const: :"account_holder_document.updated"

      # @!attribute token
      #   The token of the account holder document
      #
      #   @return [String, nil]
      optional :token, String

      # @!attribute account_holder_token
      #   The token of the account_holder that the document belongs to
      #
      #   @return [String, nil]
      optional :account_holder_token, String

      # @!attribute created
      #   When the account_holder was created
      #
      #   @return [Time, nil]
      optional :created, Time

      # @!attribute document_type
      #   Type of documentation to be submitted for verification of an account holder
      #
      #   @return [Symbol, Lithic::Models::AccountHolderDocumentUpdatedWebhookEvent::DocumentType, nil]
      optional :document_type, enum: -> { Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType }

      # @!attribute entity_token
      #   The token of the entity that the document belongs to
      #
      #   @return [String, nil]
      optional :entity_token, String

      # @!attribute required_document_uploads
      #
      #   @return [Array<Lithic::Models::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload>, nil]
      optional :required_document_uploads,
               -> { Lithic::Internal::Type::ArrayOf[Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload] }

      # @!method initialize(token: nil, account_holder_token: nil, created: nil, document_type: nil, entity_token: nil, required_document_uploads: nil, event_type: :"account_holder_document.updated")
      #   @param token [String] The token of the account holder document
      #
      #   @param account_holder_token [String] The token of the account_holder that the document belongs to
      #
      #   @param created [Time] When the account_holder was created
      #
      #   @param document_type [Symbol, Lithic::Models::AccountHolderDocumentUpdatedWebhookEvent::DocumentType] Type of documentation to be submitted for verification of an account holder
      #
      #   @param entity_token [String] The token of the entity that the document belongs to
      #
      #   @param required_document_uploads [Array<Lithic::Models::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload>]
      #
      #   @param event_type [Symbol, :"account_holder_document.updated"] The type of event that occurred.

      # Type of documentation to be submitted for verification of an account holder
      #
      # @see Lithic::Models::AccountHolderDocumentUpdatedWebhookEvent#document_type
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

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class RequiredDocumentUpload < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   The token of the document upload
        #
        #   @return [String, nil]
        optional :token, String

        # @!attribute accepted_entity_status_reasons
        #
        #   @return [Array<String>, nil]
        optional :accepted_entity_status_reasons, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute created
        #   When the document upload was created
        #
        #   @return [Time, nil]
        optional :created, Time

        # @!attribute image_type
        #   The type of image that was uploaded
        #
        #   @return [Symbol, Lithic::Models::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::ImageType, nil]
        optional :image_type,
                 enum: -> { Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::ImageType }

        # @!attribute rejected_entity_status_reasons
        #
        #   @return [Array<String>, nil]
        optional :rejected_entity_status_reasons, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute status
        #   The status of the document upload
        #
        #   @return [Symbol, Lithic::Models::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::Status, nil]
        optional :status,
                 enum: -> { Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::Status }

        # @!attribute status_reasons
        #
        #   @return [Array<String>, nil]
        optional :status_reasons, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute updated
        #   When the document upload was last updated
        #
        #   @return [Time, nil]
        optional :updated, Time

        # @!method initialize(token: nil, accepted_entity_status_reasons: nil, created: nil, image_type: nil, rejected_entity_status_reasons: nil, status: nil, status_reasons: nil, updated: nil)
        #   A document upload that belongs to the overall account holder document
        #
        #   @param token [String] The token of the document upload
        #
        #   @param accepted_entity_status_reasons [Array<String>]
        #
        #   @param created [Time] When the document upload was created
        #
        #   @param image_type [Symbol, Lithic::Models::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::ImageType] The type of image that was uploaded
        #
        #   @param rejected_entity_status_reasons [Array<String>]
        #
        #   @param status [Symbol, Lithic::Models::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::Status] The status of the document upload
        #
        #   @param status_reasons [Array<String>]
        #
        #   @param updated [Time] When the document upload was last updated

        # The type of image that was uploaded
        #
        # @see Lithic::Models::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload#image_type
        module ImageType
          extend Lithic::Internal::Type::Enum

          FRONT = :FRONT
          BACK = :BACK

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The status of the document upload
        #
        # @see Lithic::Models::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload#status
        module Status
          extend Lithic::Internal::Type::Enum

          ACCEPTED = :ACCEPTED
          REJECTED = :REJECTED
          PENDING_UPLOAD = :PENDING_UPLOAD
          UPLOADED = :UPLOADED
          PARTIAL_APPROVAL = :PARTIAL_APPROVAL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
