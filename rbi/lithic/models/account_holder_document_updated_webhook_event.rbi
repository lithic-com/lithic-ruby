# typed: strong

module Lithic
  module Models
    class AccountHolderDocumentUpdatedWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::AccountHolderDocumentUpdatedWebhookEvent,
            Lithic::Internal::AnyHash
          )
        end

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      # The token of the account holder document
      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      # The token of the account_holder that the document belongs to
      sig { returns(T.nilable(String)) }
      attr_reader :account_holder_token

      sig { params(account_holder_token: String).void }
      attr_writer :account_holder_token

      # When the account_holder was created
      sig { returns(T.nilable(Time)) }
      attr_reader :created

      sig { params(created: Time).void }
      attr_writer :created

      # Type of documentation to be submitted for verification of an account holder
      sig do
        returns(
          T.nilable(
            Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::TaggedSymbol
          )
        )
      end
      attr_reader :document_type

      sig do
        params(
          document_type:
            Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::OrSymbol
        ).void
      end
      attr_writer :document_type

      # The token of the entity that the document belongs to
      sig { returns(T.nilable(String)) }
      attr_reader :entity_token

      sig { params(entity_token: String).void }
      attr_writer :entity_token

      sig do
        returns(
          T.nilable(
            T::Array[
              Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload
            ]
          )
        )
      end
      attr_reader :required_document_uploads

      sig do
        params(
          required_document_uploads:
            T::Array[
              Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::OrHash
            ]
        ).void
      end
      attr_writer :required_document_uploads

      sig do
        params(
          token: String,
          account_holder_token: String,
          created: Time,
          document_type:
            Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::OrSymbol,
          entity_token: String,
          required_document_uploads:
            T::Array[
              Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::OrHash
            ],
          event_type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The token of the account holder document
        token: nil,
        # The token of the account_holder that the document belongs to
        account_holder_token: nil,
        # When the account_holder was created
        created: nil,
        # Type of documentation to be submitted for verification of an account holder
        document_type: nil,
        # The token of the entity that the document belongs to
        entity_token: nil,
        required_document_uploads: nil,
        # The type of event that occurred.
        event_type: :"account_holder_document.updated"
      )
      end

      sig do
        override.returns(
          {
            event_type: Symbol,
            token: String,
            account_holder_token: String,
            created: Time,
            document_type:
              Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::TaggedSymbol,
            entity_token: String,
            required_document_uploads:
              T::Array[
                Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload
              ]
          }
        )
      end
      def to_hash
      end

      # Type of documentation to be submitted for verification of an account holder
      module DocumentType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DRIVERS_LICENSE =
          T.let(
            :DRIVERS_LICENSE,
            Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::TaggedSymbol
          )
        PASSPORT =
          T.let(
            :PASSPORT,
            Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::TaggedSymbol
          )
        PASSPORT_CARD =
          T.let(
            :PASSPORT_CARD,
            Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::TaggedSymbol
          )
        EIN_LETTER =
          T.let(
            :EIN_LETTER,
            Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::TaggedSymbol
          )
        TAX_RETURN =
          T.let(
            :TAX_RETURN,
            Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::TaggedSymbol
          )
        OPERATING_AGREEMENT =
          T.let(
            :OPERATING_AGREEMENT,
            Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::TaggedSymbol
          )
        CERTIFICATE_OF_FORMATION =
          T.let(
            :CERTIFICATE_OF_FORMATION,
            Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::TaggedSymbol
          )
        CERTIFICATE_OF_GOOD_STANDING =
          T.let(
            :CERTIFICATE_OF_GOOD_STANDING,
            Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::TaggedSymbol
          )
        ARTICLES_OF_INCORPORATION =
          T.let(
            :ARTICLES_OF_INCORPORATION,
            Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::TaggedSymbol
          )
        ARTICLES_OF_ORGANIZATION =
          T.let(
            :ARTICLES_OF_ORGANIZATION,
            Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::TaggedSymbol
          )
        BYLAWS =
          T.let(
            :BYLAWS,
            Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::TaggedSymbol
          )
        GOVERNMENT_BUSINESS_LICENSE =
          T.let(
            :GOVERNMENT_BUSINESS_LICENSE,
            Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::TaggedSymbol
          )
        PARTNERSHIP_AGREEMENT =
          T.let(
            :PARTNERSHIP_AGREEMENT,
            Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::TaggedSymbol
          )
        SS4_FORM =
          T.let(
            :SS4_FORM,
            Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::TaggedSymbol
          )
        BANK_STATEMENT =
          T.let(
            :BANK_STATEMENT,
            Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::TaggedSymbol
          )
        UTILITY_BILL_STATEMENT =
          T.let(
            :UTILITY_BILL_STATEMENT,
            Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::TaggedSymbol
          )
        SSN_CARD =
          T.let(
            :SSN_CARD,
            Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::TaggedSymbol
          )
        ITIN_LETTER =
          T.let(
            :ITIN_LETTER,
            Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::TaggedSymbol
          )
        FINCEN_BOI_REPORT =
          T.let(
            :FINCEN_BOI_REPORT,
            Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::AccountHolderDocumentUpdatedWebhookEvent::DocumentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class RequiredDocumentUpload < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload,
              Lithic::Internal::AnyHash
            )
          end

        # The token of the document upload
        sig { returns(T.nilable(String)) }
        attr_reader :token

        sig { params(token: String).void }
        attr_writer :token

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :accepted_entity_status_reasons

        sig { params(accepted_entity_status_reasons: T::Array[String]).void }
        attr_writer :accepted_entity_status_reasons

        # When the document upload was created
        sig { returns(T.nilable(Time)) }
        attr_reader :created

        sig { params(created: Time).void }
        attr_writer :created

        # The type of image that was uploaded
        sig do
          returns(
            T.nilable(
              Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::ImageType::TaggedSymbol
            )
          )
        end
        attr_reader :image_type

        sig do
          params(
            image_type:
              Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::ImageType::OrSymbol
          ).void
        end
        attr_writer :image_type

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :rejected_entity_status_reasons

        sig { params(rejected_entity_status_reasons: T::Array[String]).void }
        attr_writer :rejected_entity_status_reasons

        # The status of the document upload
        sig do
          returns(
            T.nilable(
              Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :status_reasons

        sig { params(status_reasons: T::Array[String]).void }
        attr_writer :status_reasons

        # When the document upload was last updated
        sig { returns(T.nilable(Time)) }
        attr_reader :updated

        sig { params(updated: Time).void }
        attr_writer :updated

        # A document upload that belongs to the overall account holder document
        sig do
          params(
            token: String,
            accepted_entity_status_reasons: T::Array[String],
            created: Time,
            image_type:
              Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::ImageType::OrSymbol,
            rejected_entity_status_reasons: T::Array[String],
            status:
              Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::Status::OrSymbol,
            status_reasons: T::Array[String],
            updated: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The token of the document upload
          token: nil,
          accepted_entity_status_reasons: nil,
          # When the document upload was created
          created: nil,
          # The type of image that was uploaded
          image_type: nil,
          rejected_entity_status_reasons: nil,
          # The status of the document upload
          status: nil,
          status_reasons: nil,
          # When the document upload was last updated
          updated: nil
        )
        end

        sig do
          override.returns(
            {
              token: String,
              accepted_entity_status_reasons: T::Array[String],
              created: Time,
              image_type:
                Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::ImageType::TaggedSymbol,
              rejected_entity_status_reasons: T::Array[String],
              status:
                Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::Status::TaggedSymbol,
              status_reasons: T::Array[String],
              updated: Time
            }
          )
        end
        def to_hash
        end

        # The type of image that was uploaded
        module ImageType
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::ImageType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FRONT =
            T.let(
              :FRONT,
              Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::ImageType::TaggedSymbol
            )
          BACK =
            T.let(
              :BACK,
              Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::ImageType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::ImageType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The status of the document upload
        module Status
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCEPTED =
            T.let(
              :ACCEPTED,
              Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :REJECTED,
              Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::Status::TaggedSymbol
            )
          PENDING_UPLOAD =
            T.let(
              :PENDING_UPLOAD,
              Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::Status::TaggedSymbol
            )
          UPLOADED =
            T.let(
              :UPLOADED,
              Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::Status::TaggedSymbol
            )
          PARTIAL_APPROVAL =
            T.let(
              :PARTIAL_APPROVAL,
              Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::AccountHolderDocumentUpdatedWebhookEvent::RequiredDocumentUpload::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
