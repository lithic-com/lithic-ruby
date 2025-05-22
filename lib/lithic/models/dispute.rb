# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Disputes#create
    class Dispute < Lithic::Internal::Type::BaseModel
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
      required :network_claim_ids, Lithic::Internal::Type::ArrayOf[String], nil?: true

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
      #   will be the first claim id set by the network
      #
      #   @return [String, nil]
      required :primary_claim_id, String, nil?: true

      # @!attribute reason
      #   Dispute reason:
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
      #
      #   @return [Symbol, Lithic::Models::Dispute::Reason]
      required :reason, enum: -> { Lithic::Dispute::Reason }

      # @!attribute representment_date
      #   Date the representment was received.
      #
      #   @return [Time, nil]
      required :representment_date, Time, nil?: true

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
      #
      #   @return [Symbol, Lithic::Models::Dispute::ResolutionReason, nil]
      required :resolution_reason, enum: -> { Lithic::Dispute::ResolutionReason }, nil?: true

      # @!attribute status
      #   Status types:
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
      #
      #   @return [Symbol, Lithic::Models::Dispute::Status]
      required :status, enum: -> { Lithic::Dispute::Status }

      # @!attribute transaction_token
      #   The transaction that is being disputed. A transaction can only be disputed once
      #   but may have multiple dispute cases.
      #
      #   @return [String]
      required :transaction_token, String

      # @!method initialize(token:, amount:, arbitration_date:, created:, customer_filed_date:, customer_note:, network_claim_ids:, network_filed_date:, network_reason_code:, prearbitration_date:, primary_claim_id:, reason:, representment_date:, resolution_date:, resolution_note:, resolution_reason:, status:, transaction_token:)
      #   Some parameter documentations has been truncated, see {Lithic::Models::Dispute}
      #   for more details.
      #
      #   Dispute.
      #
      #   @param token [String] Globally unique identifier.
      #
      #   @param amount [Integer] Amount under dispute. May be different from the original transaction amount.
      #
      #   @param arbitration_date [Time, nil] Date dispute entered arbitration.
      #
      #   @param created [Time] Timestamp of when first Dispute was reported.
      #
      #   @param customer_filed_date [Time, nil] Date that the dispute was filed by the customer making the dispute.
      #
      #   @param customer_note [String, nil] End customer description of the reason for the dispute.
      #
      #   @param network_claim_ids [Array<String>, nil] Unique identifiers for the dispute from the network.
      #
      #   @param network_filed_date [Time, nil] Date that the dispute was submitted to the network.
      #
      #   @param network_reason_code [String, nil] Network reason code used to file the dispute.
      #
      #   @param prearbitration_date [Time, nil] Date dispute entered pre-arbitration.
      #
      #   @param primary_claim_id [String, nil] Unique identifier for the dispute from the network. If there are multiple, this
      #
      #   @param reason [Symbol, Lithic::Models::Dispute::Reason] Dispute reason:
      #
      #   @param representment_date [Time, nil] Date the representment was received.
      #
      #   @param resolution_date [Time, nil] Date that the dispute was resolved.
      #
      #   @param resolution_note [String, nil] Note by Dispute team on the case resolution.
      #
      #   @param resolution_reason [Symbol, Lithic::Models::Dispute::ResolutionReason, nil] Reason for the dispute resolution:
      #
      #   @param status [Symbol, Lithic::Models::Dispute::Status] Status types:
      #
      #   @param transaction_token [String] The transaction that is being disputed. A transaction can only be disputed once

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
      #
      # @see Lithic::Models::Dispute#reason
      module Reason
        extend Lithic::Internal::Type::Enum

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

        # @!method self.values
        #   @return [Array<Symbol>]
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
      #
      # @see Lithic::Models::Dispute#resolution_reason
      module ResolutionReason
        extend Lithic::Internal::Type::Enum

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

        # @!method self.values
        #   @return [Array<Symbol>]
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
      #
      # @see Lithic::Models::Dispute#status
      module Status
        extend Lithic::Internal::Type::Enum

        ARBITRATION = :ARBITRATION
        CASE_CLOSED = :CASE_CLOSED
        CASE_WON = :CASE_WON
        NEW = :NEW
        PENDING_CUSTOMER = :PENDING_CUSTOMER
        PREARBITRATION = :PREARBITRATION
        REPRESENTMENT = :REPRESENTMENT
        SUBMITTED = :SUBMITTED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
