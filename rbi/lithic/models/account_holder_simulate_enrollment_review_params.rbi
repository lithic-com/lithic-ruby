# typed: strong

module Lithic
  module Models
    class AccountHolderSimulateEnrollmentReviewParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

      # The account holder which to perform the simulation upon.
      sig { returns(T.nilable(String)) }
      attr_reader :account_holder_token

      sig { params(account_holder_token: String).void }
      attr_writer :account_holder_token

      # An account holder's status for use within the simulation.
      sig do
        returns(
          T.nilable(
            Lithic::AccountHolderSimulateEnrollmentReviewParams::Status::OrSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status:
            Lithic::AccountHolderSimulateEnrollmentReviewParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      # Status reason that will be associated with the simulated account holder status.
      # Only required for a `REJECTED` status.
      sig do
        returns(
          T.nilable(
            T::Array[
              Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason::OrSymbol
            ]
          )
        )
      end
      attr_reader :status_reasons

      sig do
        params(
          status_reasons:
            T::Array[
              Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason::OrSymbol
            ]
        ).void
      end
      attr_writer :status_reasons

      sig do
        params(
          account_holder_token: String,
          status:
            Lithic::AccountHolderSimulateEnrollmentReviewParams::Status::OrSymbol,
          status_reasons:
            T::Array[
              Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason::OrSymbol
            ],
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The account holder which to perform the simulation upon.
        account_holder_token: nil,
        # An account holder's status for use within the simulation.
        status: nil,
        # Status reason that will be associated with the simulated account holder status.
        # Only required for a `REJECTED` status.
        status_reasons: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_holder_token: String,
            status:
              Lithic::AccountHolderSimulateEnrollmentReviewParams::Status::OrSymbol,
            status_reasons:
              T::Array[
                Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason::OrSymbol
              ],
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # An account holder's status for use within the simulation.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::AccountHolderSimulateEnrollmentReviewParams::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCEPTED =
          T.let(
            :ACCEPTED,
            Lithic::AccountHolderSimulateEnrollmentReviewParams::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :REJECTED,
            Lithic::AccountHolderSimulateEnrollmentReviewParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::AccountHolderSimulateEnrollmentReviewParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module StatusReason
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRIMARY_BUSINESS_ENTITY_ID_VERIFICATION_FAILURE =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_ID_VERIFICATION_FAILURE,
            Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_ADDRESS_VERIFICATION_FAILURE =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_ADDRESS_VERIFICATION_FAILURE,
            Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_NAME_VERIFICATION_FAILURE =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_NAME_VERIFICATION_FAILURE,
            Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_BUSINESS_OFFICERS_NOT_MATCHED =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_BUSINESS_OFFICERS_NOT_MATCHED,
            Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_SOS_FILING_INACTIVE =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_SOS_FILING_INACTIVE,
            Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_SOS_NOT_MATCHED =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_SOS_NOT_MATCHED,
            Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_CMRA_FAILURE =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_CMRA_FAILURE,
            Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_WATCHLIST_FAILURE =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_WATCHLIST_FAILURE,
            Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason::TaggedSymbol
          )
        PRIMARY_BUSINESS_ENTITY_REGISTERED_AGENT_FAILURE =
          T.let(
            :PRIMARY_BUSINESS_ENTITY_REGISTERED_AGENT_FAILURE,
            Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason::TaggedSymbol
          )
        CONTROL_PERSON_BLOCKLIST_ALERT_FAILURE =
          T.let(
            :CONTROL_PERSON_BLOCKLIST_ALERT_FAILURE,
            Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason::TaggedSymbol
          )
        CONTROL_PERSON_ID_VERIFICATION_FAILURE =
          T.let(
            :CONTROL_PERSON_ID_VERIFICATION_FAILURE,
            Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason::TaggedSymbol
          )
        CONTROL_PERSON_DOB_VERIFICATION_FAILURE =
          T.let(
            :CONTROL_PERSON_DOB_VERIFICATION_FAILURE,
            Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason::TaggedSymbol
          )
        CONTROL_PERSON_NAME_VERIFICATION_FAILURE =
          T.let(
            :CONTROL_PERSON_NAME_VERIFICATION_FAILURE,
            Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason::TaggedSymbol
          )
        BENEFICIAL_OWNER_INDIVIDUAL_DOB_VERIFICATION_FAILURE =
          T.let(
            :BENEFICIAL_OWNER_INDIVIDUAL_DOB_VERIFICATION_FAILURE,
            Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason::TaggedSymbol
          )
        BENEFICIAL_OWNER_INDIVIDUAL_BLOCKLIST_ALERT_FAILURE =
          T.let(
            :BENEFICIAL_OWNER_INDIVIDUAL_BLOCKLIST_ALERT_FAILURE,
            Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason::TaggedSymbol
          )
        BENEFICIAL_OWNER_INDIVIDUAL_ID_VERIFICATION_FAILURE =
          T.let(
            :BENEFICIAL_OWNER_INDIVIDUAL_ID_VERIFICATION_FAILURE,
            Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason::TaggedSymbol
          )
        BENEFICIAL_OWNER_INDIVIDUAL_NAME_VERIFICATION_FAILURE =
          T.let(
            :BENEFICIAL_OWNER_INDIVIDUAL_NAME_VERIFICATION_FAILURE,
            Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
