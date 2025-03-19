# frozen_string_literal: true

module Lithic
  module Models
    class Dispute < Lithic::BaseModel
      # @!attribute token
      #   Globally unique identifier.
      #
      #   @return [String]
      required :token, String

      # @!attribute amount
      #   Amount under dispute. May be different from the original transaction amount.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute arbitration_date
      #   Date dispute entered arbitration.
      #
      #   @return [Time, nil]
      required :arbitration_date, Time, nil?: true

      # @!attribute created
      #   Timestamp of when first Dispute was reported.
      #
      #   @return [Time]
      required :created, Time

      # @!attribute customer_filed_date
      #   Date that the dispute was filed by the customer making the dispute.
      #
      #   @return [Time, nil]
      required :customer_filed_date, Time, nil?: true

      # @!attribute customer_note
      #   End customer description of the reason for the dispute.
      #
      #   @return [String, nil]
      required :customer_note, String, nil?: true

      # @!attribute network_claim_ids
      #   Unique identifiers for the dispute from the network.
      #
      #   @return [Array<String>, nil]
      required :network_claim_ids, Lithic::ArrayOf[String], nil?: true

      # @!attribute network_filed_date
      #   Date that the dispute was submitted to the network.
      #
      #   @return [Time, nil]
      required :network_filed_date, Time, nil?: true

      # @!attribute network_reason_code
      #   Network reason code used to file the dispute.
      #
      #   @return [String, nil]
      required :network_reason_code, String, nil?: true

      # @!attribute prearbitration_date
      #   Date dispute entered pre-arbitration.
      #
      #   @return [Time, nil]
      required :prearbitration_date, Time, nil?: true

      # @!attribute primary_claim_id
      #   Unique identifier for the dispute from the network. If there are multiple, this
      #     will be the first claim id set by the network
      #
      #   @return [String, nil]
      required :primary_claim_id, String, nil?: true

      # @!attribute reason
      #   Dispute reason:
      #
      #     - `ATM_CASH_MISDISPENSE`: ATM cash misdispense.
      #     - `CANCELLED`: Transaction was cancelled by the customer.
      #     - `DUPLICATED`: The transaction was a duplicate.
      #     - `FRAUD_CARD_NOT_PRESENT`: Fraudulent transaction, card not present.
      #     - `FRAUD_CARD_PRESENT`: Fraudulent transaction, card present.
      #     - `FRAUD_OTHER`: Fraudulent transaction, other types such as questionable
      #       merchant activity.
      #     - `GOODS_SERVICES_NOT_AS_DESCRIBED`: The goods or services were not as
      #       described.
      #     - `GOODS_SERVICES_NOT_RECEIVED`: The goods or services were not received.
      #     - `INCORRECT_AMOUNT`: The transaction amount was incorrect.
      #     - `MISSING_AUTH`: The transaction was missing authorization.
      #     - `OTHER`: Other reason.
      #     - `PROCESSING_ERROR`: Processing error.
      #     - `REFUND_NOT_PROCESSED`: The refund was not processed.
      #     - `RECURRING_TRANSACTION_NOT_CANCELLED`: The recurring transaction was not
      #       cancelled.
      #
      #   @return [Symbol, Lithic::Models::Dispute::Reason]
      required :reason, enum: -> { Lithic::Models::Dispute::Reason }

      # @!attribute representment_date
      #   Date the representment was received.
      #
      #   @return [Time, nil]
      required :representment_date, Time, nil?: true

      # @!attribute resolution_amount
      #   Resolution amount net of network fees.
      #
      #   @return [Integer, nil]
      required :resolution_amount, Integer, nil?: true

      # @!attribute resolution_date
      #   Date that the dispute was resolved.
      #
      #   @return [Time, nil]
      required :resolution_date, Time, nil?: true

      # @!attribute resolution_note
      #   Note by Dispute team on the case resolution.
      #
      #   @return [String, nil]
      required :resolution_note, String, nil?: true

      # @!attribute resolution_reason
      #   Reason for the dispute resolution:
      #
      #     - `CASE_LOST`: This case was lost at final arbitration.
      #     - `NETWORK_REJECTED`: Network rejected.
      #     - `NO_DISPUTE_RIGHTS_3DS`: No dispute rights, 3DS.
      #     - `NO_DISPUTE_RIGHTS_BELOW_THRESHOLD`: No dispute rights, below threshold.
      #     - `NO_DISPUTE_RIGHTS_CONTACTLESS`: No dispute rights, contactless.
      #     - `NO_DISPUTE_RIGHTS_HYBRID`: No dispute rights, hybrid.
      #     - `NO_DISPUTE_RIGHTS_MAX_CHARGEBACKS`: No dispute rights, max chargebacks.
      #     - `NO_DISPUTE_RIGHTS_OTHER`: No dispute rights, other.
      #     - `PAST_FILING_DATE`: Past filing date.
      #     - `PREARBITRATION_REJECTED`: Prearbitration rejected.
      #     - `PROCESSOR_REJECTED_OTHER`: Processor rejected, other.
      #     - `REFUNDED`: Refunded.
      #     - `REFUNDED_AFTER_CHARGEBACK`: Refunded after chargeback.
      #     - `WITHDRAWN`: Withdrawn.
      #     - `WON_ARBITRATION`: Won arbitration.
      #     - `WON_FIRST_CHARGEBACK`: Won first chargeback.
      #     - `WON_PREARBITRATION`: Won prearbitration.
      #
      #   @return [Symbol, Lithic::Models::Dispute::ResolutionReason, nil]
      required :resolution_reason, enum: -> { Lithic::Models::Dispute::ResolutionReason }, nil?: true

      # @!attribute status
      #   Status types:
      #
      #     - `NEW` - New dispute case is opened.
      #     - `PENDING_CUSTOMER` - Lithic is waiting for customer to provide more
      #       information.
      #     - `SUBMITTED` - Dispute is submitted to the card network.
      #     - `REPRESENTMENT` - Case has entered second presentment.
      #     - `PREARBITRATION` - Case has entered prearbitration.
      #     - `ARBITRATION` - Case has entered arbitration.
      #     - `CASE_WON` - Case was won and credit will be issued.
      #     - `CASE_CLOSED` - Case was lost or withdrawn.
      #
      #   @return [Symbol, Lithic::Models::Dispute::Status]
      required :status, enum: -> { Lithic::Models::Dispute::Status }

      # @!attribute transaction_token
      #   The transaction that is being disputed. A transaction can only be disputed once
      #     but may have multiple dispute cases.
      #
      #   @return [String]
      required :transaction_token, String

      # @!parse
      #   # Dispute.
      #   #
      #   # @param token [String]
      #   # @param amount [Integer]
      #   # @param arbitration_date [Time, nil]
      #   # @param created [Time]
      #   # @param customer_filed_date [Time, nil]
      #   # @param customer_note [String, nil]
      #   # @param network_claim_ids [Array<String>, nil]
      #   # @param network_filed_date [Time, nil]
      #   # @param network_reason_code [String, nil]
      #   # @param prearbitration_date [Time, nil]
      #   # @param primary_claim_id [String, nil]
      #   # @param reason [Symbol, Lithic::Models::Dispute::Reason]
      #   # @param representment_date [Time, nil]
      #   # @param resolution_amount [Integer, nil]
      #   # @param resolution_date [Time, nil]
      #   # @param resolution_note [String, nil]
      #   # @param resolution_reason [Symbol, Lithic::Models::Dispute::ResolutionReason, nil]
      #   # @param status [Symbol, Lithic::Models::Dispute::Status]
      #   # @param transaction_token [String]
      #   #
      #   def initialize(
      #     token:,
      #     amount:,
      #     arbitration_date:,
      #     created:,
      #     customer_filed_date:,
      #     customer_note:,
      #     network_claim_ids:,
      #     network_filed_date:,
      #     network_reason_code:,
      #     prearbitration_date:,
      #     primary_claim_id:,
      #     reason:,
      #     representment_date:,
      #     resolution_amount:,
      #     resolution_date:,
      #     resolution_note:,
      #     resolution_reason:,
      #     status:,
      #     transaction_token:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # @abstract
      #
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

        finalize!
      end

      # @abstract
      #
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

        finalize!
      end

      # @abstract
      #
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
        ARBITRATION = :ARBITRATION
        CASE_CLOSED = :CASE_CLOSED
        CASE_WON = :CASE_WON
        NEW = :NEW
        PENDING_CUSTOMER = :PENDING_CUSTOMER
        PREARBITRATION = :PREARBITRATION
        REPRESENTMENT = :REPRESENTMENT
        SUBMITTED = :SUBMITTED

        finalize!
      end
    end
  end
end
