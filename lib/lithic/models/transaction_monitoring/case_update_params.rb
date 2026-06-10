# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      # @see Lithic::Resources::TransactionMonitoring::Cases#update
      class CaseUpdateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute case_token
        #
        #   @return [String]
        required :case_token, String

        # @!attribute actor_token
        #   Optional client-provided identifier for the actor performing this action,
        #   recorded on the resulting activity entry. This value is supplied by the client
        #   (for example, your own internal user ID) and is not authenticated by Lithic
        #
        #   @return [String, nil]
        optional :actor_token, String

        # @!attribute assignee
        #   New assignee for the case, or `null` to unassign
        #
        #   @return [String, nil]
        optional :assignee, String, nil?: true

        # @!attribute priority
        #   Priority level of a case, controlling queue ordering and SLA urgency
        #
        #   @return [Symbol, Lithic::Models::TransactionMonitoring::CasePriority, nil]
        optional :priority, enum: -> { Lithic::TransactionMonitoring::CasePriority }

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
        optional :resolution, enum: -> { Lithic::TransactionMonitoring::ResolutionOutcome }

        # @!attribute resolution_notes
        #   Notes describing the resolution
        #
        #   @return [String, nil]
        optional :resolution_notes, String

        # @!attribute sla_deadline
        #   New SLA deadline for the case, or `null` to clear it
        #
        #   @return [Time, nil]
        optional :sla_deadline, Time, nil?: true

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
        #   @return [Symbol, Lithic::Models::TransactionMonitoring::CaseStatus, nil]
        optional :status, enum: -> { Lithic::TransactionMonitoring::CaseStatus }

        # @!attribute tags
        #   Arbitrary key-value metadata to set on the case
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :tags, Lithic::Internal::Type::HashOf[String]

        # @!attribute title
        #   New title for the case, or `null` to clear it
        #
        #   @return [String, nil]
        optional :title, String, nil?: true

        # @!method initialize(case_token:, actor_token: nil, assignee: nil, priority: nil, resolution: nil, resolution_notes: nil, sla_deadline: nil, status: nil, tags: nil, title: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::TransactionMonitoring::CaseUpdateParams} for more details.
        #
        #   @param case_token [String]
        #
        #   @param actor_token [String] Optional client-provided identifier for the actor performing this action,
        #
        #   @param assignee [String, nil] New assignee for the case, or `null` to unassign
        #
        #   @param priority [Symbol, Lithic::Models::TransactionMonitoring::CasePriority] Priority level of a case, controlling queue ordering and SLA urgency
        #
        #   @param resolution [Symbol, Lithic::Models::TransactionMonitoring::ResolutionOutcome] Outcome recorded when a case is resolved:
        #
        #   @param resolution_notes [String] Notes describing the resolution
        #
        #   @param sla_deadline [Time, nil] New SLA deadline for the case, or `null` to clear it
        #
        #   @param status [Symbol, Lithic::Models::TransactionMonitoring::CaseStatus] Status of a case as it progresses through the review workflow:
        #
        #   @param tags [Hash{Symbol=>String}] Arbitrary key-value metadata to set on the case
        #
        #   @param title [String, nil] New title for the case, or `null` to clear it
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
