# typed: strong

module Lithic
  module Models
    class Dispute < Lithic::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

      # Globally unique identifier.
      sig { returns(String) }
      attr_accessor :token

      # Amount under dispute. May be different from the original transaction amount.
      sig { returns(Integer) }
      attr_accessor :amount

      # Date dispute entered arbitration.
      sig { returns(T.nilable(Time)) }
      attr_accessor :arbitration_date

      # Timestamp of when first Dispute was reported.
      sig { returns(Time) }
      attr_accessor :created

      # Date that the dispute was filed by the customer making the dispute.
      sig { returns(T.nilable(Time)) }
      attr_accessor :customer_filed_date

      # End customer description of the reason for the dispute.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_note

      # Unique identifiers for the dispute from the network.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :network_claim_ids

      # Date that the dispute was submitted to the network.
      sig { returns(T.nilable(Time)) }
      attr_accessor :network_filed_date

      # Network reason code used to file the dispute.
      sig { returns(T.nilable(String)) }
      attr_accessor :network_reason_code

      # Date dispute entered pre-arbitration.
      sig { returns(T.nilable(Time)) }
      attr_accessor :prearbitration_date

      # Unique identifier for the dispute from the network. If there are multiple, this
      # will be the first claim id set by the network
      sig { returns(T.nilable(String)) }
      attr_accessor :primary_claim_id

      # Dispute reason:
      #
      # - `ATM_CASH_MISDISPENSE`: ATM cash misdispense.
      # - `CANCELLED`: Transaction was cancelled by the customer.
      # - `DUPLICATED`: The transaction was a duplicate.
      # - `FRAUD_CARD_NOT_PRESENT`: Fraudulent transaction, card not present.
      # - `FRAUD_CARD_PRESENT`: Fraudulent transaction, card present.
      # - `FRAUD_OTHER`: Fraudulent transaction, other types such as questionable
      #   merchant activity.
      # - `GOODS_SERVICES_NOT_AS_DESCRIBED`: The goods or services were not as
      #   described.
      # - `GOODS_SERVICES_NOT_RECEIVED`: The goods or services were not received.
      # - `INCORRECT_AMOUNT`: The transaction amount was incorrect.
      # - `MISSING_AUTH`: The transaction was missing authorization.
      # - `OTHER`: Other reason.
      # - `PROCESSING_ERROR`: Processing error.
      # - `REFUND_NOT_PROCESSED`: The refund was not processed.
      # - `RECURRING_TRANSACTION_NOT_CANCELLED`: The recurring transaction was not
      #   cancelled.
      sig { returns(Lithic::Dispute::Reason::TaggedSymbol) }
      attr_accessor :reason

      # Date the representment was received.
      sig { returns(T.nilable(Time)) }
      attr_accessor :representment_date

      # Date that the dispute was resolved.
      sig { returns(T.nilable(Time)) }
      attr_accessor :resolution_date

      # Note by Dispute team on the case resolution.
      sig { returns(T.nilable(String)) }
      attr_accessor :resolution_note

      # Reason for the dispute resolution:
      #
      # - `CASE_LOST`: This case was lost at final arbitration.
      # - `NETWORK_REJECTED`: Network rejected.
      # - `NO_DISPUTE_RIGHTS_3DS`: No dispute rights, 3DS.
      # - `NO_DISPUTE_RIGHTS_BELOW_THRESHOLD`: No dispute rights, below threshold.
      # - `NO_DISPUTE_RIGHTS_CONTACTLESS`: No dispute rights, contactless.
      # - `NO_DISPUTE_RIGHTS_HYBRID`: No dispute rights, hybrid.
      # - `NO_DISPUTE_RIGHTS_MAX_CHARGEBACKS`: No dispute rights, max chargebacks.
      # - `NO_DISPUTE_RIGHTS_OTHER`: No dispute rights, other.
      # - `PAST_FILING_DATE`: Past filing date.
      # - `PREARBITRATION_REJECTED`: Prearbitration rejected.
      # - `PROCESSOR_REJECTED_OTHER`: Processor rejected, other.
      # - `REFUNDED`: Refunded.
      # - `REFUNDED_AFTER_CHARGEBACK`: Refunded after chargeback.
      # - `WITHDRAWN`: Withdrawn.
      # - `WON_ARBITRATION`: Won arbitration.
      # - `WON_FIRST_CHARGEBACK`: Won first chargeback.
      # - `WON_PREARBITRATION`: Won prearbitration.
      sig do
        returns(T.nilable(Lithic::Dispute::ResolutionReason::TaggedSymbol))
      end
      attr_accessor :resolution_reason

      # Status types:
      #
      # - `NEW` - New dispute case is opened.
      # - `PENDING_CUSTOMER` - Lithic is waiting for customer to provide more
      #   information.
      # - `SUBMITTED` - Dispute is submitted to the card network.
      # - `REPRESENTMENT` - Case has entered second presentment.
      # - `PREARBITRATION` - Case has entered prearbitration.
      # - `ARBITRATION` - Case has entered arbitration.
      # - `CASE_WON` - Case was won and credit will be issued.
      # - `CASE_CLOSED` - Case was lost or withdrawn.
      sig { returns(Lithic::Dispute::Status::TaggedSymbol) }
      attr_accessor :status

      # The transaction that is being disputed. A transaction can only be disputed once
      # but may have multiple dispute cases.
      sig { returns(String) }
      attr_accessor :transaction_token

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
          reason: Lithic::Dispute::Reason::OrSymbol,
          representment_date: T.nilable(Time),
          resolution_date: T.nilable(Time),
          resolution_note: T.nilable(String),
          resolution_reason:
            T.nilable(Lithic::Dispute::ResolutionReason::OrSymbol),
          status: Lithic::Dispute::Status::OrSymbol,
          transaction_token: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Globally unique identifier.
        token:,
        # Amount under dispute. May be different from the original transaction amount.
        amount:,
        # Date dispute entered arbitration.
        arbitration_date:,
        # Timestamp of when first Dispute was reported.
        created:,
        # Date that the dispute was filed by the customer making the dispute.
        customer_filed_date:,
        # End customer description of the reason for the dispute.
        customer_note:,
        # Unique identifiers for the dispute from the network.
        network_claim_ids:,
        # Date that the dispute was submitted to the network.
        network_filed_date:,
        # Network reason code used to file the dispute.
        network_reason_code:,
        # Date dispute entered pre-arbitration.
        prearbitration_date:,
        # Unique identifier for the dispute from the network. If there are multiple, this
        # will be the first claim id set by the network
        primary_claim_id:,
        # Dispute reason:
        #
        # - `ATM_CASH_MISDISPENSE`: ATM cash misdispense.
        # - `CANCELLED`: Transaction was cancelled by the customer.
        # - `DUPLICATED`: The transaction was a duplicate.
        # - `FRAUD_CARD_NOT_PRESENT`: Fraudulent transaction, card not present.
        # - `FRAUD_CARD_PRESENT`: Fraudulent transaction, card present.
        # - `FRAUD_OTHER`: Fraudulent transaction, other types such as questionable
        #   merchant activity.
        # - `GOODS_SERVICES_NOT_AS_DESCRIBED`: The goods or services were not as
        #   described.
        # - `GOODS_SERVICES_NOT_RECEIVED`: The goods or services were not received.
        # - `INCORRECT_AMOUNT`: The transaction amount was incorrect.
        # - `MISSING_AUTH`: The transaction was missing authorization.
        # - `OTHER`: Other reason.
        # - `PROCESSING_ERROR`: Processing error.
        # - `REFUND_NOT_PROCESSED`: The refund was not processed.
        # - `RECURRING_TRANSACTION_NOT_CANCELLED`: The recurring transaction was not
        #   cancelled.
        reason:,
        # Date the representment was received.
        representment_date:,
        # Date that the dispute was resolved.
        resolution_date:,
        # Note by Dispute team on the case resolution.
        resolution_note:,
        # Reason for the dispute resolution:
        #
        # - `CASE_LOST`: This case was lost at final arbitration.
        # - `NETWORK_REJECTED`: Network rejected.
        # - `NO_DISPUTE_RIGHTS_3DS`: No dispute rights, 3DS.
        # - `NO_DISPUTE_RIGHTS_BELOW_THRESHOLD`: No dispute rights, below threshold.
        # - `NO_DISPUTE_RIGHTS_CONTACTLESS`: No dispute rights, contactless.
        # - `NO_DISPUTE_RIGHTS_HYBRID`: No dispute rights, hybrid.
        # - `NO_DISPUTE_RIGHTS_MAX_CHARGEBACKS`: No dispute rights, max chargebacks.
        # - `NO_DISPUTE_RIGHTS_OTHER`: No dispute rights, other.
        # - `PAST_FILING_DATE`: Past filing date.
        # - `PREARBITRATION_REJECTED`: Prearbitration rejected.
        # - `PROCESSOR_REJECTED_OTHER`: Processor rejected, other.
        # - `REFUNDED`: Refunded.
        # - `REFUNDED_AFTER_CHARGEBACK`: Refunded after chargeback.
        # - `WITHDRAWN`: Withdrawn.
        # - `WON_ARBITRATION`: Won arbitration.
        # - `WON_FIRST_CHARGEBACK`: Won first chargeback.
        # - `WON_PREARBITRATION`: Won prearbitration.
        resolution_reason:,
        # Status types:
        #
        # - `NEW` - New dispute case is opened.
        # - `PENDING_CUSTOMER` - Lithic is waiting for customer to provide more
        #   information.
        # - `SUBMITTED` - Dispute is submitted to the card network.
        # - `REPRESENTMENT` - Case has entered second presentment.
        # - `PREARBITRATION` - Case has entered prearbitration.
        # - `ARBITRATION` - Case has entered arbitration.
        # - `CASE_WON` - Case was won and credit will be issued.
        # - `CASE_CLOSED` - Case was lost or withdrawn.
        status:,
        # The transaction that is being disputed. A transaction can only be disputed once
        # but may have multiple dispute cases.
        transaction_token:
      )
      end

      sig do
        override.returns(
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
            reason: Lithic::Dispute::Reason::TaggedSymbol,
            representment_date: T.nilable(Time),
            resolution_date: T.nilable(Time),
            resolution_note: T.nilable(String),
            resolution_reason:
              T.nilable(Lithic::Dispute::ResolutionReason::TaggedSymbol),
            status: Lithic::Dispute::Status::TaggedSymbol,
            transaction_token: String
          }
        )
      end
      def to_hash
      end

      # Dispute reason:
      #
      # - `ATM_CASH_MISDISPENSE`: ATM cash misdispense.
      # - `CANCELLED`: Transaction was cancelled by the customer.
      # - `DUPLICATED`: The transaction was a duplicate.
      # - `FRAUD_CARD_NOT_PRESENT`: Fraudulent transaction, card not present.
      # - `FRAUD_CARD_PRESENT`: Fraudulent transaction, card present.
      # - `FRAUD_OTHER`: Fraudulent transaction, other types such as questionable
      #   merchant activity.
      # - `GOODS_SERVICES_NOT_AS_DESCRIBED`: The goods or services were not as
      #   described.
      # - `GOODS_SERVICES_NOT_RECEIVED`: The goods or services were not received.
      # - `INCORRECT_AMOUNT`: The transaction amount was incorrect.
      # - `MISSING_AUTH`: The transaction was missing authorization.
      # - `OTHER`: Other reason.
      # - `PROCESSING_ERROR`: Processing error.
      # - `REFUND_NOT_PROCESSED`: The refund was not processed.
      # - `RECURRING_TRANSACTION_NOT_CANCELLED`: The recurring transaction was not
      #   cancelled.
      module Reason
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Dispute::Reason) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ATM_CASH_MISDISPENSE =
          T.let(:ATM_CASH_MISDISPENSE, Lithic::Dispute::Reason::TaggedSymbol)
        CANCELLED = T.let(:CANCELLED, Lithic::Dispute::Reason::TaggedSymbol)
        DUPLICATED = T.let(:DUPLICATED, Lithic::Dispute::Reason::TaggedSymbol)
        FRAUD_CARD_NOT_PRESENT =
          T.let(:FRAUD_CARD_NOT_PRESENT, Lithic::Dispute::Reason::TaggedSymbol)
        FRAUD_CARD_PRESENT =
          T.let(:FRAUD_CARD_PRESENT, Lithic::Dispute::Reason::TaggedSymbol)
        FRAUD_OTHER = T.let(:FRAUD_OTHER, Lithic::Dispute::Reason::TaggedSymbol)
        GOODS_SERVICES_NOT_AS_DESCRIBED =
          T.let(
            :GOODS_SERVICES_NOT_AS_DESCRIBED,
            Lithic::Dispute::Reason::TaggedSymbol
          )
        GOODS_SERVICES_NOT_RECEIVED =
          T.let(
            :GOODS_SERVICES_NOT_RECEIVED,
            Lithic::Dispute::Reason::TaggedSymbol
          )
        INCORRECT_AMOUNT =
          T.let(:INCORRECT_AMOUNT, Lithic::Dispute::Reason::TaggedSymbol)
        MISSING_AUTH =
          T.let(:MISSING_AUTH, Lithic::Dispute::Reason::TaggedSymbol)
        OTHER = T.let(:OTHER, Lithic::Dispute::Reason::TaggedSymbol)
        PROCESSING_ERROR =
          T.let(:PROCESSING_ERROR, Lithic::Dispute::Reason::TaggedSymbol)
        RECURRING_TRANSACTION_NOT_CANCELLED =
          T.let(
            :RECURRING_TRANSACTION_NOT_CANCELLED,
            Lithic::Dispute::Reason::TaggedSymbol
          )
        REFUND_NOT_PROCESSED =
          T.let(:REFUND_NOT_PROCESSED, Lithic::Dispute::Reason::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Dispute::Reason::TaggedSymbol])
        end
        def self.values
        end
      end

      # Reason for the dispute resolution:
      #
      # - `CASE_LOST`: This case was lost at final arbitration.
      # - `NETWORK_REJECTED`: Network rejected.
      # - `NO_DISPUTE_RIGHTS_3DS`: No dispute rights, 3DS.
      # - `NO_DISPUTE_RIGHTS_BELOW_THRESHOLD`: No dispute rights, below threshold.
      # - `NO_DISPUTE_RIGHTS_CONTACTLESS`: No dispute rights, contactless.
      # - `NO_DISPUTE_RIGHTS_HYBRID`: No dispute rights, hybrid.
      # - `NO_DISPUTE_RIGHTS_MAX_CHARGEBACKS`: No dispute rights, max chargebacks.
      # - `NO_DISPUTE_RIGHTS_OTHER`: No dispute rights, other.
      # - `PAST_FILING_DATE`: Past filing date.
      # - `PREARBITRATION_REJECTED`: Prearbitration rejected.
      # - `PROCESSOR_REJECTED_OTHER`: Processor rejected, other.
      # - `REFUNDED`: Refunded.
      # - `REFUNDED_AFTER_CHARGEBACK`: Refunded after chargeback.
      # - `WITHDRAWN`: Withdrawn.
      # - `WON_ARBITRATION`: Won arbitration.
      # - `WON_FIRST_CHARGEBACK`: Won first chargeback.
      # - `WON_PREARBITRATION`: Won prearbitration.
      module ResolutionReason
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Dispute::ResolutionReason) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CASE_LOST =
          T.let(:CASE_LOST, Lithic::Dispute::ResolutionReason::TaggedSymbol)
        NETWORK_REJECTED =
          T.let(
            :NETWORK_REJECTED,
            Lithic::Dispute::ResolutionReason::TaggedSymbol
          )
        NO_DISPUTE_RIGHTS_3DS =
          T.let(
            :NO_DISPUTE_RIGHTS_3DS,
            Lithic::Dispute::ResolutionReason::TaggedSymbol
          )
        NO_DISPUTE_RIGHTS_BELOW_THRESHOLD =
          T.let(
            :NO_DISPUTE_RIGHTS_BELOW_THRESHOLD,
            Lithic::Dispute::ResolutionReason::TaggedSymbol
          )
        NO_DISPUTE_RIGHTS_CONTACTLESS =
          T.let(
            :NO_DISPUTE_RIGHTS_CONTACTLESS,
            Lithic::Dispute::ResolutionReason::TaggedSymbol
          )
        NO_DISPUTE_RIGHTS_HYBRID =
          T.let(
            :NO_DISPUTE_RIGHTS_HYBRID,
            Lithic::Dispute::ResolutionReason::TaggedSymbol
          )
        NO_DISPUTE_RIGHTS_MAX_CHARGEBACKS =
          T.let(
            :NO_DISPUTE_RIGHTS_MAX_CHARGEBACKS,
            Lithic::Dispute::ResolutionReason::TaggedSymbol
          )
        NO_DISPUTE_RIGHTS_OTHER =
          T.let(
            :NO_DISPUTE_RIGHTS_OTHER,
            Lithic::Dispute::ResolutionReason::TaggedSymbol
          )
        PAST_FILING_DATE =
          T.let(
            :PAST_FILING_DATE,
            Lithic::Dispute::ResolutionReason::TaggedSymbol
          )
        PREARBITRATION_REJECTED =
          T.let(
            :PREARBITRATION_REJECTED,
            Lithic::Dispute::ResolutionReason::TaggedSymbol
          )
        PROCESSOR_REJECTED_OTHER =
          T.let(
            :PROCESSOR_REJECTED_OTHER,
            Lithic::Dispute::ResolutionReason::TaggedSymbol
          )
        REFUNDED =
          T.let(:REFUNDED, Lithic::Dispute::ResolutionReason::TaggedSymbol)
        REFUNDED_AFTER_CHARGEBACK =
          T.let(
            :REFUNDED_AFTER_CHARGEBACK,
            Lithic::Dispute::ResolutionReason::TaggedSymbol
          )
        WITHDRAWN =
          T.let(:WITHDRAWN, Lithic::Dispute::ResolutionReason::TaggedSymbol)
        WON_ARBITRATION =
          T.let(
            :WON_ARBITRATION,
            Lithic::Dispute::ResolutionReason::TaggedSymbol
          )
        WON_FIRST_CHARGEBACK =
          T.let(
            :WON_FIRST_CHARGEBACK,
            Lithic::Dispute::ResolutionReason::TaggedSymbol
          )
        WON_PREARBITRATION =
          T.let(
            :WON_PREARBITRATION,
            Lithic::Dispute::ResolutionReason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::Dispute::ResolutionReason::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Status types:
      #
      # - `NEW` - New dispute case is opened.
      # - `PENDING_CUSTOMER` - Lithic is waiting for customer to provide more
      #   information.
      # - `SUBMITTED` - Dispute is submitted to the card network.
      # - `REPRESENTMENT` - Case has entered second presentment.
      # - `PREARBITRATION` - Case has entered prearbitration.
      # - `ARBITRATION` - Case has entered arbitration.
      # - `CASE_WON` - Case was won and credit will be issued.
      # - `CASE_CLOSED` - Case was lost or withdrawn.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Dispute::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ARBITRATION = T.let(:ARBITRATION, Lithic::Dispute::Status::TaggedSymbol)
        CASE_CLOSED = T.let(:CASE_CLOSED, Lithic::Dispute::Status::TaggedSymbol)
        CASE_WON = T.let(:CASE_WON, Lithic::Dispute::Status::TaggedSymbol)
        NEW = T.let(:NEW, Lithic::Dispute::Status::TaggedSymbol)
        PENDING_CUSTOMER =
          T.let(:PENDING_CUSTOMER, Lithic::Dispute::Status::TaggedSymbol)
        PREARBITRATION =
          T.let(:PREARBITRATION, Lithic::Dispute::Status::TaggedSymbol)
        REPRESENTMENT =
          T.let(:REPRESENTMENT, Lithic::Dispute::Status::TaggedSymbol)
        SUBMITTED = T.let(:SUBMITTED, Lithic::Dispute::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Dispute::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
