# typed: strong

module Lithic
  module Models
    class Dispute < Lithic::BaseModel
      # Globally unique identifier.
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # Amount under dispute. May be different from the original transaction amount.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # Date dispute entered arbitration.
      sig { returns(T.nilable(Time)) }
      def arbitration_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def arbitration_date=(_)
      end

      # Timestamp of when first Dispute was reported.
      sig { returns(Time) }
      def created
      end

      sig { params(_: Time).returns(Time) }
      def created=(_)
      end

      # Date that the dispute was filed by the customer making the dispute.
      sig { returns(T.nilable(Time)) }
      def customer_filed_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def customer_filed_date=(_)
      end

      # End customer description of the reason for the dispute.
      sig { returns(T.nilable(String)) }
      def customer_note
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def customer_note=(_)
      end

      # Unique identifiers for the dispute from the network.
      sig { returns(T.nilable(T::Array[String])) }
      def network_claim_ids
      end

      sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def network_claim_ids=(_)
      end

      # Date that the dispute was submitted to the network.
      sig { returns(T.nilable(Time)) }
      def network_filed_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def network_filed_date=(_)
      end

      # Network reason code used to file the dispute.
      sig { returns(T.nilable(String)) }
      def network_reason_code
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def network_reason_code=(_)
      end

      # Date dispute entered pre-arbitration.
      sig { returns(T.nilable(Time)) }
      def prearbitration_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def prearbitration_date=(_)
      end

      # Unique identifier for the dispute from the network. If there are multiple, this
      #   will be the first claim id set by the network
      sig { returns(T.nilable(String)) }
      def primary_claim_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def primary_claim_id=(_)
      end

      # Dispute reason:
      #
      #   - `ATM_CASH_MISDISPENSE`: ATM cash misdispense.
      #   - `CANCELLED`: Transaction was cancelled by the customer.
      #   - `DUPLICATED`: The transaction was a duplicate.
      #   - `FRAUD_CARD_NOT_PRESENT`: Fraudulent transaction, card not present.
      #   - `FRAUD_CARD_PRESENT`: Fraudulent transaction, card present.
      #   - `FRAUD_OTHER`: Fraudulent transaction, other types such as questionable
      #     merchant activity.
      #   - `GOODS_SERVICES_NOT_AS_DESCRIBED`: The goods or services were not as
      #     described.
      #   - `GOODS_SERVICES_NOT_RECEIVED`: The goods or services were not received.
      #   - `INCORRECT_AMOUNT`: The transaction amount was incorrect.
      #   - `MISSING_AUTH`: The transaction was missing authorization.
      #   - `OTHER`: Other reason.
      #   - `PROCESSING_ERROR`: Processing error.
      #   - `REFUND_NOT_PROCESSED`: The refund was not processed.
      #   - `RECURRING_TRANSACTION_NOT_CANCELLED`: The recurring transaction was not
      #     cancelled.
      sig { returns(Symbol) }
      def reason
      end

      sig { params(_: Symbol).returns(Symbol) }
      def reason=(_)
      end

      # Date the representment was received.
      sig { returns(T.nilable(Time)) }
      def representment_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def representment_date=(_)
      end

      # Resolution amount net of network fees.
      sig { returns(T.nilable(Integer)) }
      def resolution_amount
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def resolution_amount=(_)
      end

      # Date that the dispute was resolved.
      sig { returns(T.nilable(Time)) }
      def resolution_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def resolution_date=(_)
      end

      # Note by Dispute team on the case resolution.
      sig { returns(T.nilable(String)) }
      def resolution_note
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def resolution_note=(_)
      end

      # Reason for the dispute resolution:
      #
      #   - `CASE_LOST`: This case was lost at final arbitration.
      #   - `NETWORK_REJECTED`: Network rejected.
      #   - `NO_DISPUTE_RIGHTS_3DS`: No dispute rights, 3DS.
      #   - `NO_DISPUTE_RIGHTS_BELOW_THRESHOLD`: No dispute rights, below threshold.
      #   - `NO_DISPUTE_RIGHTS_CONTACTLESS`: No dispute rights, contactless.
      #   - `NO_DISPUTE_RIGHTS_HYBRID`: No dispute rights, hybrid.
      #   - `NO_DISPUTE_RIGHTS_MAX_CHARGEBACKS`: No dispute rights, max chargebacks.
      #   - `NO_DISPUTE_RIGHTS_OTHER`: No dispute rights, other.
      #   - `PAST_FILING_DATE`: Past filing date.
      #   - `PREARBITRATION_REJECTED`: Prearbitration rejected.
      #   - `PROCESSOR_REJECTED_OTHER`: Processor rejected, other.
      #   - `REFUNDED`: Refunded.
      #   - `REFUNDED_AFTER_CHARGEBACK`: Refunded after chargeback.
      #   - `WITHDRAWN`: Withdrawn.
      #   - `WON_ARBITRATION`: Won arbitration.
      #   - `WON_FIRST_CHARGEBACK`: Won first chargeback.
      #   - `WON_PREARBITRATION`: Won prearbitration.
      sig { returns(T.nilable(Symbol)) }
      def resolution_reason
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def resolution_reason=(_)
      end

      # Status types:
      #
      #   - `NEW` - New dispute case is opened.
      #   - `PENDING_CUSTOMER` - Lithic is waiting for customer to provide more
      #     information.
      #   - `SUBMITTED` - Dispute is submitted to the card network.
      #   - `REPRESENTMENT` - Case has entered second presentment.
      #   - `PREARBITRATION` - Case has entered prearbitration.
      #   - `ARBITRATION` - Case has entered arbitration.
      #   - `CASE_WON` - Case was won and credit will be issued.
      #   - `CASE_CLOSED` - Case was lost or withdrawn.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # The transaction that is being disputed. A transaction can only be disputed once
      #   but may have multiple dispute cases.
      sig { returns(String) }
      def transaction_token
      end

      sig { params(_: String).returns(String) }
      def transaction_token=(_)
      end

      # Dispute.
      sig do
        params(
          token: String,
          amount: Integer,
          arbitration_date: T.nilable(Time),
          created: Time,
          customer_filed_date: T.nilable(Time),
          customer_note: T.nilable(String),
          network_claim_ids: T.nilable(T::Array[String]),
          network_filed_date: T.nilable(Time),
          network_reason_code: T.nilable(String),
          prearbitration_date: T.nilable(Time),
          primary_claim_id: T.nilable(String),
          reason: Symbol,
          representment_date: T.nilable(Time),
          resolution_amount: T.nilable(Integer),
          resolution_date: T.nilable(Time),
          resolution_note: T.nilable(String),
          resolution_reason: T.nilable(Symbol),
          status: Symbol,
          transaction_token: String
        )
          .returns(T.attached_class)
      end
      def self.new(
        token:,
        amount:,
        arbitration_date:,
        created:,
        customer_filed_date:,
        customer_note:,
        network_claim_ids:,
        network_filed_date:,
        network_reason_code:,
        prearbitration_date:,
        primary_claim_id:,
        reason:,
        representment_date:,
        resolution_amount:,
        resolution_date:,
        resolution_note:,
        resolution_reason:,
        status:,
        transaction_token:
      )
      end

      sig do
        override
          .returns(
            {
              token: String,
              amount: Integer,
              arbitration_date: T.nilable(Time),
              created: Time,
              customer_filed_date: T.nilable(Time),
              customer_note: T.nilable(String),
              network_claim_ids: T.nilable(T::Array[String]),
              network_filed_date: T.nilable(Time),
              network_reason_code: T.nilable(String),
              prearbitration_date: T.nilable(Time),
              primary_claim_id: T.nilable(String),
              reason: Symbol,
              representment_date: T.nilable(Time),
              resolution_amount: T.nilable(Integer),
              resolution_date: T.nilable(Time),
              resolution_note: T.nilable(String),
              resolution_reason: T.nilable(Symbol),
              status: Symbol,
              transaction_token: String
            }
          )
      end
      def to_hash
      end

      # Dispute reason:
      #
      #   - `ATM_CASH_MISDISPENSE`: ATM cash misdispense.
      #   - `CANCELLED`: Transaction was cancelled by the customer.
      #   - `DUPLICATED`: The transaction was a duplicate.
      #   - `FRAUD_CARD_NOT_PRESENT`: Fraudulent transaction, card not present.
      #   - `FRAUD_CARD_PRESENT`: Fraudulent transaction, card present.
      #   - `FRAUD_OTHER`: Fraudulent transaction, other types such as questionable
      #     merchant activity.
      #   - `GOODS_SERVICES_NOT_AS_DESCRIBED`: The goods or services were not as
      #     described.
      #   - `GOODS_SERVICES_NOT_RECEIVED`: The goods or services were not received.
      #   - `INCORRECT_AMOUNT`: The transaction amount was incorrect.
      #   - `MISSING_AUTH`: The transaction was missing authorization.
      #   - `OTHER`: Other reason.
      #   - `PROCESSING_ERROR`: Processing error.
      #   - `REFUND_NOT_PROCESSED`: The refund was not processed.
      #   - `RECURRING_TRANSACTION_NOT_CANCELLED`: The recurring transaction was not
      #     cancelled.
      class Reason < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ATM_CASH_MISDISPENSE = :ATM_CASH_MISDISPENSE
        CANCELLED = :CANCELLED
        DUPLICATED = :DUPLICATED
        FRAUD_CARD_NOT_PRESENT = :FRAUD_CARD_NOT_PRESENT
        FRAUD_CARD_PRESENT = :FRAUD_CARD_PRESENT
        FRAUD_OTHER = :FRAUD_OTHER
        GOODS_SERVICES_NOT_AS_DESCRIBED = :GOODS_SERVICES_NOT_AS_DESCRIBED
        GOODS_SERVICES_NOT_RECEIVED = :GOODS_SERVICES_NOT_RECEIVED
        INCORRECT_AMOUNT = :INCORRECT_AMOUNT
        MISSING_AUTH = :MISSING_AUTH
        OTHER = :OTHER
        PROCESSING_ERROR = :PROCESSING_ERROR
        RECURRING_TRANSACTION_NOT_CANCELLED = :RECURRING_TRANSACTION_NOT_CANCELLED
        REFUND_NOT_PROCESSED = :REFUND_NOT_PROCESSED
      end

      # Reason for the dispute resolution:
      #
      #   - `CASE_LOST`: This case was lost at final arbitration.
      #   - `NETWORK_REJECTED`: Network rejected.
      #   - `NO_DISPUTE_RIGHTS_3DS`: No dispute rights, 3DS.
      #   - `NO_DISPUTE_RIGHTS_BELOW_THRESHOLD`: No dispute rights, below threshold.
      #   - `NO_DISPUTE_RIGHTS_CONTACTLESS`: No dispute rights, contactless.
      #   - `NO_DISPUTE_RIGHTS_HYBRID`: No dispute rights, hybrid.
      #   - `NO_DISPUTE_RIGHTS_MAX_CHARGEBACKS`: No dispute rights, max chargebacks.
      #   - `NO_DISPUTE_RIGHTS_OTHER`: No dispute rights, other.
      #   - `PAST_FILING_DATE`: Past filing date.
      #   - `PREARBITRATION_REJECTED`: Prearbitration rejected.
      #   - `PROCESSOR_REJECTED_OTHER`: Processor rejected, other.
      #   - `REFUNDED`: Refunded.
      #   - `REFUNDED_AFTER_CHARGEBACK`: Refunded after chargeback.
      #   - `WITHDRAWN`: Withdrawn.
      #   - `WON_ARBITRATION`: Won arbitration.
      #   - `WON_FIRST_CHARGEBACK`: Won first chargeback.
      #   - `WON_PREARBITRATION`: Won prearbitration.
      class ResolutionReason < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        CASE_LOST = :CASE_LOST
        NETWORK_REJECTED = :NETWORK_REJECTED
        NO_DISPUTE_RIGHTS_3DS = :NO_DISPUTE_RIGHTS_3DS
        NO_DISPUTE_RIGHTS_BELOW_THRESHOLD = :NO_DISPUTE_RIGHTS_BELOW_THRESHOLD
        NO_DISPUTE_RIGHTS_CONTACTLESS = :NO_DISPUTE_RIGHTS_CONTACTLESS
        NO_DISPUTE_RIGHTS_HYBRID = :NO_DISPUTE_RIGHTS_HYBRID
        NO_DISPUTE_RIGHTS_MAX_CHARGEBACKS = :NO_DISPUTE_RIGHTS_MAX_CHARGEBACKS
        NO_DISPUTE_RIGHTS_OTHER = :NO_DISPUTE_RIGHTS_OTHER
        PAST_FILING_DATE = :PAST_FILING_DATE
        PREARBITRATION_REJECTED = :PREARBITRATION_REJECTED
        PROCESSOR_REJECTED_OTHER = :PROCESSOR_REJECTED_OTHER
        REFUNDED = :REFUNDED
        REFUNDED_AFTER_CHARGEBACK = :REFUNDED_AFTER_CHARGEBACK
        WITHDRAWN = :WITHDRAWN
        WON_ARBITRATION = :WON_ARBITRATION
        WON_FIRST_CHARGEBACK = :WON_FIRST_CHARGEBACK
        WON_PREARBITRATION = :WON_PREARBITRATION
      end

      # Status types:
      #
      #   - `NEW` - New dispute case is opened.
      #   - `PENDING_CUSTOMER` - Lithic is waiting for customer to provide more
      #     information.
      #   - `SUBMITTED` - Dispute is submitted to the card network.
      #   - `REPRESENTMENT` - Case has entered second presentment.
      #   - `PREARBITRATION` - Case has entered prearbitration.
      #   - `ARBITRATION` - Case has entered arbitration.
      #   - `CASE_WON` - Case was won and credit will be issued.
      #   - `CASE_CLOSED` - Case was lost or withdrawn.
      class Status < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ARBITRATION = :ARBITRATION
        CASE_CLOSED = :CASE_CLOSED
        CASE_WON = :CASE_WON
        NEW = :NEW
        PENDING_CUSTOMER = :PENDING_CUSTOMER
        PREARBITRATION = :PREARBITRATION
        REPRESENTMENT = :REPRESENTMENT
        SUBMITTED = :SUBMITTED
      end
    end
  end
end
