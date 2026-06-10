# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      # @see Lithic::Resources::TransactionMonitoring::Cases#retrieve
      class MonitoringCase < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Globally unique identifier for the case
        #
        #   @return [String]
        required :token, String

        # @!attribute assignee
        #   Identifier of the user the case is currently assigned to
        #
        #   @return [String, nil]
        required :assignee, String, nil?: true

        # @!attribute collection_stopped
        #   Date and time at which transaction collection stopped for the case
        #
        #   @return [Time, nil]
        required :collection_stopped, Time, nil?: true

        # @!attribute created
        #   Date and time at which the case was created
        #
        #   @return [Time]
        required :created, Time

        # @!attribute entity
        #   The entity a case is associated with
        #
        #   @return [Lithic::Models::TransactionMonitoring::CaseEntity, nil]
        required :entity, -> { Lithic::TransactionMonitoring::CaseEntity }, nil?: true

        # @!attribute pending_transactions
        #   Whether the case still has transaction scopes pending resolution
        #
        #   @return [Boolean]
        required :pending_transactions, Lithic::Internal::Type::Boolean

        # @!attribute priority
        #   Priority level of a case, controlling queue ordering and SLA urgency
        #
        #   @return [Symbol, Lithic::Models::TransactionMonitoring::CasePriority]
        required :priority, enum: -> { Lithic::TransactionMonitoring::CasePriority }

        # @!attribute queue_token
        #   Token of the queue the case belongs to
        #
        #   @return [String]
        required :queue_token, String

        # @!attribute resolution
        #   Outcome recorded when a case is resolved:
        #
        #   - `CONFIRMED_FRAUD` - The reviewed activity was confirmed to be fraudulent
        #   - `SUSPICIOUS_ACTIVITY` - The activity is suspicious but not confirmed fraud
        #   - `FALSE_POSITIVE` - The activity was legitimate and the alert was a false
        #     positive
        #   - `NO_ACTION_REQUIRED` - No further action is required
        #   - `ESCALATED_EXTERNAL` - The case was escalated to an external party
        #
        #   @return [Symbol, Lithic::Models::TransactionMonitoring::ResolutionOutcome, nil]
        required :resolution, enum: -> { Lithic::TransactionMonitoring::ResolutionOutcome }, nil?: true

        # @!attribute resolution_notes
        #   Free-form notes describing the resolution
        #
        #   @return [String, nil]
        required :resolution_notes, String, nil?: true

        # @!attribute resolved
        #   Date and time at which the case was resolved
        #
        #   @return [Time, nil]
        required :resolved, Time, nil?: true

        # @!attribute rule_token
        #   Token of the transaction monitoring rule that triggered the case
        #
        #   @return [String, nil]
        required :rule_token, String, nil?: true

        # @!attribute sla_deadline
        #   Deadline by which the case is expected to be resolved
        #
        #   @return [Time, nil]
        required :sla_deadline, Time, nil?: true

        # @!attribute status
        #   Status of a case as it progresses through the review workflow:
        #
        #   - `OPEN` - The case has been created and is still collecting matching
        #     transactions
        #   - `ASSIGNED` - An analyst has been assigned and transaction collection has
        #     stopped
        #   - `IN_REVIEW` - The case is actively being investigated
        #   - `ESCALATED` - The case has been reviewed and requires additional oversight
        #   - `RESOLVED` - A determination has been made and a resolution recorded
        #   - `CLOSED` - The case is finalized
        #
        #   @return [Symbol, Lithic::Models::TransactionMonitoring::CaseStatus]
        required :status, enum: -> { Lithic::TransactionMonitoring::CaseStatus }

        # @!attribute tags
        #   Arbitrary key-value metadata associated with the case
        #
        #   @return [Hash{Symbol=>String}]
        required :tags, Lithic::Internal::Type::HashOf[String]

        # @!attribute title
        #   Short, human-readable summary of the case
        #
        #   @return [String, nil]
        required :title, String, nil?: true

        # @!attribute updated
        #   Date and time at which the case was last updated
        #
        #   @return [Time]
        required :updated, Time

        # @!method initialize(token:, assignee:, collection_stopped:, created:, entity:, pending_transactions:, priority:, queue_token:, resolution:, resolution_notes:, resolved:, rule_token:, sla_deadline:, status:, tags:, title:, updated:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::TransactionMonitoring::MonitoringCase} for more details.
        #
        #   A transaction monitoring case
        #
        #   @param token [String] Globally unique identifier for the case
        #
        #   @param assignee [String, nil] Identifier of the user the case is currently assigned to
        #
        #   @param collection_stopped [Time, nil] Date and time at which transaction collection stopped for the case
        #
        #   @param created [Time] Date and time at which the case was created
        #
        #   @param entity [Lithic::Models::TransactionMonitoring::CaseEntity, nil] The entity a case is associated with
        #
        #   @param pending_transactions [Boolean] Whether the case still has transaction scopes pending resolution
        #
        #   @param priority [Symbol, Lithic::Models::TransactionMonitoring::CasePriority] Priority level of a case, controlling queue ordering and SLA urgency
        #
        #   @param queue_token [String] Token of the queue the case belongs to
        #
        #   @param resolution [Symbol, Lithic::Models::TransactionMonitoring::ResolutionOutcome, nil] Outcome recorded when a case is resolved:
        #
        #   @param resolution_notes [String, nil] Free-form notes describing the resolution
        #
        #   @param resolved [Time, nil] Date and time at which the case was resolved
        #
        #   @param rule_token [String, nil] Token of the transaction monitoring rule that triggered the case
        #
        #   @param sla_deadline [Time, nil] Deadline by which the case is expected to be resolved
        #
        #   @param status [Symbol, Lithic::Models::TransactionMonitoring::CaseStatus] Status of a case as it progresses through the review workflow:
        #
        #   @param tags [Hash{Symbol=>String}] Arbitrary key-value metadata associated with the case
        #
        #   @param title [String, nil] Short, human-readable summary of the case
        #
        #   @param updated [Time] Date and time at which the case was last updated
      end
    end
  end
end
