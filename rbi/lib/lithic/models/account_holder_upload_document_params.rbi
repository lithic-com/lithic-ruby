# typed: strong

module Lithic
  module Models
    class AccountHolderUploadDocumentParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # The type of document to upload
      sig { returns(Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol) }
      def document_type
      end

      sig do
        params(_: Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol)
          .returns(Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol)
      end
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
          document_type: Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol,
          entity_token: String,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(document_type:, entity_token:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              document_type: Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol,
              entity_token: String,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # The type of document to upload
      module DocumentType
        extend Lithic::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol) }

        EIN_LETTER =
          T.let(:EIN_LETTER, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol)
        TAX_RETURN =
          T.let(:TAX_RETURN, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol)
        OPERATING_AGREEMENT =
          T.let(:OPERATING_AGREEMENT, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol)
        CERTIFICATE_OF_FORMATION =
          T.let(
            :CERTIFICATE_OF_FORMATION,
            Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol
          )
        DRIVERS_LICENSE =
          T.let(:DRIVERS_LICENSE, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol)
        PASSPORT = T.let(:PASSPORT, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol)
        PASSPORT_CARD =
          T.let(:PASSPORT_CARD, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol)
        CERTIFICATE_OF_GOOD_STANDING =
          T.let(
            :CERTIFICATE_OF_GOOD_STANDING,
            Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol
          )
        ARTICLES_OF_INCORPORATION =
          T.let(
            :ARTICLES_OF_INCORPORATION,
            Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol
          )
        ARTICLES_OF_ORGANIZATION =
          T.let(
            :ARTICLES_OF_ORGANIZATION,
            Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol
          )
        BYLAWS = T.let(:BYLAWS, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol)
        GOVERNMENT_BUSINESS_LICENSE =
          T.let(
            :GOVERNMENT_BUSINESS_LICENSE,
            Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol
          )
        PARTNERSHIP_AGREEMENT =
          T.let(:PARTNERSHIP_AGREEMENT, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol)
        SS4_FORM = T.let(:SS4_FORM, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol)
        BANK_STATEMENT =
          T.let(:BANK_STATEMENT, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol)
        UTILITY_BILL_STATEMENT =
          T.let(:UTILITY_BILL_STATEMENT, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol)
        SSN_CARD = T.let(:SSN_CARD, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol)
        ITIN_LETTER =
          T.let(:ITIN_LETTER, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol)
        FINCEN_BOI_REPORT =
          T.let(:FINCEN_BOI_REPORT, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol)
      end
    end
  end
end
