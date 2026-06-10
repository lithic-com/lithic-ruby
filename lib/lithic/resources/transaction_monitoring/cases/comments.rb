# frozen_string_literal: true

module Lithic
  module Resources
    class TransactionMonitoring
      class Cases
        class Comments
          # Some parameter documentations has been truncated, see
          # {Lithic::Models::TransactionMonitoring::Cases::CommentCreateParams} for more
          # details.
          #
          # Adds a comment to a case.
          #
          # @overload create(case_token, comment:, actor_token: nil, request_options: {})
          #
          # @param case_token [String] Globally unique identifier for the case.
          #
          # @param comment [String] Text of the comment
          #
          # @param actor_token [String] Optional client-provided identifier for the actor performing this action,
          #
          # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Lithic::Models::TransactionMonitoring::CaseActivityEntry]
          #
          # @see Lithic::Models::TransactionMonitoring::Cases::CommentCreateParams
          def create(case_token, params)
            parsed, options = Lithic::TransactionMonitoring::Cases::CommentCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["v1/transaction_monitoring/cases/%1$s/comments", case_token],
              body: parsed,
              model: Lithic::TransactionMonitoring::CaseActivityEntry,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Lithic::Models::TransactionMonitoring::Cases::CommentUpdateParams} for more
          # details.
          #
          # Edits an existing comment on a case.
          #
          # @overload update(comment_token, case_token:, comment:, actor_token: nil, request_options: {})
          #
          # @param comment_token [String] Path param: Globally unique identifier for the comment.
          #
          # @param case_token [String] Path param: Globally unique identifier for the case.
          #
          # @param comment [String] Body param: New text of the comment
          #
          # @param actor_token [String] Body param: Optional client-provided identifier for the actor performing this ac
          #
          # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Lithic::Models::TransactionMonitoring::CaseActivityEntry]
          #
          # @see Lithic::Models::TransactionMonitoring::Cases::CommentUpdateParams
          def update(comment_token, params)
            parsed, options = Lithic::TransactionMonitoring::Cases::CommentUpdateParams.dump_request(params)
            case_token =
              parsed.delete(:case_token) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :patch,
              path: ["v1/transaction_monitoring/cases/%1$s/comments/%2$s", case_token, comment_token],
              body: parsed,
              model: Lithic::TransactionMonitoring::CaseActivityEntry,
              options: options
            )
          end

          # Deletes a comment from a case.
          #
          # @overload delete(comment_token, case_token:, request_options: {})
          #
          # @param comment_token [String] Globally unique identifier for the comment.
          #
          # @param case_token [String] Globally unique identifier for the case.
          #
          # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Lithic::Models::TransactionMonitoring::Cases::CommentDeleteParams
          def delete(comment_token, params)
            parsed, options = Lithic::TransactionMonitoring::Cases::CommentDeleteParams.dump_request(params)
            case_token =
              parsed.delete(:case_token) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["v1/transaction_monitoring/cases/%1$s/comments/%2$s", case_token, comment_token],
              model: NilClass,
              options: options
            )
          end

          # @api private
          #
          # @param client [Lithic::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
