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
      sig { returns(Lithic::Models::Dispute::Reason::TaggedSymbol) }
      def reason
      end

      sig do
        params(_: Lithic::Models::Dispute::Reason::TaggedSymbol)
          .returns(Lithic::Models::Dispute::Reason::TaggedSymbol)
      end
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
      sig { returns(T.nilable(Lithic::Models::Dispute::ResolutionReason::TaggedSymbol)) }
      def resolution_reason
      end

      sig do
        params(_: T.nilable(Lithic::Models::Dispute::ResolutionReason::TaggedSymbol))
          .returns(T.nilable(Lithic::Models::Dispute::ResolutionReason::TaggedSymbol))
      end
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
      sig { returns(Lithic::Models::Dispute::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Lithic::Models::Dispute::Status::TaggedSymbol)
          .returns(Lithic::Models::Dispute::Status::TaggedSymbol)
      end
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
          reason: Lithic::Models::Dispute::Reason::TaggedSymbol,
          representment_date: T.nilable(Time),
          resolution_amount: T.nilable(Integer),
          resolution_date: T.nilable(Time),
          resolution_note: T.nilable(String),
          resolution_reason: T.nilable(Lithic::Models::Dispute::ResolutionReason::TaggedSymbol),
          status: Lithic::Models::Dispute::Status::TaggedSymbol,
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
              reason: Lithic::Models::Dispute::Reason::TaggedSymbol,
              representment_date: T.nilable(Time),
              resolution_amount: T.nilable(Integer),
              resolution_date: T.nilable(Time),
              resolution_note: T.nilable(String),
              resolution_reason: T.nilable(Lithic::Models::Dispute::ResolutionReason::TaggedSymbol),
              status: Lithic::Models::Dispute::Status::TaggedSymbol,
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
      module Reason
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Dispute::Reason) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Dispute::Reason::TaggedSymbol) }

        ATM_CASH_MISDISPENSE = T.let(:ATM_CASH_MISDISPENSE, Lithic::Models::Dispute::Reason::TaggedSymbol)
        CANCELLED = T.let(:CANCELLED, Lithic::Models::Dispute::Reason::TaggedSymbol)
        DUPLICATED = T.let(:DUPLICATED, Lithic::Models::Dispute::Reason::TaggedSymbol)
        FRAUD_CARD_NOT_PRESENT = T.let(:FRAUD_CARD_NOT_PRESENT, Lithic::Models::Dispute::Reason::TaggedSymbol)
        FRAUD_CARD_PRESENT = T.let(:FRAUD_CARD_PRESENT, Lithic::Models::Dispute::Reason::TaggedSymbol)
        FRAUD_OTHER = T.let(:FRAUD_OTHER, Lithic::Models::Dispute::Reason::TaggedSymbol)
        GOODS_SERVICES_NOT_AS_DESCRIBED =
          T.let(:GOODS_SERVICES_NOT_AS_DESCRIBED, Lithic::Models::Dispute::Reason::TaggedSymbol)
        GOODS_SERVICES_NOT_RECEIVED =
          T.let(:GOODS_SERVICES_NOT_RECEIVED, Lithic::Models::Dispute::Reason::TaggedSymbol)
        INCORRECT_AMOUNT = T.let(:INCORRECT_AMOUNT, Lithic::Models::Dispute::Reason::TaggedSymbol)
        MISSING_AUTH = T.let(:MISSING_AUTH, Lithic::Models::Dispute::Reason::TaggedSymbol)
        OTHER = T.let(:OTHER, Lithic::Models::Dispute::Reason::TaggedSymbol)
        PROCESSING_ERROR = T.let(:PROCESSING_ERROR, Lithic::Models::Dispute::Reason::TaggedSymbol)
        RECURRING_TRANSACTION_NOT_CANCELLED =
          T.let(:RECURRING_TRANSACTION_NOT_CANCELLED, Lithic::Models::Dispute::Reason::TaggedSymbol)
        REFUND_NOT_PROCESSED = T.let(:REFUND_NOT_PROCESSED, Lithic::Models::Dispute::Reason::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::Dispute::Reason::TaggedSymbol]) }
          def values
          end
        end
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
      module ResolutionReason
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Dispute::ResolutionReason) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Dispute::ResolutionReason::TaggedSymbol) }

        CASE_LOST = T.let(:CASE_LOST, Lithic::Models::Dispute::ResolutionReason::TaggedSymbol)
        NETWORK_REJECTED = T.let(:NETWORK_REJECTED, Lithic::Models::Dispute::ResolutionReason::TaggedSymbol)
        NO_DISPUTE_RIGHTS_3DS =
          T.let(:NO_DISPUTE_RIGHTS_3DS, Lithic::Models::Dispute::ResolutionReason::TaggedSymbol)
        NO_DISPUTE_RIGHTS_BELOW_THRESHOLD =
          T.let(:NO_DISPUTE_RIGHTS_BELOW_THRESHOLD, Lithic::Models::Dispute::ResolutionReason::TaggedSymbol)
        NO_DISPUTE_RIGHTS_CONTACTLESS =
          T.let(:NO_DISPUTE_RIGHTS_CONTACTLESS, Lithic::Models::Dispute::ResolutionReason::TaggedSymbol)
        NO_DISPUTE_RIGHTS_HYBRID =
          T.let(:NO_DISPUTE_RIGHTS_HYBRID, Lithic::Models::Dispute::ResolutionReason::TaggedSymbol)
        NO_DISPUTE_RIGHTS_MAX_CHARGEBACKS =
          T.let(:NO_DISPUTE_RIGHTS_MAX_CHARGEBACKS, Lithic::Models::Dispute::ResolutionReason::TaggedSymbol)
        NO_DISPUTE_RIGHTS_OTHER =
          T.let(:NO_DISPUTE_RIGHTS_OTHER, Lithic::Models::Dispute::ResolutionReason::TaggedSymbol)
        PAST_FILING_DATE = T.let(:PAST_FILING_DATE, Lithic::Models::Dispute::ResolutionReason::TaggedSymbol)
        PREARBITRATION_REJECTED =
          T.let(:PREARBITRATION_REJECTED, Lithic::Models::Dispute::ResolutionReason::TaggedSymbol)
        PROCESSOR_REJECTED_OTHER =
          T.let(:PROCESSOR_REJECTED_OTHER, Lithic::Models::Dispute::ResolutionReason::TaggedSymbol)
        REFUNDED = T.let(:REFUNDED, Lithic::Models::Dispute::ResolutionReason::TaggedSymbol)
        REFUNDED_AFTER_CHARGEBACK =
          T.let(:REFUNDED_AFTER_CHARGEBACK, Lithic::Models::Dispute::ResolutionReason::TaggedSymbol)
        WITHDRAWN = T.let(:WITHDRAWN, Lithic::Models::Dispute::ResolutionReason::TaggedSymbol)
        WON_ARBITRATION = T.let(:WON_ARBITRATION, Lithic::Models::Dispute::ResolutionReason::TaggedSymbol)
        WON_FIRST_CHARGEBACK =
          T.let(:WON_FIRST_CHARGEBACK, Lithic::Models::Dispute::ResolutionReason::TaggedSymbol)
        WON_PREARBITRATION = T.let(:WON_PREARBITRATION, Lithic::Models::Dispute::ResolutionReason::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::Dispute::ResolutionReason::TaggedSymbol]) }
          def values
          end
        end
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
      module Status
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::Dispute::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::Dispute::Status::TaggedSymbol) }

        ARBITRATION = T.let(:ARBITRATION, Lithic::Models::Dispute::Status::TaggedSymbol)
        CASE_CLOSED = T.let(:CASE_CLOSED, Lithic::Models::Dispute::Status::TaggedSymbol)
        CASE_WON = T.let(:CASE_WON, Lithic::Models::Dispute::Status::TaggedSymbol)
        NEW = T.let(:NEW, Lithic::Models::Dispute::Status::TaggedSymbol)
        PENDING_CUSTOMER = T.let(:PENDING_CUSTOMER, Lithic::Models::Dispute::Status::TaggedSymbol)
        PREARBITRATION = T.let(:PREARBITRATION, Lithic::Models::Dispute::Status::TaggedSymbol)
        REPRESENTMENT = T.let(:REPRESENTMENT, Lithic::Models::Dispute::Status::TaggedSymbol)
        SUBMITTED = T.let(:SUBMITTED, Lithic::Models::Dispute::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::Dispute::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
