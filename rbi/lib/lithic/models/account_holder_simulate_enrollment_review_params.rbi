# typed: strong

module Lithic
  module Models
    class AccountHolderSimulateEnrollmentReviewParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # The account holder which to perform the simulation upon.
      sig { returns(T.nilable(String)) }
      def account_holder_token
      end

      sig { params(_: String).returns(String) }
      def account_holder_token=(_)
      end

      # An account holder's status for use within the simulation.
      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # Status reason that will be associated with the simulated account holder status.
      #   Only required for a `REJECTED` status.
      sig { returns(T.nilable(T::Array[Symbol])) }
      def status_reasons
      end

      sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
      def status_reasons=(_)
      end

      sig do
        params(
          account_holder_token: String,
          status: Symbol,
          status_reasons: T::Array[Symbol],
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(account_holder_token: nil, status: nil, status_reasons: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              account_holder_token: String,
              status: Symbol,
              status_reasons: T::Array[Symbol],
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # An account holder's status for use within the simulation.
      class Status < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ACCEPTED = :ACCEPTED
        REJECTED = :REJECTED
      end

      class StatusReason < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

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
        BENEFICIAL_OWNER_INDIVIDUAL_DOB_VERIFICATION_FAILURE =
          :BENEFICIAL_OWNER_INDIVIDUAL_DOB_VERIFICATION_FAILURE
        BENEFICIAL_OWNER_INDIVIDUAL_BLOCKLIST_ALERT_FAILURE =
          :BENEFICIAL_OWNER_INDIVIDUAL_BLOCKLIST_ALERT_FAILURE
        BENEFICIAL_OWNER_INDIVIDUAL_ID_VERIFICATION_FAILURE =
          :BENEFICIAL_OWNER_INDIVIDUAL_ID_VERIFICATION_FAILURE
        BENEFICIAL_OWNER_INDIVIDUAL_NAME_VERIFICATION_FAILURE =
          :BENEFICIAL_OWNER_INDIVIDUAL_NAME_VERIFICATION_FAILURE
      end
    end
  end
end
