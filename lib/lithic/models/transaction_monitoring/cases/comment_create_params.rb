# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      module Cases
        # @see Lithic::Resources::TransactionMonitoring::Cases::Comments#create
        class CommentCreateParams < Lithic::Internal::Type::BaseModel
          extend Lithic::Internal::Type::RequestParameters::Converter
          include Lithic::Internal::Type::RequestParameters

          # @!attribute case_token
          #
          #   @return [String]
          required :case_token, String

          # @!attribute comment
          #   Text of the comment
          #
          #   @return [String]
          required :comment, String

          # @!attribute actor_token
          #   Optional client-provided identifier for the actor performing this action,
          #   recorded on the resulting activity entry. This value is supplied by the client
          #   (for example, your own internal user ID) and is not authenticated by Lithic
          #
          #   @return [String, nil]
          optional :actor_token, String

          # @!method initialize(case_token:, comment:, actor_token: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::TransactionMonitoring::Cases::CommentCreateParams} for more
          #   details.
          #
          #   @param case_token [String]
          #
          #   @param comment [String] Text of the comment
          #
          #   @param actor_token [String] Optional client-provided identifier for the actor performing this action,
          #
          #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
