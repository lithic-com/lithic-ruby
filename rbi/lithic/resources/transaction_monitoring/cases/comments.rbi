# typed: strong

module Lithic
  module Resources
    class TransactionMonitoring
      class Cases
        class Comments
          # Adds a comment to a case.
          sig do
            params(
              case_token: String,
              comment: String,
              actor_token: String,
              request_options: Lithic::RequestOptions::OrHash
            ).returns(Lithic::TransactionMonitoring::CaseActivityEntry)
          end
          def create(
            # Globally unique identifier for the case.
            case_token,
            # Text of the comment
            comment:,
            # Optional client-provided identifier for the actor performing this action,
            # recorded on the resulting activity entry. This value is supplied by the client
            # (for example, your own internal user ID) and is not authenticated by Lithic
            actor_token: nil,
            request_options: {}
          )
          end

          # Edits an existing comment on a case.
          sig do
            params(
              comment_token: String,
              case_token: String,
              comment: String,
              actor_token: String,
              request_options: Lithic::RequestOptions::OrHash
            ).returns(Lithic::TransactionMonitoring::CaseActivityEntry)
          end
          def update(
            # Path param: Globally unique identifier for the comment.
            comment_token,
            # Path param: Globally unique identifier for the case.
            case_token:,
            # Body param: New text of the comment
            comment:,
            # Body param: Optional client-provided identifier for the actor performing this
            # action, recorded on the resulting activity entry. This value is supplied by the
            # client (for example, your own internal user ID) and is not authenticated by
            # Lithic
            actor_token: nil,
            request_options: {}
          )
          end

          # Deletes a comment from a case.
          sig do
            params(
              comment_token: String,
              case_token: String,
              request_options: Lithic::RequestOptions::OrHash
            ).void
          end
          def delete(
            # Globally unique identifier for the comment.
            comment_token,
            # Globally unique identifier for the case.
            case_token:,
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
end
