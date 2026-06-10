# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      # @see Lithic::Resources::TransactionMonitoring::Queues#create
      class Queue < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Globally unique identifier for the queue
        #
        #   @return [String]
        required :token, String

        # @!attribute case_counts
        #   Number of cases in the queue, broken down by status. A status is omitted when
        #   the queue has no cases in that status
        #
        #   @return [Lithic::Models::TransactionMonitoring::Queue::CaseCounts]
        required :case_counts, -> { Lithic::TransactionMonitoring::Queue::CaseCounts }

        # @!attribute created
        #   Date and time at which the queue was created
        #
        #   @return [Time]
        required :created, Time

        # @!attribute description
        #   Optional description of the queue
        #
        #   @return [String, nil]
        required :description, String, nil?: true

        # @!attribute name
        #   Human-readable name of the queue
        #
        #   @return [String]
        required :name, String

        # @!attribute updated
        #   Date and time at which the queue was last updated
        #
        #   @return [Time]
        required :updated, Time

        # @!method initialize(token:, case_counts:, created:, description:, name:, updated:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::TransactionMonitoring::Queue} for more details.
        #
        #   A queue that groups transaction monitoring cases for review
        #
        #   @param token [String] Globally unique identifier for the queue
        #
        #   @param case_counts [Lithic::Models::TransactionMonitoring::Queue::CaseCounts] Number of cases in the queue, broken down by status. A status is omitted
        #
        #   @param created [Time] Date and time at which the queue was created
        #
        #   @param description [String, nil] Optional description of the queue
        #
        #   @param name [String] Human-readable name of the queue
        #
        #   @param updated [Time] Date and time at which the queue was last updated

        # @see Lithic::Models::TransactionMonitoring::Queue#case_counts
        class CaseCounts < Lithic::Internal::Type::BaseModel
          # @!attribute assigned
          #   Number of cases in the queue with status `ASSIGNED`
          #
          #   @return [Integer, nil]
          optional :assigned, Integer, api_name: :ASSIGNED

          # @!attribute closed
          #   Number of cases in the queue with status `CLOSED`
          #
          #   @return [Integer, nil]
          optional :closed, Integer, api_name: :CLOSED

          # @!attribute escalated
          #   Number of cases in the queue with status `ESCALATED`
          #
          #   @return [Integer, nil]
          optional :escalated, Integer, api_name: :ESCALATED

          # @!attribute in_review
          #   Number of cases in the queue with status `IN_REVIEW`
          #
          #   @return [Integer, nil]
          optional :in_review, Integer, api_name: :IN_REVIEW

          # @!attribute open_
          #   Number of cases in the queue with status `OPEN`
          #
          #   @return [Integer, nil]
          optional :open_, Integer, api_name: :OPEN

          # @!attribute resolved
          #   Number of cases in the queue with status `RESOLVED`
          #
          #   @return [Integer, nil]
          optional :resolved, Integer, api_name: :RESOLVED

          # @!method initialize(assigned: nil, closed: nil, escalated: nil, in_review: nil, open_: nil, resolved: nil)
          #   Number of cases in the queue, broken down by status. A status is omitted when
          #   the queue has no cases in that status
          #
          #   @param assigned [Integer] Number of cases in the queue with status `ASSIGNED`
          #
          #   @param closed [Integer] Number of cases in the queue with status `CLOSED`
          #
          #   @param escalated [Integer] Number of cases in the queue with status `ESCALATED`
          #
          #   @param in_review [Integer] Number of cases in the queue with status `IN_REVIEW`
          #
          #   @param open_ [Integer] Number of cases in the queue with status `OPEN`
          #
          #   @param resolved [Integer] Number of cases in the queue with status `RESOLVED`
        end
      end
    end
  end
end
