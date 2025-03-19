# typed: strong

module Lithic
  module Models
    class AccountHolderCreateResponse < Lithic::BaseModel
      # Globally unique identifier for the account holder.
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # Globally unique identifier for the account.
      sig { returns(String) }
      def account_token
      end

      sig { params(_: String).returns(String) }
      def account_token=(_)
      end

      # KYC and KYB evaluation states.
      #
      #   Note:
      #
      #   - `PENDING_REVIEW` is only applicable for the `KYB_BASIC` workflow.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # Reason for the evaluation status.
      sig { returns(T::Array[Symbol]) }
      def status_reasons
      end

      sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
      def status_reasons=(_)
      end

      # Timestamp of when the account holder was created.
      sig { returns(T.nilable(Time)) }
      def created
      end

      sig { params(_: Time).returns(Time) }
      def created=(_)
      end

      # Customer-provided token that indicates a relationship with an object outside of
      #   the Lithic ecosystem.
      sig { returns(T.nilable(String)) }
      def external_id
      end

      sig { params(_: String).returns(String) }
      def external_id=(_)
      end

      # Only present for "KYB_BASIC" workflow. A list of documents required for the
      #   account holder to be approved.
      sig { returns(T.nilable(T::Array[Lithic::Models::RequiredDocument])) }
      def required_documents
      end

      sig { params(_: T::Array[Lithic::Models::RequiredDocument]).returns(T::Array[Lithic::Models::RequiredDocument]) }
      def required_documents=(_)
      end

      sig do
        params(
          token: String,
          account_token: String,
          status: Symbol,
          status_reasons: T::Array[Symbol],
          created: Time,
          external_id: String,
          required_documents: T::Array[Lithic::Models::RequiredDocument]
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
              status: Symbol,
              status_reasons: T::Array[Symbol],
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
      class Status < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ACCEPTED = :ACCEPTED
        PENDING_REVIEW = :PENDING_REVIEW
        PENDING_DOCUMENT = :PENDING_DOCUMENT
        PENDING_RESUBMIT = :PENDING_RESUBMIT
        REJECTED = :REJECTED
      end

      # Status Reasons for KYC/KYB enrollment states
      class StatusReason < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ADDRESS_VERIFICATION_FAILURE = :ADDRESS_VERIFICATION_FAILURE
        AGE_THRESHOLD_FAILURE = :AGE_THRESHOLD_FAILURE
        COMPLETE_VERIFICATION_FAILURE = :COMPLETE_VERIFICATION_FAILURE
        DOB_VERIFICATION_FAILURE = :DOB_VERIFICATION_FAILURE
        ID_VERIFICATION_FAILURE = :ID_VERIFICATION_FAILURE
        MAX_DOCUMENT_ATTEMPTS = :MAX_DOCUMENT_ATTEMPTS
        MAX_RESUBMISSION_ATTEMPTS = :MAX_RESUBMISSION_ATTEMPTS
        NAME_VERIFICATION_FAILURE = :NAME_VERIFICATION_FAILURE
        OTHER_VERIFICATION_FAILURE = :OTHER_VERIFICATION_FAILURE
        RISK_THRESHOLD_FAILURE = :RISK_THRESHOLD_FAILURE
        WATCHLIST_ALERT_FAILURE = :WATCHLIST_ALERT_FAILURE
        PRIMARY_BUSINESS_ENTITY_ID_VERIFICATION_FAILURE = :PRIMARY_BUSINESS_ENTITY_ID_VERIFICATION_FAILURE
        PRIMARY_BUSINESS_ENTITY_ADDRESS_VERIFICATION_FAILURE =
          :PRIMARY_BUSINESS_ENTITY_ADDRESS_VERIFICATION_FAILURE
        PRIMARY_BUSINESS_ENTITY_NAME_VERIFICATION_FAILURE = :PRIMARY_BUSINESS_ENTITY_NAME_VERIFICATION_FAILURE
        PRIMARY_BUSINESS_ENTITY_BUSINESS_OFFICERS_NOT_MATCHED =
          :PRIMARY_BUSINESS_ENTITY_BUSINESS_OFFICERS_NOT_MATCHED
        PRIMARY_BUSINESS_ENTITY_SOS_FILING_INACTIVE = :PRIMARY_BUSINESS_ENTITY_SOS_FILING_INACTIVE
        PRIMARY_BUSINESS_ENTITY_SOS_NOT_MATCHED = :PRIMARY_BUSINESS_ENTITY_SOS_NOT_MATCHED
        PRIMARY_BUSINESS_ENTITY_CMRA_FAILURE = :PRIMARY_BUSINESS_ENTITY_CMRA_FAILURE
        PRIMARY_BUSINESS_ENTITY_WATCHLIST_FAILURE = :PRIMARY_BUSINESS_ENTITY_WATCHLIST_FAILURE
        PRIMARY_BUSINESS_ENTITY_REGISTERED_AGENT_FAILURE = :PRIMARY_BUSINESS_ENTITY_REGISTERED_AGENT_FAILURE
        CONTROL_PERSON_BLOCKLIST_ALERT_FAILURE = :CONTROL_PERSON_BLOCKLIST_ALERT_FAILURE
        CONTROL_PERSON_ID_VERIFICATION_FAILURE = :CONTROL_PERSON_ID_VERIFICATION_FAILURE
        CONTROL_PERSON_DOB_VERIFICATION_FAILURE = :CONTROL_PERSON_DOB_VERIFICATION_FAILURE
        CONTROL_PERSON_NAME_VERIFICATION_FAILURE = :CONTROL_PERSON_NAME_VERIFICATION_FAILURE
      end
    end
  end
end
