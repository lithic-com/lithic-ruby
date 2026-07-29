# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      class CaseUpdateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::TransactionMonitoring::CaseUpdateParams,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :case_token

        # Optional client-provided identifier for the actor performing this action,
        # recorded on the resulting activity entry. This value is supplied by the client
        # (for example, your own internal user ID) and is not authenticated by Lithic
        sig { returns(T.nilable(String)) }
        attr_reader :actor_token

        sig { params(actor_token: String).void }
        attr_writer :actor_token

        # New assignee for the case, or `null` to unassign
        sig { returns(T.nilable(String)) }
        attr_accessor :assignee

        # Priority level of a case, controlling queue ordering and SLA urgency
        sig do
          returns(
            T.nilable(Lithic::TransactionMonitoring::CasePriority::OrSymbol)
          )
        end
        attr_reader :priority

        sig do
          params(
            priority: Lithic::TransactionMonitoring::CasePriority::OrSymbol
          ).void
        end
        attr_writer :priority

        # Resolution to record on the case. Must be one of the `allowed_resolutions`
        # configured on the case's queue, otherwise the request is rejected with a `400`
        sig { returns(T.nilable(String)) }
        attr_reader :resolution

        sig { params(resolution: String).void }
        attr_writer :resolution

        # Notes describing the resolution
        sig { returns(T.nilable(String)) }
        attr_reader :resolution_notes

        sig { params(resolution_notes: String).void }
        attr_writer :resolution_notes

        # New SLA deadline for the case, or `null` to clear it
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
        sig do
          returns(
            T.nilable(Lithic::TransactionMonitoring::CaseStatus::OrSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: Lithic::TransactionMonitoring::CaseStatus::OrSymbol
          ).void
        end
        attr_writer :status

        # Arbitrary key-value metadata to set on the case
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :tags

        sig { params(tags: T::Hash[Symbol, String]).void }
        attr_writer :tags

        # New title for the case, or `null` to clear it
        sig { returns(T.nilable(String)) }
        attr_accessor :title

        sig do
          params(
            case_token: String,
            actor_token: String,
            assignee: T.nilable(String),
            priority: Lithic::TransactionMonitoring::CasePriority::OrSymbol,
            resolution: String,
            resolution_notes: String,
            sla_deadline: T.nilable(Time),
            status: Lithic::TransactionMonitoring::CaseStatus::OrSymbol,
            tags: T::Hash[Symbol, String],
            title: T.nilable(String),
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          case_token:,
          # Optional client-provided identifier for the actor performing this action,
          # recorded on the resulting activity entry. This value is supplied by the client
          # (for example, your own internal user ID) and is not authenticated by Lithic
          actor_token: nil,
          # New assignee for the case, or `null` to unassign
          assignee: nil,
          # Priority level of a case, controlling queue ordering and SLA urgency
          priority: nil,
          # Resolution to record on the case. Must be one of the `allowed_resolutions`
          # configured on the case's queue, otherwise the request is rejected with a `400`
          resolution: nil,
          # Notes describing the resolution
          resolution_notes: nil,
          # New SLA deadline for the case, or `null` to clear it
          sla_deadline: nil,
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
          status: nil,
          # Arbitrary key-value metadata to set on the case
          tags: nil,
          # New title for the case, or `null` to clear it
          title: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              case_token: String,
              actor_token: String,
              assignee: T.nilable(String),
              priority: Lithic::TransactionMonitoring::CasePriority::OrSymbol,
              resolution: String,
              resolution_notes: String,
              sla_deadline: T.nilable(Time),
              status: Lithic::TransactionMonitoring::CaseStatus::OrSymbol,
              tags: T::Hash[Symbol, String],
              title: T.nilable(String),
              request_options: Lithic::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
