# typed: strong

module Lithic
  module Models
    class AccountHolderUploadDocumentParams < Lithic::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # The type of document to upload
      sig { returns(Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol) }
      attr_accessor :document_type

      # Globally unique identifier for the entity.
      sig { returns(String) }
      attr_accessor :entity_token

      sig do
        params(
          document_type: Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::OrSymbol,
          entity_token: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::Util::AnyHash)
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
          T.type_alias { T.any(Symbol, String, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol) }

        EIN_LETTER =
          T.let(:EIN_LETTER, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol)
        TAX_RETURN =
          T.let(:TAX_RETURN, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol)
        OPERATING_AGREEMENT =
          T.let(:OPERATING_AGREEMENT, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol)
        CERTIFICATE_OF_FORMATION =
          T.let(
            :CERTIFICATE_OF_FORMATION,
            Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        DRIVERS_LICENSE =
          T.let(:DRIVERS_LICENSE, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol)
        PASSPORT =
          T.let(:PASSPORT, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol)
        PASSPORT_CARD =
          T.let(:PASSPORT_CARD, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol)
        CERTIFICATE_OF_GOOD_STANDING =
          T.let(
            :CERTIFICATE_OF_GOOD_STANDING,
            Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        ARTICLES_OF_INCORPORATION =
          T.let(
            :ARTICLES_OF_INCORPORATION,
            Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        ARTICLES_OF_ORGANIZATION =
          T.let(
            :ARTICLES_OF_ORGANIZATION,
            Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        BYLAWS = T.let(:BYLAWS, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol)
        GOVERNMENT_BUSINESS_LICENSE =
          T.let(
            :GOVERNMENT_BUSINESS_LICENSE,
            Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        PARTNERSHIP_AGREEMENT =
          T.let(
            :PARTNERSHIP_AGREEMENT,
            Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        SS4_FORM =
          T.let(:SS4_FORM, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol)
        BANK_STATEMENT =
          T.let(:BANK_STATEMENT, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol)
        UTILITY_BILL_STATEMENT =
          T.let(
            :UTILITY_BILL_STATEMENT,
            Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        SSN_CARD =
          T.let(:SSN_CARD, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol)
        ITIN_LETTER =
          T.let(:ITIN_LETTER, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol)
        FINCEN_BOI_REPORT =
          T.let(:FINCEN_BOI_REPORT, Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
