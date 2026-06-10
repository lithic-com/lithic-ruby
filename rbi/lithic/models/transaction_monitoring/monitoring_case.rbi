# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      class MonitoringCase < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::TransactionMonitoring::MonitoringCase,
              Lithic::Internal::AnyHash
            )
          end

        # Globally unique identifier for the case
        sig { returns(String) }
        attr_accessor :token

        # Identifier of the user the case is currently assigned to
        sig { returns(T.nilable(String)) }
        attr_accessor :assignee

        # Date and time at which transaction collection stopped for the case
        sig { returns(T.nilable(Time)) }
        attr_accessor :collection_stopped

        # Date and time at which the case was created
        sig { returns(Time) }
        attr_accessor :created

        # The entity a case is associated with
        sig { returns(T.nilable(Lithic::TransactionMonitoring::CaseEntity)) }
        attr_reader :entity

        sig do
          params(
            entity: T.nilable(Lithic::TransactionMonitoring::CaseEntity::OrHash)
          ).void
        end
        attr_writer :entity

        # Whether the case still has transaction scopes pending resolution
        sig { returns(T::Boolean) }
        attr_accessor :pending_transactions

        # Priority level of a case, controlling queue ordering and SLA urgency
        sig do
          returns(Lithic::TransactionMonitoring::CasePriority::TaggedSymbol)
        end
        attr_accessor :priority

        # Token of the queue the case belongs to
        sig { returns(String) }
        attr_accessor :queue_token

        # Outcome recorded when a case is resolved:
        #
        # - `CONFIRMED_FRAUD` - The reviewed activity was confirmed to be fraudulent
        # - `SUSPICIOUS_ACTIVITY` - The activity is suspicious but not confirmed fraud
        # - `FALSE_POSITIVE` - The activity was legitimate and the alert was a false
        #   positive
        # - `NO_ACTION_REQUIRED` - No further action is required
        # - `ESCALATED_EXTERNAL` - The case was escalated to an external party
        sig do
          returns(
            T.nilable(
              Lithic::TransactionMonitoring::ResolutionOutcome::TaggedSymbol
            )
          )
        end
        attr_accessor :resolution

        # Free-form notes describing the resolution
        sig { returns(T.nilable(String)) }
        attr_accessor :resolution_notes

        # Date and time at which the case was resolved
        sig { returns(T.nilable(Time)) }
        attr_accessor :resolved

        # Token of the transaction monitoring rule that triggered the case
        sig { returns(T.nilable(String)) }
        attr_accessor :rule_token

        # Deadline by which the case is expected to be resolved
        sig { returns(T.nilable(Time)) }
        attr_accessor :sla_deadline

        # Status of a case as it progresses through the review workflow:
        #
        # - `OPEN` - The case has been created and is still collecting matching
        #   transactions
        # - `ASSIGNED` - An analyst has been assigned and transaction collection has
        #   stopped
        # - `IN_REVIEW` - The case is actively being investigated
        # - `ESCALATED` - The case has been reviewed and requires additional oversight
        # - `RESOLVED` - A determination has been made and a resolution recorded
        # - `CLOSED` - The case is finalized
        sig { returns(Lithic::TransactionMonitoring::CaseStatus::TaggedSymbol) }
        attr_accessor :status

        # Arbitrary key-value metadata associated with the case
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :tags

        # Short, human-readable summary of the case
        sig { returns(T.nilable(String)) }
        attr_accessor :title

        # Date and time at which the case was last updated
        sig { returns(Time) }
        attr_accessor :updated

        # A transaction monitoring case
        sig do
          params(
            token: String,
            assignee: T.nilable(String),
            collection_stopped: T.nilable(Time),
            created: Time,
            entity:
              T.nilable(Lithic::TransactionMonitoring::CaseEntity::OrHash),
            pending_transactions: T::Boolean,
            priority: Lithic::TransactionMonitoring::CasePriority::OrSymbol,
            queue_token: String,
            resolution:
              T.nilable(
                Lithic::TransactionMonitoring::ResolutionOutcome::OrSymbol
              ),
            resolution_notes: T.nilable(String),
            resolved: T.nilable(Time),
            rule_token: T.nilable(String),
            sla_deadline: T.nilable(Time),
            status: Lithic::TransactionMonitoring::CaseStatus::OrSymbol,
            tags: T::Hash[Symbol, String],
            title: T.nilable(String),
            updated: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier for the case
          token:,
          # Identifier of the user the case is currently assigned to
          assignee:,
          # Date and time at which transaction collection stopped for the case
          collection_stopped:,
          # Date and time at which the case was created
          created:,
          # The entity a case is associated with
          entity:,
          # Whether the case still has transaction scopes pending resolution
          pending_transactions:,
          # Priority level of a case, controlling queue ordering and SLA urgency
          priority:,
          # Token of the queue the case belongs to
          queue_token:,
          # Outcome recorded when a case is resolved:
          #
          # - `CONFIRMED_FRAUD` - The reviewed activity was confirmed to be fraudulent
          # - `SUSPICIOUS_ACTIVITY` - The activity is suspicious but not confirmed fraud
          # - `FALSE_POSITIVE` - The activity was legitimate and the alert was a false
          #   positive
          # - `NO_ACTION_REQUIRED` - No further action is required
          # - `ESCALATED_EXTERNAL` - The case was escalated to an external party
          resolution:,
          # Free-form notes describing the resolution
          resolution_notes:,
          # Date and time at which the case was resolved
          resolved:,
          # Token of the transaction monitoring rule that triggered the case
          rule_token:,
          # Deadline by which the case is expected to be resolved
          sla_deadline:,
          # Status of a case as it progresses through the review workflow:
          #
          # - `OPEN` - The case has been created and is still collecting matching
          #   transactions
          # - `ASSIGNED` - An analyst has been assigned and transaction collection has
          #   stopped
          # - `IN_REVIEW` - The case is actively being investigated
          # - `ESCALATED` - The case has been reviewed and requires additional oversight
          # - `RESOLVED` - A determination has been made and a resolution recorded
          # - `CLOSED` - The case is finalized
          status:,
          # Arbitrary key-value metadata associated with the case
          tags:,
          # Short, human-readable summary of the case
          title:,
          # Date and time at which the case was last updated
          updated:
        )
        end

        sig do
          override.returns(
            {
              token: String,
              assignee: T.nilable(String),
              collection_stopped: T.nilable(Time),
              created: Time,
              entity: T.nilable(Lithic::TransactionMonitoring::CaseEntity),
              pending_transactions: T::Boolean,
              priority:
                Lithic::TransactionMonitoring::CasePriority::TaggedSymbol,
              queue_token: String,
              resolution:
                T.nilable(
                  Lithic::TransactionMonitoring::ResolutionOutcome::TaggedSymbol
                ),
              resolution_notes: T.nilable(String),
              resolved: T.nilable(Time),
              rule_token: T.nilable(String),
              sla_deadline: T.nilable(Time),
              status: Lithic::TransactionMonitoring::CaseStatus::TaggedSymbol,
              tags: T::Hash[Symbol, String],
              title: T.nilable(String),
              updated: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
