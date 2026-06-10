# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      module Cases
        class CommentCreateParams < Lithic::Internal::Type::BaseModel
          extend Lithic::Internal::Type::RequestParameters::Converter
          include Lithic::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Lithic::TransactionMonitoring::Cases::CommentCreateParams,
                Lithic::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :case_token

          # Text of the comment
          sig { returns(String) }
          attr_accessor :comment

          # Optional client-provided identifier for the actor performing this action,
          # recorded on the resulting activity entry. This value is supplied by the client
          # (for example, your own internal user ID) and is not authenticated by Lithic
          sig { returns(T.nilable(String)) }
          attr_reader :actor_token

          sig { params(actor_token: String).void }
          attr_writer :actor_token

          sig do
            params(
              case_token: String,
              comment: String,
              actor_token: String,
              request_options: Lithic::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            case_token:,
            # Text of the comment
            comment:,
            # Optional client-provided identifier for the actor performing this action,
            # recorded on the resulting activity entry. This value is supplied by the client
            # (for example, your own internal user ID) and is not authenticated by Lithic
            actor_token: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                case_token: String,
                comment: String,
                actor_token: String,
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
end
