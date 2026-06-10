# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      # @see Lithic::Resources::TransactionMonitoring::Cases#list_activity
      class CaseActivityEntry < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Globally unique identifier for the activity entry
        #
        #   @return [String]
        required :token, String

        # @!attribute actor_token
        #   Identifier of the actor that produced the activity entry
        #
        #   @return [String, nil]
        required :actor_token, String, nil?: true

        # @!attribute created
        #   Date and time at which the activity entry was created
        #
        #   @return [Time]
        required :created, Time

        # @!attribute entry_type
        #   The case field that changed, or the action that was taken, in an activity entry:
        #
        #   - `STATUS` - The case status changed
        #   - `TITLE` - The case title changed
        #   - `ASSIGNED_TO` - The case assignee changed
        #   - `RESOLUTION_OUTCOME` - The resolution outcome was set or changed
        #   - `RESOLUTION_NOTES` - The resolution notes were set or changed
        #   - `TAGS` - The case tags changed
        #   - `PRIORITY` - The case priority changed
        #   - `COMMENT` - A comment was added or edited
        #   - `FILE` - A file was attached to the case
        #
        #   @return [Symbol, Lithic::Models::TransactionMonitoring::CaseActivityType]
        required :entry_type, enum: -> { Lithic::TransactionMonitoring::CaseActivityType }

        # @!attribute new_value
        #   New value of the changed field, when applicable
        #
        #   @return [String, nil]
        required :new_value, String, nil?: true

        # @!attribute previous_value
        #   Previous value of the changed field, when applicable
        #
        #   @return [String, nil]
        required :previous_value, String, nil?: true

        # @!method initialize(token:, actor_token:, created:, entry_type:, new_value:, previous_value:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::TransactionMonitoring::CaseActivityEntry} for more details.
        #
        #   A single entry in a case's activity feed
        #
        #   @param token [String] Globally unique identifier for the activity entry
        #
        #   @param actor_token [String, nil] Identifier of the actor that produced the activity entry
        #
        #   @param created [Time] Date and time at which the activity entry was created
        #
        #   @param entry_type [Symbol, Lithic::Models::TransactionMonitoring::CaseActivityType] The case field that changed, or the action that was taken, in an activity entry:
        #
        #   @param new_value [String, nil] New value of the changed field, when applicable
        #
        #   @param previous_value [String, nil] Previous value of the changed field, when applicable
      end
    end
  end
end
