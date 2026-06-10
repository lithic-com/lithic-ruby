# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      class CaseListParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::TransactionMonitoring::CaseListParams,
              Lithic::Internal::AnyHash
            )
          end

        # Only return cases that include transactions on the provided account.
        sig { returns(T.nilable(String)) }
        attr_reader :account_token

        sig { params(account_token: String).void }
        attr_writer :account_token

        # Only return cases assigned to the provided value. Pass an empty string to return
        # only unassigned cases.
        sig { returns(T.nilable(String)) }
        attr_reader :assignee

        sig { params(assignee: String).void }
        attr_writer :assignee

        # Date string in RFC 3339 format. Only entries created after the specified time
        # will be included. UTC time zone.
        sig { returns(T.nilable(Time)) }
        attr_reader :begin_

        sig { params(begin_: Time).void }
        attr_writer :begin_

        # Only return cases that include transactions on the provided card.
        sig { returns(T.nilable(String)) }
        attr_reader :card_token

        sig { params(card_token: String).void }
        attr_writer :card_token

        # Date string in RFC 3339 format. Only entries created before the specified time
        # will be included. UTC time zone.
        sig { returns(T.nilable(Time)) }
        attr_reader :end_

        sig { params(end_: Time).void }
        attr_writer :end_

        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        sig { returns(T.nilable(String)) }
        attr_reader :ending_before

        sig { params(ending_before: String).void }
        attr_writer :ending_before

        # Only return cases associated with the provided entity.
        sig { returns(T.nilable(String)) }
        attr_reader :entity_token

        sig { params(entity_token: String).void }
        attr_writer :entity_token

        # Page size (for pagination).
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        # Only return cases belonging to the provided queue.
        sig { returns(T.nilable(String)) }
        attr_reader :queue_token

        sig { params(queue_token: String).void }
        attr_writer :queue_token

        # Only return cases triggered by the provided transaction monitoring rule.
        sig { returns(T.nilable(String)) }
        attr_reader :rule_token

        sig { params(rule_token: String).void }
        attr_writer :rule_token

        # Sort order for the returned cases.
        sig do
          returns(
            T.nilable(Lithic::TransactionMonitoring::CaseSortOrder::OrSymbol)
          )
        end
        attr_reader :sort_by

        sig do
          params(
            sort_by: Lithic::TransactionMonitoring::CaseSortOrder::OrSymbol
          ).void
        end
        attr_writer :sort_by

        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        sig { returns(T.nilable(String)) }
        attr_reader :starting_after

        sig { params(starting_after: String).void }
        attr_writer :starting_after

        # Only return cases with the provided status.
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

        # Only return cases that include the provided transaction.
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_token

        sig { params(transaction_token: String).void }
        attr_writer :transaction_token

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
          ).returns(T.attached_class)
        end
        def self.new(
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

        sig do
          override.returns(
            {
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
