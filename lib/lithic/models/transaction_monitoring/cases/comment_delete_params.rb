# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      module Cases
        # @see Lithic::Resources::TransactionMonitoring::Cases::Comments#delete
        class CommentDeleteParams < Lithic::Internal::Type::BaseModel
          extend Lithic::Internal::Type::RequestParameters::Converter
          include Lithic::Internal::Type::RequestParameters

          # @!attribute case_token
          #
          #   @return [String]
          required :case_token, String

          # @!attribute comment_token
          #
          #   @return [String]
          required :comment_token, String

          # @!method initialize(case_token:, comment_token:, request_options: {})
          #   @param case_token [String]
          #   @param comment_token [String]
          #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
