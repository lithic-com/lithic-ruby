# typed: strong

module Lithic
  module Models
    module AccountHolders
      class EntityCreateResponse < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::AccountHolders::EntityCreateResponse,
              Lithic::Internal::AnyHash
            )
          end

        # Globally unique identifier for the entity
        sig { returns(String) }
        attr_accessor :token

        # Globally unique identifier for the account holder
        sig { returns(String) }
        attr_accessor :account_holder_token

        # Timestamp of when the entity was created
        sig { returns(Time) }
        attr_accessor :created

        # A list of documents required for the entity to be approved
        sig { returns(T::Array[Lithic::RequiredDocument]) }
        attr_accessor :required_documents

        # Entity verification status
        sig do
          returns(
            Lithic::Models::AccountHolders::EntityCreateResponse::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # Reason for the evaluation status
        sig do
          returns(
            T::Array[
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            ]
          )
        end
        attr_accessor :status_reasons

        # Response body for creating a new beneficial owner or replacing the control
        # person entity on an existing KYB account holder.
        sig do
          params(
            token: String,
            account_holder_token: String,
            created: Time,
            required_documents: T::Array[Lithic::RequiredDocument::OrHash],
            status:
              Lithic::Models::AccountHolders::EntityCreateResponse::Status::OrSymbol,
            status_reasons:
              T::Array[
                Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::OrSymbol
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier for the entity
          token:,
          # Globally unique identifier for the account holder
          account_holder_token:,
          # Timestamp of when the entity was created
          created:,
          # A list of documents required for the entity to be approved
          required_documents:,
          # Entity verification status
          status:,
          # Reason for the evaluation status
          status_reasons:
        )
        end

        sig do
          override.returns(
            {
              token: String,
              account_holder_token: String,
              created: Time,
              required_documents: T::Array[Lithic::RequiredDocument],
              status:
                Lithic::Models::AccountHolders::EntityCreateResponse::Status::TaggedSymbol,
              status_reasons:
                T::Array[
                  Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
                ]
            }
          )
        end
        def to_hash
        end

        # Entity verification status
        module Status
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AccountHolders::EntityCreateResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCEPTED =
            T.let(
              :ACCEPTED,
              Lithic::Models::AccountHolders::EntityCreateResponse::Status::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :INACTIVE,
              Lithic::Models::AccountHolders::EntityCreateResponse::Status::TaggedSymbol
            )
          PENDING_REVIEW =
            T.let(
              :PENDING_REVIEW,
              Lithic::Models::AccountHolders::EntityCreateResponse::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :REJECTED,
              Lithic::Models::AccountHolders::EntityCreateResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountHolders::EntityCreateResponse::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Status Reasons for KYC/KYB enrollment states
        module StatusReason
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ADDRESS_VERIFICATION_FAILURE =
            T.let(
              :ADDRESS_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )
          AGE_THRESHOLD_FAILURE =
            T.let(
              :AGE_THRESHOLD_FAILURE,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )
          COMPLETE_VERIFICATION_FAILURE =
            T.let(
              :COMPLETE_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )
          DOB_VERIFICATION_FAILURE =
            T.let(
              :DOB_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )
          ID_VERIFICATION_FAILURE =
            T.let(
              :ID_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )
          MAX_DOCUMENT_ATTEMPTS =
            T.let(
              :MAX_DOCUMENT_ATTEMPTS,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )
          MAX_RESUBMISSION_ATTEMPTS =
            T.let(
              :MAX_RESUBMISSION_ATTEMPTS,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )
          NAME_VERIFICATION_FAILURE =
            T.let(
              :NAME_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )
          OTHER_VERIFICATION_FAILURE =
            T.let(
              :OTHER_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )
          RISK_THRESHOLD_FAILURE =
            T.let(
              :RISK_THRESHOLD_FAILURE,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )
          WATCHLIST_ALERT_FAILURE =
            T.let(
              :WATCHLIST_ALERT_FAILURE,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_ID_VERIFICATION_FAILURE =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_ID_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_ADDRESS_VERIFICATION_FAILURE =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_ADDRESS_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_NAME_VERIFICATION_FAILURE =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_NAME_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_BUSINESS_OFFICERS_NOT_MATCHED =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_BUSINESS_OFFICERS_NOT_MATCHED,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_SOS_FILING_INACTIVE =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_SOS_FILING_INACTIVE,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_SOS_NOT_MATCHED =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_SOS_NOT_MATCHED,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_CMRA_FAILURE =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_CMRA_FAILURE,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_WATCHLIST_FAILURE =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_WATCHLIST_FAILURE,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )
          PRIMARY_BUSINESS_ENTITY_REGISTERED_AGENT_FAILURE =
            T.let(
              :PRIMARY_BUSINESS_ENTITY_REGISTERED_AGENT_FAILURE,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )
          CONTROL_PERSON_BLOCKLIST_ALERT_FAILURE =
            T.let(
              :CONTROL_PERSON_BLOCKLIST_ALERT_FAILURE,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )
          CONTROL_PERSON_ID_VERIFICATION_FAILURE =
            T.let(
              :CONTROL_PERSON_ID_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )
          CONTROL_PERSON_DOB_VERIFICATION_FAILURE =
            T.let(
              :CONTROL_PERSON_DOB_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )
          CONTROL_PERSON_NAME_VERIFICATION_FAILURE =
            T.let(
              :CONTROL_PERSON_NAME_VERIFICATION_FAILURE,
              Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason::TaggedSymbol
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
