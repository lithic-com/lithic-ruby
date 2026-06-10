# typed: strong

module Lithic
  module Resources
    class TransactionMonitoring
      class Cases
        sig do
          returns(Lithic::Resources::TransactionMonitoring::Cases::Comments)
        end
        attr_reader :comments

        sig { returns(Lithic::Resources::TransactionMonitoring::Cases::Files) }
        attr_reader :files

        # Retrieves a single transaction monitoring case.
        sig do
          params(
            case_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::TransactionMonitoring::MonitoringCase)
        end
        def retrieve(
          # Globally unique identifier for the case.
          case_token,
          request_options: {}
        )
        end

        # Updates a transaction monitoring case.
        sig do
          params(
            case_token: String,
            actor_token: String,
            assignee: T.nilable(String),
            priority: Lithic::TransactionMonitoring::CasePriority::OrSymbol,
            resolution:
              Lithic::TransactionMonitoring::ResolutionOutcome::OrSymbol,
            resolution_notes: String,
            sla_deadline: T.nilable(Time),
            status: Lithic::TransactionMonitoring::CaseStatus::OrSymbol,
            tags: T::Hash[Symbol, String],
            title: T.nilable(String),
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::TransactionMonitoring::MonitoringCase)
        end
        def update(
          # Globally unique identifier for the case.
          case_token,
          # Optional client-provided identifier for the actor performing this action,
          # recorded on the resulting activity entry. This value is supplied by the client
          # (for example, your own internal user ID) and is not authenticated by Lithic
          actor_token: nil,
          # New assignee for the case, or `null` to unassign
          assignee: nil,
          # Priority level of a case, controlling queue ordering and SLA urgency
          priority: nil,
          # Outcome recorded when a case is resolved:
          #
          # - `CONFIRMED_FRAUD` - The reviewed activity was confirmed to be fraudulent
          # - `SUSPICIOUS_ACTIVITY` - The activity is suspicious but not confirmed fraud
          # - `FALSE_POSITIVE` - The activity was legitimate and the alert was a false
          #   positive
          # - `NO_ACTION_REQUIRED` - No further action is required
          # - `ESCALATED_EXTERNAL` - The case was escalated to an external party
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

        # Lists transaction monitoring cases, optionally filtered.
        sig do
          params(
            account_token: String,
            assignee: String,
            begin_: Time,
            card_token: String,
            end_: Time,
            ending_before: String,
            entity_token: String,
            page_size: Integer,
            queue_token: String,
            rule_token: String,
            sort_by: Lithic::TransactionMonitoring::CaseSortOrder::OrSymbol,
            starting_after: String,
            status: Lithic::TransactionMonitoring::CaseStatus::OrSymbol,
            transaction_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(
            Lithic::Internal::CursorPage[
              Lithic::TransactionMonitoring::MonitoringCase
            ]
          )
        end
        def list(
          # Only return cases that include transactions on the provided account.
          account_token: nil,
          # Only return cases assigned to the provided value. Pass an empty string to return
          # only unassigned cases.
          assignee: nil,
          # Date string in RFC 3339 format. Only entries created after the specified time
          # will be included. UTC time zone.
          begin_: nil,
          # Only return cases that include transactions on the provided card.
          card_token: nil,
          # Date string in RFC 3339 format. Only entries created before the specified time
          # will be included. UTC time zone.
          end_: nil,
          # A cursor representing an item's token before which a page of results should end.
          # Used to retrieve the previous page of results before this item.
          ending_before: nil,
          # Only return cases associated with the provided entity.
          entity_token: nil,
          # Page size (for pagination).
          page_size: nil,
          # Only return cases belonging to the provided queue.
          queue_token: nil,
          # Only return cases triggered by the provided transaction monitoring rule.
          rule_token: nil,
          # Sort order for the returned cases.
          sort_by: nil,
          # A cursor representing an item's token after which a page of results should
          # begin. Used to retrieve the next page of results after this item.
          starting_after: nil,
          # Only return cases with the provided status.
          status: nil,
          # Only return cases that include the provided transaction.
          transaction_token: nil,
          request_options: {}
        )
        end

        # Lists the activity feed for a case.
        sig do
          params(
            case_token: String,
            ending_before: String,
            page_size: Integer,
            starting_after: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(
            Lithic::Internal::CursorPage[
              Lithic::TransactionMonitoring::CaseActivityEntry
            ]
          )
        end
        def list_activity(
          # Globally unique identifier for the case.
          case_token,
          # A cursor representing an item's token before which a page of results should end.
          # Used to retrieve the previous page of results before this item.
          ending_before: nil,
          # Page size (for pagination).
          page_size: nil,
          # A cursor representing an item's token after which a page of results should
          # begin. Used to retrieve the next page of results after this item.
          starting_after: nil,
          request_options: {}
        )
        end

        # Lists the transactions associated with a case.
        sig do
          params(
            case_token: String,
            ending_before: String,
            page_size: Integer,
            starting_after: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(
            Lithic::Internal::CursorPage[
              Lithic::TransactionMonitoring::CaseTransaction
            ]
          )
        end
        def list_transactions(
          # Globally unique identifier for the case.
          case_token,
          # A cursor representing an item's token before which a page of results should end.
          # Used to retrieve the previous page of results before this item.
          ending_before: nil,
          # Page size (for pagination).
          page_size: nil,
          # A cursor representing an item's token after which a page of results should
          # begin. Used to retrieve the next page of results after this item.
          starting_after: nil,
          request_options: {}
        )
        end

        # Lists the cards involved in a case, with per-card transaction counts.
        sig do
          params(
            case_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T::Array[Lithic::TransactionMonitoring::CaseCard])
        end
        def retrieve_cards(
          # Globally unique identifier for the case.
          case_token,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Lithic::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
