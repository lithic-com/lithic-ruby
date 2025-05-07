# typed: strong

module Lithic
  module Models
    class AccountHolderUploadDocumentParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

      # The type of document to upload
      sig do
        returns(
          Lithic::AccountHolderUploadDocumentParams::DocumentType::OrSymbol
        )
      end
      attr_accessor :document_type

      # Globally unique identifier for the entity.
      sig { returns(String) }
      attr_accessor :entity_token

      sig do
        params(
          document_type:
            Lithic::AccountHolderUploadDocumentParams::DocumentType::OrSymbol,
          entity_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The type of document to upload
        document_type:,
        # Globally unique identifier for the entity.
        entity_token:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            document_type:
              Lithic::AccountHolderUploadDocumentParams::DocumentType::OrSymbol,
            entity_token: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The type of document to upload
      module DocumentType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::AccountHolderUploadDocumentParams::DocumentType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EIN_LETTER =
          T.let(
            :EIN_LETTER,
            Lithic::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        TAX_RETURN =
          T.let(
            :TAX_RETURN,
            Lithic::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        OPERATING_AGREEMENT =
          T.let(
            :OPERATING_AGREEMENT,
            Lithic::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        CERTIFICATE_OF_FORMATION =
          T.let(
            :CERTIFICATE_OF_FORMATION,
            Lithic::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        DRIVERS_LICENSE =
          T.let(
            :DRIVERS_LICENSE,
            Lithic::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        PASSPORT =
          T.let(
            :PASSPORT,
            Lithic::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        PASSPORT_CARD =
          T.let(
            :PASSPORT_CARD,
            Lithic::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        CERTIFICATE_OF_GOOD_STANDING =
          T.let(
            :CERTIFICATE_OF_GOOD_STANDING,
            Lithic::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        ARTICLES_OF_INCORPORATION =
          T.let(
            :ARTICLES_OF_INCORPORATION,
            Lithic::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        ARTICLES_OF_ORGANIZATION =
          T.let(
            :ARTICLES_OF_ORGANIZATION,
            Lithic::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        BYLAWS =
          T.let(
            :BYLAWS,
            Lithic::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        GOVERNMENT_BUSINESS_LICENSE =
          T.let(
            :GOVERNMENT_BUSINESS_LICENSE,
            Lithic::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        PARTNERSHIP_AGREEMENT =
          T.let(
            :PARTNERSHIP_AGREEMENT,
            Lithic::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        SS4_FORM =
          T.let(
            :SS4_FORM,
            Lithic::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        BANK_STATEMENT =
          T.let(
            :BANK_STATEMENT,
            Lithic::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        UTILITY_BILL_STATEMENT =
          T.let(
            :UTILITY_BILL_STATEMENT,
            Lithic::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        SSN_CARD =
          T.let(
            :SSN_CARD,
            Lithic::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        ITIN_LETTER =
          T.let(
            :ITIN_LETTER,
            Lithic::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )
        FINCEN_BOI_REPORT =
          T.let(
            :FINCEN_BOI_REPORT,
            Lithic::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::AccountHolderUploadDocumentParams::DocumentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
