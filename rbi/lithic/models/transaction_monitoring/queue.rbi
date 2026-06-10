# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      class Queue < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::TransactionMonitoring::Queue,
              Lithic::Internal::AnyHash
            )
          end

        # Globally unique identifier for the queue
        sig { returns(String) }
        attr_accessor :token

        # Number of cases in the queue, broken down by status. A status is omitted when
        # the queue has no cases in that status
        sig { returns(Lithic::TransactionMonitoring::Queue::CaseCounts) }
        attr_reader :case_counts

        sig do
          params(
            case_counts:
              Lithic::TransactionMonitoring::Queue::CaseCounts::OrHash
          ).void
        end
        attr_writer :case_counts

        # Date and time at which the queue was created
        sig { returns(Time) }
        attr_accessor :created

        # Optional description of the queue
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Human-readable name of the queue
        sig { returns(String) }
        attr_accessor :name

        # Date and time at which the queue was last updated
        sig { returns(Time) }
        attr_accessor :updated

        # A queue that groups transaction monitoring cases for review
        sig do
          params(
            token: String,
            case_counts:
              Lithic::TransactionMonitoring::Queue::CaseCounts::OrHash,
            created: Time,
            description: T.nilable(String),
            name: String,
            updated: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier for the queue
          token:,
          # Number of cases in the queue, broken down by status. A status is omitted when
          # the queue has no cases in that status
          case_counts:,
          # Date and time at which the queue was created
          created:,
          # Optional description of the queue
          description:,
          # Human-readable name of the queue
          name:,
          # Date and time at which the queue was last updated
          updated:
        )
        end

        sig do
          override.returns(
            {
              token: String,
              case_counts: Lithic::TransactionMonitoring::Queue::CaseCounts,
              created: Time,
              description: T.nilable(String),
              name: String,
              updated: Time
            }
          )
        end
        def to_hash
        end

        class CaseCounts < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::TransactionMonitoring::Queue::CaseCounts,
                Lithic::Internal::AnyHash
              )
            end

          # Number of cases in the queue with status `ASSIGNED`
          sig { returns(T.nilable(Integer)) }
          attr_reader :assigned

          sig { params(assigned: Integer).void }
          attr_writer :assigned

          # Number of cases in the queue with status `CLOSED`
          sig { returns(T.nilable(Integer)) }
          attr_reader :closed

          sig { params(closed: Integer).void }
          attr_writer :closed

          # Number of cases in the queue with status `ESCALATED`
          sig { returns(T.nilable(Integer)) }
          attr_reader :escalated

          sig { params(escalated: Integer).void }
          attr_writer :escalated

          # Number of cases in the queue with status `IN_REVIEW`
          sig { returns(T.nilable(Integer)) }
          attr_reader :in_review

          sig { params(in_review: Integer).void }
          attr_writer :in_review

          # Number of cases in the queue with status `OPEN`
          sig { returns(T.nilable(Integer)) }
          attr_reader :open_

          sig { params(open_: Integer).void }
          attr_writer :open_

          # Number of cases in the queue with status `RESOLVED`
          sig { returns(T.nilable(Integer)) }
          attr_reader :resolved

          sig { params(resolved: Integer).void }
          attr_writer :resolved

          # Number of cases in the queue, broken down by status. A status is omitted when
          # the queue has no cases in that status
          sig do
            params(
              assigned: Integer,
              closed: Integer,
              escalated: Integer,
              in_review: Integer,
              open_: Integer,
              resolved: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Number of cases in the queue with status `ASSIGNED`
            assigned: nil,
            # Number of cases in the queue with status `CLOSED`
            closed: nil,
            # Number of cases in the queue with status `ESCALATED`
            escalated: nil,
            # Number of cases in the queue with status `IN_REVIEW`
            in_review: nil,
            # Number of cases in the queue with status `OPEN`
            open_: nil,
            # Number of cases in the queue with status `RESOLVED`
            resolved: nil
          )
          end

          sig do
            override.returns(
              {
                assigned: Integer,
                closed: Integer,
                escalated: Integer,
                in_review: Integer,
                open_: Integer,
                resolved: Integer
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
