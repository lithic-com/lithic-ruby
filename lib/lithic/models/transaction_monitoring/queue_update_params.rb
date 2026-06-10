# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      # @see Lithic::Resources::TransactionMonitoring::Queues#update
      class QueueUpdateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute queue_token
        #
        #   @return [String]
        required :queue_token, String

        # @!attribute description
        #   New description for the queue, or `null` to clear it
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute name
        #   New name for the queue
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(queue_token:, description: nil, name: nil, request_options: {})
        #   @param queue_token [String]
        #
        #   @param description [String, nil] New description for the queue, or `null` to clear it
        #
        #   @param name [String] New name for the queue
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
