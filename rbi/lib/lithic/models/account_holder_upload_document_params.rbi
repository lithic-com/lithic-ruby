# typed: strong

module Lithic
  module Models
    class AccountHolderUploadDocumentParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # The type of document to upload
      sig { returns(Symbol) }
      def document_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def document_type=(_)
      end

      # Globally unique identifier for the entity.
      sig { returns(String) }
      def entity_token
      end

      sig { params(_: String).returns(String) }
      def entity_token=(_)
      end

      sig do
        params(
          document_type: Symbol,
          entity_token: String,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(document_type:, entity_token:, request_options: {})
      end

      sig do
        override.returns(
          {
            document_type: Symbol,
            entity_token: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The type of document to upload
      class DocumentType < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        EIN_LETTER = :EIN_LETTER
        TAX_RETURN = :TAX_RETURN
        OPERATING_AGREEMENT = :OPERATING_AGREEMENT
        CERTIFICATE_OF_FORMATION = :CERTIFICATE_OF_FORMATION
        DRIVERS_LICENSE = :DRIVERS_LICENSE
        PASSPORT = :PASSPORT
        PASSPORT_CARD = :PASSPORT_CARD
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
    end
  end
end
