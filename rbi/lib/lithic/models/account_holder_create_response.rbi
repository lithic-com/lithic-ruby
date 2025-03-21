# typed: strong

module Lithic
  module Models
    class AccountHolderCreateResponse < Lithic::BaseModel
      # Globally unique identifier for the account holder.
      sig { returns(String) }
      attr_accessor :token

      # Globally unique identifier for the account.
      sig { returns(String) }
      attr_accessor :account_token

      # KYC and KYB evaluation states.
      #
      #   Note:
      #
      #   - `PENDING_REVIEW` is only applicable for the `KYB_BASIC` workflow.
      sig { returns(Lithic::Models::AccountHolderCreateResponse::Status::TaggedSymbol) }
      attr_accessor :status

      # Reason for the evaluation status.
      sig { returns(T::Array[Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol]) }
      attr_accessor :status_reasons

      # Timestamp of when the account holder was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created

      sig { params(created: Time).void }
      attr_writer :created

      # Customer-provided token that indicates a relationship with an object outside of
      #   the Lithic ecosystem.
      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      # Only present for "KYB_BASIC" workflow. A list of documents required for the
      #   account holder to be approved.
      sig { returns(T.nilable(T::Array[Lithic::Models::RequiredDocument])) }
      attr_reader :required_documents

      sig { params(required_documents: T::Array[T.any(Lithic::Models::RequiredDocument, Lithic::Util::AnyHash)]).void }
      attr_writer :required_documents

      sig do
        params(
          token: String,
          account_token: String,
          status: Lithic::Models::AccountHolderCreateResponse::Status::OrSymbol,
          status_reasons: T::Array[Lithic::Models::AccountHolderCreateResponse::StatusReason::OrSymbol],
          created: Time,
          external_id: String,
          required_documents: T::Array[T.any(Lithic::Models::RequiredDocument, Lithic::Util::AnyHash)]
        )
          .returns(T.attached_class)
      end
      def self.new(token:, account_token:, status:, status_reasons:, created: nil, external_id: nil, required_documents: nil)
      end

      sig do
        override
          .returns(
            {
              token: String,
              account_token: String,
              status: Lithic::Models::AccountHolderCreateResponse::Status::TaggedSymbol,
              status_reasons: T::Array[Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol],
              created: Time,
              external_id: String,
              required_documents: T::Array[Lithic::Models::RequiredDocument]
            }
          )
      end
      def to_hash
      end

      # KYC and KYB evaluation states.
      #
      #   Note:
      #
      #   - `PENDING_REVIEW` is only applicable for the `KYB_BASIC` workflow.
      module Status
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AccountHolderCreateResponse::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::AccountHolderCreateResponse::Status::TaggedSymbol) }

        ACCEPTED = T.let(:ACCEPTED, Lithic::Models::AccountHolderCreateResponse::Status::TaggedSymbol)
        PENDING_REVIEW =
          T.let(:PENDING_REVIEW, Lithic::Models::AccountHolderCreateResponse::Status::TaggedSymbol)
        PENDING_DOCUMENT =
          T.let(:PENDING_DOCUMENT, Lithic::Models::AccountHolderCreateResponse::Status::TaggedSymbol)
        PENDING_RESUBMIT =
          T.let(:PENDING_RESUBMIT, Lithic::Models::AccountHolderCreateResponse::Status::TaggedSymbol)
        REJECTED = T.let(:REJECTED, Lithic::Models::AccountHolderCreateResponse::Status::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::AccountHolderCreateResponse::Status::TaggedSymbol]) }
        def self.values
        end
      end

      # Status Reasons for KYC/KYB enrollment states
      module StatusReason
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AccountHolderCreateResponse::StatusReason) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol) }

        ADDRESS_VERIFICATION_FAILURE =
          T.let(
            :ADDRESS_VERIFICATION_FAILURE,
            Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol
          )
        AGE_THRESHOLD_FAILURE =
          T.let(:AGE_THRESHOLD_FAILURE, Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol)
        COMPLETE_VERIFICATION_FAILURE =
          T.let(
            :COMPLETE_VERIFICATION_FAILURE,
            Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol
          )
        DOB_VERIFICATION_FAILURE =
          T.let(:DOB_VERIFICATION_FAILURE, Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol)
        ID_VERIFICATION_FAILURE =
          T.let(:ID_VERIFICATION_FAILURE, Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol)
        MAX_DOCUMENT_ATTEMPTS =
          T.let(:MAX_DOCUMENT_ATTEMPTS, Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol)
        MAX_RESUBMISSION_ATTEMPTS =
          T.let(:MAX_RESUBMISSION_ATTEMPTS, Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol)
        NAME_VERIFICATION_FAILURE =
          T.let(:NAME_VERIFICATION_FAILURE, Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol)
        OTHER_VERIFICATION_FAILURE =
          T.let(
            :OTHER_VERIFICATION_FAILURE,
            Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol
          )
        RISK_THRESHOLD_FAILURE =
          T.let(:RISK_THRESHOLD_FAILURE, Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol)
        WATCHLIST_ALERT_FAILURE =
          T.let(:WATCHLIST_ALERT_FAILURE, Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol)
        PRIMARY_BUSINESS_ENTITY_ID_VERIFICATION_FAILURE =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_ID_VERIFICATION_FAILURE,
            Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_ADDRESS_VERIFICATION_FAILURE =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_ADDRESS_VERIFICATION_FAILURE,
            Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_NAME_VERIFICATION_FAILURE =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_NAME_VERIFICATION_FAILURE,
            Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_BUSINESS_OFFICERS_NOT_MATCHED =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_BUSINESS_OFFICERS_NOT_MATCHED,
            Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_SOS_FILING_INACTIVE =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_SOS_FILING_INACTIVE,
            Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_SOS_NOT_MATCHED =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_SOS_NOT_MATCHED,
            Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_CMRA_FAILURE =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_CMRA_FAILURE,
            Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_WATCHLIST_FAILURE =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_WATCHLIST_FAILURE,
            Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_REGISTERED_AGENT_FAILURE =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_REGISTERED_AGENT_FAILURE,
            Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol
          )
        CONTROL_PERSON_BLOCKLIST_ALERT_FAILURE =
          T.let(
            :CONTROL_PERSON_BLOCKLIST_ALERT_FAILURE,
            Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol
          )
        CONTROL_PERSON_ID_VERIFICATION_FAILURE =
          T.let(
            :CONTROL_PERSON_ID_VERIFICATION_FAILURE,
            Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol
          )
        CONTROL_PERSON_DOB_VERIFICATION_FAILURE =
          T.let(
            :CONTROL_PERSON_DOB_VERIFICATION_FAILURE,
            Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol
          )
        CONTROL_PERSON_NAME_VERIFICATION_FAILURE =
          T.let(
            :CONTROL_PERSON_NAME_VERIFICATION_FAILURE,
            Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol
          )

        sig { override.returns(T::Array[Lithic::Models::AccountHolderCreateResponse::StatusReason::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
