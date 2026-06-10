# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      class CaseActivityEntry < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::TransactionMonitoring::CaseActivityEntry,
              Lithic::Internal::AnyHash
            )
          end

        # Globally unique identifier for the activity entry
        sig { returns(String) }
        attr_accessor :token

        # Identifier of the actor that produced the activity entry
        sig { returns(T.nilable(String)) }
        attr_accessor :actor_token

        # Date and time at which the activity entry was created
        sig { returns(Time) }
        attr_accessor :created

        # The case field that changed, or the action that was taken, in an activity entry:
        #
        # - `STATUS` - The case status changed
        # - `TITLE` - The case title changed
        # - `ASSIGNED_TO` - The case assignee changed
        # - `RESOLUTION_OUTCOME` - The resolution outcome was set or changed
        # - `RESOLUTION_NOTES` - The resolution notes were set or changed
        # - `TAGS` - The case tags changed
        # - `PRIORITY` - The case priority changed
        # - `COMMENT` - A comment was added or edited
        # - `FILE` - A file was attached to the case
        sig do
          returns(Lithic::TransactionMonitoring::CaseActivityType::TaggedSymbol)
        end
        attr_accessor :entry_type

        # New value of the changed field, when applicable
        sig { returns(T.nilable(String)) }
        attr_accessor :new_value

        # Previous value of the changed field, when applicable
        sig { returns(T.nilable(String)) }
        attr_accessor :previous_value

        # A single entry in a case's activity feed
        sig do
          params(
            token: String,
            actor_token: T.nilable(String),
            created: Time,
            entry_type:
              Lithic::TransactionMonitoring::CaseActivityType::OrSymbol,
            new_value: T.nilable(String),
            previous_value: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier for the activity entry
          token:,
          # Identifier of the actor that produced the activity entry
          actor_token:,
          # Date and time at which the activity entry was created
          created:,
          # The case field that changed, or the action that was taken, in an activity entry:
          #
          # - `STATUS` - The case status changed
          # - `TITLE` - The case title changed
          # - `ASSIGNED_TO` - The case assignee changed
          # - `RESOLUTION_OUTCOME` - The resolution outcome was set or changed
          # - `RESOLUTION_NOTES` - The resolution notes were set or changed
          # - `TAGS` - The case tags changed
          # - `PRIORITY` - The case priority changed
          # - `COMMENT` - A comment was added or edited
          # - `FILE` - A file was attached to the case
          entry_type:,
          # New value of the changed field, when applicable
          new_value:,
          # Previous value of the changed field, when applicable
          previous_value:
        )
        end

        sig do
          override.returns(
            {
              token: String,
              actor_token: T.nilable(String),
              created: Time,
              entry_type:
                Lithic::TransactionMonitoring::CaseActivityType::TaggedSymbol,
              new_value: T.nilable(String),
              previous_value: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
