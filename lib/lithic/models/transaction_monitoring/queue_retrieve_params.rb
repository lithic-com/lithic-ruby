# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      # @see Lithic::Resources::TransactionMonitoring::Queues#retrieve
      class QueueRetrieveParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute queue_token
        #
        #   @return [String]
        required :queue_token, String

        # @!method initialize(queue_token:, request_options: {})
        #   @param queue_token [String]
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
